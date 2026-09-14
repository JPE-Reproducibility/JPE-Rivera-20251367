# Name: Fundamentals
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
dataname<-"fundamentals_PostSummer2020.csv"
dt <- fread(paste0(path_data,dataname))
dt[,Treat:= fifelse(Treat==1,T,F)] #convert to true / false
dtshort <- dt[,.(conm,group,qofd,permno,idnum,ID_abb,Et,Treat,panel,gsale,gcogs)]  


# Strong
uY<- "permno"
#Sales
estSDID(dt=dtshort,
        dep="gsale",
        unitY=uY,
        panels=6,
        groups=c(1,3),
        save=TRUE,
        save_name_append="11a_")

#Cogs
estSDID(dt=dtshort,
        dep="gcogs",
        unitY=uY,
        panels=6,
        groups=c(1,3),
        save=TRUE,
        save_name_append="11a_")