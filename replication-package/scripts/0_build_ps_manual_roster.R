source("scripts/config.R")
library(data.table)
library(readxl)

base_path <- path_raw_ps

dt1 <- fread(file.path(base_path, "ps_roster_classification_DM.csv"))
dt2 <- data.table(read_excel(file.path(base_path, "ps_roster_classification_NS.xlsx")))
dt3 <- data.table(read_excel(file.path(base_path, "ps_roster_classification_YZ.xlsx")))
dt4 <- data.table(read_excel(file.path(base_path, "ps_roster_classification_IC.xlsx")))

police_firms <- unique(c(dt1[`Police firm`==1, permNo],
                         dt2[`Police firm`==1, permNo],
                         dt3[`Police firm`==1, permNo],
                         dt4[`Police firm`==1, permNo]))

ps_firms <- unique(c(dt1[`Private security firm`==1, permNo],
                     dt2[`Private security firm`==1, permNo],
                     dt3[`Private security firm`==1, permNo],
                     dt4[`Private security firm`==1, permNo]))

ps_only <- ps_firms[!(ps_firms %in% police_firms)]
to_remove <- c("83910", "79094")
ps_only <- ps_only[!(ps_only %in% to_remove)]

dt_export <- data.table(permno = ps_only)
fwrite(dt_export, paste0(path_data, "ps_manual_final_roster.csv"))
cat("Written", nrow(dt_export), "rows to", paste0(path_data, "ps_manual_final_roster.csv"), "\n")
