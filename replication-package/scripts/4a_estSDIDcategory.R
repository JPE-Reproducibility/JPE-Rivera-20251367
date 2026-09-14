# Name: 3a_estSDIDgvt
# Author: Alexander Whitefield
# Description: run analysis for 5a estSDIDcategory

#Dependencies
rm(list = ls())

library(synthdid)
library(data.table)
library(dplyr)
library(lubridate)

#get config and funcs
source("scripts/helper_funcs.R")
source("scripts/config.R")

set.seed(1)

### 1. Prepare data

dt <- fread(paste0(path_data,category_name))
dt[,Treat:= fifelse(Treat==1,T,F)] #convert to true / false
dtshort <- dt[,.(conm,group,mdy,permno,idnum,ID_abb, Et,Treat,panel,sumAR, #main variables
                 b_mkt,lsize_qtr,lprofitability_qtr,lleverage_qtr,
                 category) #covariates
]  

dtshort[, category := fifelse(is.na(category), "Control", category)]
treated_names = unique(dtshort[Treat==T,category])
all_names = unique(dtshort[,category])
donar_pool = setdiff(all_names, treated_names)

### generate datasets
n_dfs <- max(dtshort$panel)
df_res <- list()
for (i in 0:(n_dfs)) {
  print(i)
  name_res <- paste0("df_res_",i)
  df_res[[name_res]] <- data.frame()
}

### 2. Run estimation
for (company_name in treated_names) {
  #setup
  print('phase 1: generate datasets')
  print(company_name)
  dtshort_temp <- dtshort[category %in% c(company_name,donar_pool)] #each time, define a new dataset of treated unit and donar pool
  df_list_temp <- list()
  for (i in 0:(n_dfs)) {
    name_temp <- paste0("df_temp_",i)
    df_list_temp[[name_temp]] <- drop_unbalanced(dtshort_temp[panel==i])
  }
  #Full Estimation
  print('phase 2: estimate effects')
  for (i in 0:(n_dfs)) {
    print(i)
    name_res <- paste0("df_res_",i)
    name_temp <- paste0("df_temp_",i)
    res = estSDID_wrap(df=df_list_temp[[name_temp]],
                       Company_name=company_name,
                       id = "permno",
                       outcome="sumAR")
    df_res[[name_res]][company_name,"b_sdid"] = res$b_sdid[1]
    df_res[[name_res]][company_name,"se_sdid"] = res$se_sdid[1]
    df_res[[name_res]][company_name,"company_name"] = company_name
  }
}

# print results to console
for (i in df_res) {
  print(i)
}

#3. Save output in Stata
output_prefix <-  "category"
for (i in 0:(n_dfs)) {
  name_res <- paste0("df_res_",i)
  save_name_res <- paste0(output_prefix,"_res_",i)
  outpath <- path_rslt %+% save_name_res %+% ".dta"
  print("saving " %+% name_res %+% " at: " %+% outpath)
  haven::write_dta(df_res[[name_res]], outpath)
}











