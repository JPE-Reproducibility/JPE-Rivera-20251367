#Estimate SDID and SC
#Preliminary
rm(list = ls())
library(synthdid)
library(tidyverse)
library(lubridate)

#get config and funcs
source("scripts/helper_funcs.R")
source("scripts/config.R")

path_placebos <- paste0(path_data, "returns_moredays_placebos.csv")

################################################################################
#Setup
################################################################################

set.seed(1)

# Load Returns Data
df <- read_csv(path_placebos) %>%
  group_by(permno) %>%
  mutate(PID=cur_group_id()) %>%
  ungroup() %>%
  mutate(Treat = Treat==1)

dep_var <- "PsumAR" #PsumAR
df_deps <-c(dep_var) 

#All
dfshort<-df %>% select(conm,group,PID,mdy,permno,idnum,ID_abb, Et,Treat,placebo,all_of(df_deps))

# Strong Connections
strong_dfpooled <- dfshort%>% as.data.frame()%>% filter(placebo>=0)%>% filter(group==1|group==3)  

# Weak Connections
weak_dfpooled <- dfshort%>% as.data.frame()%>% filter(placebo>=0)%>% filter(group==1|group==2)  

##############################################################################    
# Function for estimations
##############################################################################
#For each events
estSDID <- function(df_name, dep, unitY) {
  stopifnot(!is.null(df_name) & !is.null(dep))
  print("DF Name: " %+% df_name)
  print("Dep: " %+% dep)
  #Prepare the data
  tdf <- get(df_name)
  setup = panel.matrices(
    tdf[, c(unitY, "Et", dep, "Treat")],
    unit=unitY,time='Et',outcome=dep, treatment='Treat')
  
  ##############################################################################    
  #Estimation SDID
  ##############################################################################
  b_sdid      <- synthdid_estimate(setup$Y,setup$N0,setup$T0)
  se_sdid     <- sqrt(vcov(b_sdid, method='placebo'))
  sdid_plt    <- synthdid_plot(b_sdid)
  plot(b_sdid)
  
  #Save output from plots
  x_sdid <-sdid_plt[["plot_env"]][["conc"]]$lines$x
  y_sdid <-sdid_plt[["plot_env"]][["conc"]]$lines$y  
  cf_sdid<-sdid_plt[["plot_env"]][["conc"]]$lines$color  
  issc_sdid<-sdid_plt[["plot_env"]][["conc"]]$lines$is.sc 
  
  ##############################################################################    
  #Estimation sc
  ##############################################################################
  b_sc      <- sc_estimate(setup$Y,setup$N0,setup$T0)
  se_sc     <- sqrt(vcov(b_sc, method='placebo'))
  sc_plt    <- synthdid_plot(b_sc)
  plot(b_sc)
  
  #Save output from plots
  x_sc <-sc_plt[["plot_env"]][["conc"]]$lines$x
  y_sc <-sc_plt[["plot_env"]][["conc"]]$lines$y  
  cf_sc<-sc_plt[["plot_env"]][["conc"]]$lines$color 
  issc_sc<-sc_plt[["plot_env"]][["conc"]]$lines$is.sc
  
  ##############################################################################      
  #Output
  ##############################################################################
  results_df <-
    tibble( #SDID
      Y_sdid    =as.vector(y_sdid),
      type_sdid =as.vector(cf_sdid),
      x_sdid    =as.vector(x_sdid),
      b_sdid    =b_sdid[1],
      se_sdid   =se_sdid[1],
      issc_sdid =issc_sdid[1],
      #SC
      Y_sc    =as.vector(y_sc),
      type_sc =as.vector(cf_sc),
      x_sc    =as.vector(x_sc),
      b_sc    =b_sc[1],
      se_sc   =se_sc[1],
      issc_sv =issc_sc[1])
  
  #Save output in Stata
  haven::write_dta(results_df, path_rslt %+% "SDID" %+% df_name %+% "_placebo_" %+% dep %+%  ".dta")
  return( results_df)
}

##############################################################################    
# Estimations and Output
##############################################################################
#Full Estimation
# Strong Connections
strong_placebo_CAR=estSDID("strong_dfpooled",dep_var,"idnum")
haven::write_dta(strong_placebo_CAR, path_rslt %+% "SDID_strong_placebo_CAR_placebo.dta")

# Weak Connections
weak_placebo_CAR=estSDID("weak_dfpooled",dep_var,"idnum")
haven::write_dta(weak_placebo_CAR, path_rslt %+% "SDID_weak_placebo_CAR_placebo.dta")

