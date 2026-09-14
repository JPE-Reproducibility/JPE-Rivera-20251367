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
dtshort <- dt[,.(conm,group,mdy,permno,idnum,ID_abb_cat, Et,Treat,panel,sumAR, #main variables
                 b_mkt,lsize_qtr,lprofitability_qtr,lleverage_qtr,
                 category) #covariates
]  

dtshort[, category := fifelse(is.na(category), "Control", category)]
treated_names = unique(dtshort[Treat==T,category])
all_names = unique(dtshort[,category])
donar_pool = setdiff(all_names, treated_names)


###############################################################################
### Pooled Estimation
###############################################################################
# 2a. Prepare data for Pooled Estimation
dt <- fread(paste0(path_data,category_name))
dt[,Treat:= fifelse(Treat==1,T,F)] #convert to true / false
dtshort <- dt[,.(conm,group,mdy,permno,idnum,ID_abb_cat, Et,Treat,panel,sumAR, #main variables
                 b_mkt,lsize_qtr,lprofitability_qtr,lleverage_qtr,
                 category) #covariates
] 

dtshort[, category := fifelse(is.na(category), "Control", category)]
treated_names = unique(dtshort[Treat==T,category])
all_names = unique(dtshort[,category])
donar_pool = setdiff(all_names, treated_names)
dfpooled_results = data.frame()

### 2b. Run pooled estimation
for (company_name in treated_names) {
  
  print('phase 1: generate datasets')
  print(company_name)
  dtshort_temp <- dtshort[category %in% c(company_name,donar_pool)] #each time, define a new dataset of treated unit and donar pool
  dfpooled <- drop_unbalanced(dtshort_temp[panel>=0],dcols='ID_abb_cat')
  
  ##############################################################################    
  # Estimations and Output
  ##############################################################################
  #Full Estimation
  print('phase 2: estimate effects')
  
  res = estSDID_wrap(df=dfpooled,
                     Company_name=company_name,
                     id="idnum",
                     outcome="sumAR",
                     est_sc=TRUE)
  dfpooled_results[company_name,"b_sdid"] = res$b_sdid[1]
  dfpooled_results[company_name,"se_sdid"] = res$se_sdid[1]
  dfpooled_results[company_name,"company_name"] = company_name
  
}


haven::write_dta(dfpooled_results, path_rslt %+% "dfpooled_results.dta")
