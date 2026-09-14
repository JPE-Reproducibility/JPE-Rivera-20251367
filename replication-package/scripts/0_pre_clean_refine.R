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
path_isc_ps_roster <- paste0(path_raw_ps, "roster_post_manual.csv.gz")

#path_isc_ps_roster_reduced <- paste0(path_raw_ps, "intermediate/roster_post_manual_reduced.csv")

path_compustat <- paste0(path_raw_wrds, "wrds_compustat.dta")
path_compustat_isc <- paste0(path_raw_wrds, "wrds_compustat_isc.dta")

###
### make manual dataset
###

dt <- fread(path_isc_ps_roster)

dt_manual <- dt[ticker != ""]


###
### load 10k data and modify it
### 

dt_comp <- data.table(haven::read_dta(path_compustat))

#gen variable
dt_comp[,in_isc := 0]

#add if matches permno
permnos <- unique(dt_manual[!is.na(permno),permno])
dt_comp[lpermno %in% permnos,.N]
dt_comp[lpermno %in% permnos,in_isc := 1]
length(permnos)
sum(dt_comp$in_isc)

#add if matches ticker 1
tickers1 <- unique(dt_manual[!is.na(ticker),ticker])
dt_comp[tic %in% tickers1,.N]
dt_comp[tic %in% tickers1,in_isc := 1]
length(tickers1)
sum(dt_comp$in_isc)

#add if matches ticker 2
tickers2 <- unique(dt_manual[!is.na(ticker2),ticker2])
dt_comp[tic %in% tickers2,.N]
dt_comp[tic %in% tickers2,in_isc := 1]
length(tickers2)
sum(dt_comp$in_isc)

dt_comp[tic %in% dt_manual$ticker,in_isc := 1]
dt_manual[!is.na(permno),.N]
sum(dt_comp$in_isc)

###
### export
### 

#write matched compustat file 
haven::write_dta(dt_comp,path_compustat_isc)




