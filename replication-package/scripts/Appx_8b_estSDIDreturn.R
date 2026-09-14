# Name: 8b_estSDID
# Author: Alexander Whitefield
# Modified by Bocar Ba
# Description: run analysis for 2a estSDID

#Dependencies
rm(list = ls())

library(synthdid)
library(data.table)
library(lubridate)

#get config and funcs
source("scripts/helper_funcs.R")
source("scripts/config.R")

set.seed(1)

### 1. Prepare data
dt <- fread(paste0(path_data,moredays_name))
dt[,Treat:= fifelse(Treat==1,T,F)] #convert to true / false
dtshort <- dt[,.(conm,group,mdy,permno,idnum,ID_abb, Et,Treat,panel,sumR, #main variables
                 b_mkt,lsize_qtr,lprofitability_qtr,lleverage_qtr) #covariates
]  
n_dfs <- max(dtshort$panel)

### 2. Run estimation
for (p in -1:n_dfs) {
  if (p==-1) {
    ps <- unique(dtshort$panel)
    uY <- "idnum"
  } else {
    ps <- p
    uY <- "permno"
  }
  # Strong
  estSDID(dt=dtshort,
          dep="sumR",
          unitY=uY,
          panels=ps,
          groups=c(1,3),
          save=TRUE,
          save_name_append="8b_")
  # Weak
  estSDID(dt=dtshort,
          dep="sumR",
          unitY=uY,
          panels=ps,
          groups=c(1,2),
          save=TRUE,
          save_name_append="8b_")
}