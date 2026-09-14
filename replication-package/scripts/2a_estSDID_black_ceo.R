# Name: 2a_estSDID
# Author: Alexander Whitefield
# Modified by Bocar Ba
# Description: run analysis for 2a estSDID
 
#Dependencies
rm(list = ls())

library(synthdid)
library(data.table)
library(lubridate)
library(haven)

#get config and funcs
source("scripts/helper_funcs.R")
source("scripts/config.R")

set.seed(1)

path_minority_export <- path_rslt

### 1. Prepare data
dt <- fread(paste0(path_data,"returns_moredays_BlackCEO.csv"))
dt[,Treat:= fifelse(Treat==1,T,F)] #convert to true / false, ensure black ceo is treatment
dtshort <- dt[,.(conm,group,mdy,permno,idnum,ID_abb, Et,Treat,panel,sumAR, #main variables
                 b_mkt,lsize_qtr,lprofitability_qtr,lleverage_qtr) #covariates
]  
n_dfs <- max(dtshort$panel)




### 2. Run estimation

#initialise lists
res_list <- as.list(-1:n_dfs)
df_ids <- -1:n_dfs

for (i in 1:length(df_ids)) {
  p <- df_ids[i]
  if (p==-1) {
    ps <- unique(dtshort$panel)
    uY <- "idnum"
  } else {
    ps <- p
    uY <- "permno"
  }
  # Strong
  res_list[[i]] <- estSDID(dt=dtshort,
                        dep="sumAR",
                        unitY=uY,
                        panels=ps,
                        groups=c(1,3),
                        save=FALSE, #don't save, will save down manually
                        save_name_append="minority_")
  
  ### save down
  outpath <-path_minority_export %+% 'minority_' %+%
    ifelse(length(ps)>1,"pooled",ps[1]) %+% 
    "_" %+% "sumAR" %+%  ".dta"
  print("Outpath: " %+% outpath)
  haven::write_dta(res_list[[i]] ,outpath)

  }




### checks

#dt_pooled <- data.table(haven::read_dta(path_minority_export %+%'minority_pooled_sumAR.dta'))
#dt_gf <- data.table(haven::read_dta(path_minority_export %+%'minority_6_sumAR.dta'))

#dt_plot <- dt_gf
#dt_plot <- dt_pooled

#plot sdid
#plot(dt_plot[type_sdid=='treated']$x_sdid, dt_plot[type_sdid=='treated']$Y_sdid, type = "l", col = "blue",
#     xlab = "X-axis", ylab = "Y-axis", main = "Two Line Charts")
#lines(dt_plot[type_sdid=='treated']$x_sdid, dt_plot[type_sdid=='synthetic control']$Y_sdid, col = "red")

#plot sc
#plot(dt_plot[type_sdid=='treated']$x_sdid, dt_plot[type_sdid=='treated']$Y_sc, type = "l", col = "blue",
#     xlab = "X-axis", ylab = "Y-axis", main = "Two Line Charts")
#lines(dt_plot[type_sdid=='treated']$x_sdid, dt_plot[type_sdid=='synthetic control']$Y_sc, col = "red")




