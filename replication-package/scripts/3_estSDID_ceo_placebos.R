#Estimate SDID and SC
#Preliminary
rm(list = ls())
library(synthdid)
library(tidyverse)
library(lubridate)

#get config and funcs
source("scripts/helper_funcs.R")
source("scripts/config.R")

set.seed(1)

#loop through all combos and run
for (sample_name in c('AsianCEO','BlackCEO','HispanicCEO')) {
  for (event_type in c('_ADL','')) {
    
    #sample_name <- 'AsianCEO'
    #event_type <- 'ADL' #or '' for mass shooting
    
    ### gen spexcifixc paths
    
    path_placebos <- path_data %+% "returns_moredays" %+% event_type %+% "_placebos_" %+% sample_name %+% ".csv"
    
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
    
    
    if (event_type == "_ADL") {
      dep_var <- "APsumAR"
      placebo_name <- "adl_placebo"
    } else{
      dep_var <- "PsumAR" 
      placebo_name <- "placebo"
    }
    
    df_deps <-c(dep_var) 
    placebo_names <- c(placebo_name)
    
    #All
    dfshort<-df %>% select(conm,group,PID,mdy,permno,idnum,ID_abb, Et,Treat,placebo_names,all_of(df_deps))
    
    if (event_type == "_ADL") {
      dfshort$placebo <- dfshort$adl_placebo
    }
    
    # Strong Connections
    strong_dfpooled <- dfshort%>% as.data.frame()%>% filter(placebo>=0)%>% filter(group==1|group==3) 
    
    
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
      #haven::write_dta(results_df, path_rslt %+% "SDID_" %+% df_name %+% "_placebo_" %+% dep %+%  "_" %+% sample_name %+% ".dta")
      return( results_df)
    }
    
    
    
    ##############################################################################    
    # Estimations and Output
    ##############################################################################
    #Full Estimation
    # Strong Connections
    strong_placebo_CAR=estSDID("strong_dfpooled",dep_var,"idnum")
    haven::write_dta(strong_placebo_CAR, path_rslt %+% "sumAR" %+% event_type  %+% "_placebo_" %+% sample_name %+%  ".dta")

  }
}
