# Name: 3a_estSDIDgvt
# Author: Alexander Whitefield
# Modified by Bocar Ba
# Description: run analysis for 3a estSDIDgvt

#Dependencies
rm(list = ls())

library(synthdid)
library(data.table)
library(dplyr)
library(tidyr)
library(lubridate)

#get config and funcs
source("scripts/helper_funcs.R")
source("scripts/config.R")

set.seed(1)

output_prefix <- "gvt"


### 1a . Prepare data
dt <- fread(paste0(path_data,moredays_name))
dt[,Treat:= fifelse(Treat==1,T,F)] #convert to true / false
dtshort <- dt[,.(conm,group,mdy,permno,idnum,ID_abb, Et,Treat,panel,sumAR, #main variables
                 b_mkt,lsize_qtr,lprofitability_qtr,lleverage_qtr,
                 gvtexpo) #covariates
]  

dtshort[, gvtexpo := replace_na(gvtexpo, "Control")]
treated_names = unique(dtshort[Treat==T,gvtexpo])
all_names = unique(dtshort[,gvtexpo])
donar_pool = setdiff(all_names, treated_names)

### generate datasets
n_dfs <- max(dtshort$panel)
df_res <- list()
for (i in 0:(n_dfs)) {
  name_res <- paste0("df_res_",i)
  df_res[[name_res]] <- data.frame()
}

### 1b. Run estimation
for (company_name in treated_names) {
  #setup
  print('phase 1: generate datasets')
  print(company_name)
  dtshort_temp <- dtshort[gvtexpo %in% c(company_name,donar_pool)] #each time, define a new dataset of treated unit and donar pool
  df_list_temp <- list()
  for (i in 0:(n_dfs)) {
    name_temp <- paste0("df_temp_",i)
    df_list_temp[[name_temp]] <- drop_unbalanced(dtshort_temp[panel==i])
  }
  #Full Estimation
  print('phase 2: estimate effects')
  for (i in 0:(n_dfs)) {
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

#1c. Save output in Stata

for (i in 0:(n_dfs)) {
  name_res <- paste0("df_res_",i)
  save_name_res <- paste0(output_prefix,"_res_",i)
  outpath <- path_rslt %+% save_name_res %+% ".dta"
  print("saving " %+% name_res %+% " at: " %+% outpath)
  haven::write_dta(df_res[[name_res]], outpath)
}

###############################################################################
### Pooled Estimation
###############################################################################
# 2a. Prepare data for Pooled Estimation
dt <- fread(paste0(path_data,moredays_name))
dt[,Treat:= fifelse(Treat==1,T,F)] #convert to true / false
dtshort <- dt[,.(conm,group,mdy,permno,idnum,ID_abb, Et,Treat,panel,sumAR, #main variables
                 b_mkt,lsize_qtr,lprofitability_qtr,lleverage_qtr,
                 gvtexpo) #covariates
]  

dtshort[, gvtexpo := replace_na(gvtexpo, "Control")]
treated_names = unique(dtshort[Treat==T,gvtexpo])
all_names = unique(dtshort[,gvtexpo])
donar_pool = setdiff(all_names, treated_names)
dfpooled_results = data.frame()


### 2b. Run pooled estimation
for (company_name in treated_names) {
  
  print('phase 1: generate datasets')
  print(company_name)
  dtshort_temp <- dtshort[gvtexpo %in% c(company_name,donar_pool)] #each time, define a new dataset of treated unit and donar pool
  dfpooled <- drop_unbalanced(dtshort_temp[panel>=0],dcols='ID_abb')
  
  ##############################################################################    
  # Estimations and Output
  ##############################################################################
  #Full Estimation
  print('phase 2: estimate effects')

  res = estSDID_wrap(df=dfpooled,
                     Company_name=company_name,
                     id="idnum",
                     outcome="sumAR")
  dfpooled_results[company_name,"b_sdid"] = res$b_sdid[1]
  dfpooled_results[company_name,"se_sdid"] = res$se_sdid[1]
  dfpooled_results[company_name,"company_name"] = company_name
}

# 2c. Save output in Stata
outpath <- path_rslt %+% "gvt_dfpooled.dta"
print("Outpath: " %+% outpath)
haven::write_dta(dfpooled_results, outpath)






