# Name: 4a_estSDIDlongMonthly
# Author: Alexander Whitefield
# Description: run analysis for 4a estSDIDlongMonthly

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
dt <- fread(paste0(path_data,longterm_name))
dt[,Treat:= fifelse(Treat==1,T,F)] #convert to true / false
portfolios <- sort(unique(dt$portofolio))
counter <- 0
for (i in portfolios) { #add unique id for each portfolio
  dt[portofolio==i,PID:=counter]
  counter = counter + 1 
}
dtshort <- dt[,.(PID,mofd,portofolio,group,Et,Treat,sumAR,estimation) ]  




### generate datasets
strong_dt1 <- dtshort[group %in% c(1,3) & estimation==3] # Strong Connections
weak_dt1 <- dtshort[group %in% c(1,2)   & estimation==2] # Weak Connections
dt1s <- list("strong_dt" = strong_dt1,"weak_dt" = weak_dt1)

### 2. Dynamic effects


# repeat for weak and strongly connected firms
counter = 0
for (i in names(dt1s)) {
  dt_res <- gen_placebo_dist(dt1s[[i]],treat_id = 1 - counter,exclude_ids=counter,dep.var="sumAR")
  outpath <- path_rslt %+% "unweighted_monthly_total" %+% i %+%  ".dta"
  print("Outpath: " %+% outpath)
  haven::write_dta(dt_res,outpath)
  counter = counter + 1
}



### 3. Run pooled estimation

# Strong Connections
strong_dt1_CAR=estSDID(dt=strong_dt1,
                       dep="sumAR", #not sumAR,
                       unitY="PID",
                       save=TRUE,
                       save_name_append="4a_unweighted_strong_")

# Weak Connections
weak_dt1_CAR=estSDID(dt=weak_dt1,
                     dep="sumAR", #not sumAR,
                     unitY="PID",
                     save=TRUE,
                     save_name_append="4a_unweighted_weak_")




