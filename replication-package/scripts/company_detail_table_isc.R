### table of companies


# filter for verified private security matches

###
### setup
### 

rm(list = ls())
`%+%` <- paste0
source("scripts/config.R")
library(synthdid)
library(tidyverse)
library(lubridate)
library(readxl)
library(haven)
library(data.table)
library(xtable)


#Paths
path_ps_roster_refined <- path_data %+% "returns_moredays_privatesecurity_isc_refined.csv"

path_raw_roster <- path_raw_ps %+% "roster_post_manual.csv.gz"

###
### clean
### 


dt <- fread(path_ps_roster_refined)
dt_summary <- unique(dt[group==3,.(permno,conm,gvkey,tic)])

dt_descriptions <- fread(path_raw_roster)

#dt_pitchbook <- fread(path_ps_roster_pitchbook)
#dt_pitchbook[,tic := Ticker]
#dt_merged <- data.table::merge.data.table(dt_summary,dt_pitchbook,by='tic',all.x=T)

###
###  manual website search
###

permnos <- dt_summary$permno
tik1s <- dt_summary$tic

for (i in permnos) {
  description <- dt_descriptions[permno == i,description]
  if (length(description) > 0) {
    dt_summary[permno==i,Description := description]
  }
}

for (i in tik1s) {
  description <- dt_descriptions[ticker == i,description]
  if (length(description) > 0) {
    dt_summary[tic==i,Description := description]
  }
}



#the following companies are false positives: lets remove them. 
#dt_summary[conm == 'TRANSACT TECHNOLOGIES INC', Description := '']
#dt_summary[conm == 'JABIL INC', Description := 'Jabil Inc. is an American multinational manufacturing company involved in the design, engineering, and manufacturing of electronic circuit board assemblies and systems, along with supply chain services, primarily serving original equipment manufacturers.'] #not really private security


###
### generate table
###

dt_table <- data.table('Company' = dt_summary$conm, 'Description' = dt_summary$Description)

dt <- dt_table[, .(Company, Description)]

# column specs: adjust widths as you like
align <- c("l",
           ">{\\raggedright\\arraybackslash}p{3.5cm}",
           ">{\\raggedright\\arraybackslash}p{20cm}")

xt <- xtable(dt, align = align)

n <- nrow(dt)
add <- list(
  pos = as.list(1:(n-1)),          # after each row except the last
  command = rep("\\midrule\n", n-1)
)

sink(paste0(path_tables, "private_security_desciptions_sample2.tex"))
print(xt,
      include.rownames = FALSE,
      include.colnames = TRUE,
      booktabs = TRUE,              # uses \toprule, \midrule, \bottomrule
      hline.after = c(0, n),        # \midrule after header and \bottomrule at end
      add.to.row = add,
      floating = FALSE)             # only the tabular, no table environment
sink()


