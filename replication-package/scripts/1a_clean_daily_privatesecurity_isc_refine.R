# filter for verified private security matches

###
### setup
### 

rm(list = ls())
`%+%` <- paste0
library(synthdid)
library(tidyverse)
library(lubridate)
library(readxl)
library(haven)
library(data.table)

source("scripts/config.R")

#Paths
path_ps_roster <- paste0(path_data, "returns_moredays_privatesecurity_isc.csv")

path_ps_roster_refined <- paste0(path_data, "returns_moredays_privatesecurity_isc_refined.csv")


###
### clean
### 

#load stock performance master
df <- fread(path_ps_roster)


#remove police firms
df[group %in% c(2,3),uniqueN(permno)]
path_police_roster <- paste0(path_data, "returns_moredays.csv")
dt_police <- fread(path_police_roster)
policing_firms <- dt_police[group %in% c(2,3),unique(permno)]
df <- df[!(permno %in% policing_firms) ]
df[group %in% c(2,3),uniqueN(permno)]
#

#define treatment group
df[group==2,group := 3] #convert group 2 to group 3

#filter control group
sics_filtered <- df[group==3,unique(sic)]
df <- df[sic %in% sics_filtered]

#check group sizes
df[,uniqueN(permno),by=group]

unique(df[group==3]$conm)

###
### export
###

fwrite(df,path_ps_roster_refined)

