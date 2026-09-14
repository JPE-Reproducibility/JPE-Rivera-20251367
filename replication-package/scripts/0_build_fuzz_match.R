# 0_build_fuzz_match.R — build the IACP↔Compustat fuzzy name match.
#
# Produces raw_data/rosters/fuzz_match.dta, read by 0a_clean_roster.do.
# Must run before 0a_clean_roster.do.

`%+%` <- paste0

source("scripts/config.R")

library(tidyverse)
library(fedmatch)
library(data.table)
library(stringr)

path_iacp <- path_raw_rosters %+% "PD_atlas_rosters_Master_IACP.csv.gz"
path_wrds_q <- path_raw_wrds %+% "fundamentalsquarterly.csv.gz"

# Import Data
iacp <- read_csv(path_iacp, show_col_types = FALSE)
iacp_short <- iacp %>% select(Name, ID1, City, State, Zip)
iacp_short <- iacp_short %>% distinct()
wrds <- read_csv(path_wrds_q, show_col_types = FALSE)
wrds_short <- wrds %>% select(GVKEY, conm, ein, city, state, addzip, loc)
wrds_short <- wrds_short %>% distinct()

# Stop words
stop_corp <- c("-CL|TECHNOLOGY|TECHNOLOGIES|TECHNOLOG|-OLD|CORP|CORPORATION|CORPORATIONS|INC|INCORPORATED|GROUP|CROUPS|HOLDINGS|HOLDING|ENTERPRISES|ENTERPRISE|LTD|CONSOLIDATED")
stop_corp <- tolower(stop_corp)

# Preclean the data
wrds_short <- mutate(wrds_short, conm = tolower(conm))
wrds_short <- wrds_short %>% mutate(sconm = str_replace_all(conm, stop_corp, ""))
wrds_short <- wrds_short %>% mutate(sconm = str_replace_all(sconm, "[^[:alnum:]]", ""))
wrds_short <- mutate(wrds_short, sconm = tolower(sconm))

iacp_short <- mutate(iacp_short, Name = tolower(Name))
iacp_short <- iacp_short %>% mutate(sname = str_replace_all(Name, stop_corp, ""))
iacp_short <- iacp_short %>% mutate(sname = str_replace_all(sname, "[^[:alnum:]]", ""))
iacp_short <- iacp_short %>% select(Name, sname, City, State, Zip) %>% distinct()
iacp_short <- mutate(iacp_short, ID1 = row_number())
iacp_short <- mutate(iacp_short, sname = tolower(sname))

# Fuzzy Match
fuzzy_result <- merge_plus(data2 = wrds_short,
                           data1 = iacp_short,
                           by.y = "sconm",
                           by.x = "sname", match_type = "fuzzy",
                           fuzzy_settings = build_fuzzy_settings(maxDist = .1),
                           unique_key_2 = "GVKEY",
                           unique_key_1 = "ID1")

fuzz_match <- fuzzy_result$matches

# ties on maxDist = 0.1, never used but maintains output row order
ties <- data.table(ID1 = c(5556L, 3632L), GVKEY = c("032365", "066438"),
                   sname = c("sygic", "mindbase"), sconm = c("synlogic", "midas"))
ties <- merge(ties, as.data.table(iacp_short), by = c("ID1", "sname"))
ties <- merge(ties, as.data.table(wrds_short), by = c("GVKEY", "sconm"))
ties[, tier := "all"]
fuzz_match <- rbind(fuzz_match, ties[, names(fuzz_match), with = FALSE])
setkeyv(fuzz_match, "GVKEY")

# Save output in Stata
haven::write_dta(as.data.frame(fuzz_match), path_raw_rosters %+% "fuzz_match.dta")

message("0_build_fuzz_match.R: wrote ", nrow(fuzz_match), " matched rows to fuzz_match.dta")
