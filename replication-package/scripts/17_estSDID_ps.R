#Estimate SDID and SC
#Preliminary
rm(list = ls())
library(synthdid)
library(tidyverse)
library(lubridate)
library(readxl)
library(haven)
library(data.table)

#get config and funcs
source("scripts/helper_funcs.R")
source("scripts/config.R")

#Paths
path_ps_roster <- paste0(path_data, "returns_moredays_privatesecurity.csv")
path_manual_ps_roster <- paste0(path_data, "ps_manual_final_roster.csv")



################################################################################
#Setup
################################################################################

set.seed(1)

# Load Returns Data
df <- read_csv(path_ps_roster) %>%
  group_by(permno) %>%
  mutate(PID=cur_group_id()) %>%
  ungroup() %>%
  mutate(Treat = Treat==1)


### group 1 / 2 or 3

dt_roster <- fread(path_manual_ps_roster)
permnos <- dt_roster$permno

#keep ps firms, those who aren't connected
nrow(df)
df <- df %>% filter(permno %in% permnos | group == 1)
nrow(df)

### block to remove police firms
nrow(df)
path_police_roster <- paste0(path_data, moredays_name)
dt_police <- fread(path_police_roster)
policing_firms <- dt_police[group %in% c(2,3),unique(permno)]
df <- df %>% filter(permno %notin% policing_firms )
nrow(df)
###



#select cols
dtshort<- data.table(df %>% select(conm,group,PID,mdy,permno,idnum,ID_abb, Et,Treat,sumAR,panel))



dtshort[,uniqueN(permno),by=group]


### estimation

n_dfs <- max(dtshort$panel)


dts <- list()
counter = 1 
### 2. Run estimation
for (p in -1:n_dfs) {
  
  if (p==-1) {
    ps <- unique(dtshort$panel)
    uY <- "idnum"
  } else {
    ps <- p
    uY <- "permno"
  }
  print('panel ' %+% p)
  # Strong
  x= estSDID(dt=dtshort,
          dep="sumAR",
          unitY=uY,
          panels=ps,
          groups=c(1,3),
          save=FALSE,
          save_name_append="17ps_")
  haven::write_dta(x, path_rslt %+% "SDID_privatesecurity_panel_" %+% p %+%  ".dta")
  
  dts[counter] = x
  
  counter = counter + 1

}




