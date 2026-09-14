# Name: helper_funcs
# Author: Alexander Whitefield
# Description: common functions used across files

### dependencies
library(data.table)
library(dplyr)
library(synthdid)

### 0. simple funcs

`%+%` <- paste0
`%notin%` <- Negate(`%in%`)

### calculates statistical mode 
stat.mode <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}


### 0. quickestDID functions


# returns estimated treatment effect only
# computes SE
quickerSDID <- function(dt, #data.table
                         dep, #dependant variable name
                         unitY #unit of analysis e.g. firm ID
                    ) {
  print("running")
  tdf = dt
  col_names = c(unitY, "Et", dep, "Treat")
  setup = panel.matrices(
    tdf[, ..col_names],
    unit=unitY,time='Et',outcome=dep, treatment='Treat')
  
  ##############################################################################    
  #Estimation SDID
  ##############################################################################
  b_sdid      <- synthdid::synthdid_estimate(setup$Y,setup$N0,setup$T0)
  se_sdid     <- sqrt(vcov(b_sdid, method='placebo'))
  sdid_plt    <- synthdid_plot(b_sdid)
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
  #Save output from plots
  x_sc <-sc_plt[["plot_env"]][["conc"]]$lines$x
  y_sc <-sc_plt[["plot_env"]][["conc"]]$lines$y  
  cf_sc<-sc_plt[["plot_env"]][["conc"]]$lines$color 
  issc_sc<-sc_plt[["plot_env"]][["conc"]]$lines$is.sc
    
  
  ### convert result to df
  results_df <- tibble(Y_sdid  =as.vector(y_sdid),
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
                       se_sc = se_sc[1],
                       issc_sv =issc_sc[1])
  return(results_df)
}

quickestSDID <- function(dt, #data.table
                         dep, #dependant variable name
                         unitY #unit of analysis e.g. firm ID
) {
  print("running")
  tdf = dt
  col_names = c(unitY, "Et", dep, "Treat")
  setup = panel.matrices(
    tdf[, ..col_names],
    unit=unitY,time='Et',outcome=dep, treatment='Treat')
  
  ##############################################################################    
  #Estimation SDID
  ##############################################################################
  b_sdid      <- synthdid::synthdid_estimate(setup$Y,setup$N0,setup$T0)
  sdid_plt    <- synthdid_plot(b_sdid)
  #Save output from plots
  x_sdid <-sdid_plt[["plot_env"]][["conc"]]$lines$x
  y_sdid <-sdid_plt[["plot_env"]][["conc"]]$lines$y  
  cf_sdid<-sdid_plt[["plot_env"]][["conc"]]$lines$color  
  issc_sdid<-sdid_plt[["plot_env"]][["conc"]]$lines$is.sc 

  ##############################################################################    
  #Estimation sc
  ##############################################################################
  b_sc      <- sc_estimate(setup$Y,setup$N0,setup$T0)
  sc_plt    <- synthdid_plot(b_sc)
  #Save output from plots
  x_sc <-sc_plt[["plot_env"]][["conc"]]$lines$x
  y_sc <-sc_plt[["plot_env"]][["conc"]]$lines$y  
  cf_sc<-sc_plt[["plot_env"]][["conc"]]$lines$color 
  issc_sc<-sc_plt[["plot_env"]][["conc"]]$lines$is.sc
  
  
  ### convert result to df
  results_df <- tibble(Y_sdid  =as.vector(y_sdid),
                       type_sdid =as.vector(cf_sdid),
                       x_sdid    =as.vector(x_sdid),
                       b_sdid    =b_sdid[1],
                       issc_sdid =issc_sdid[1],
                       #SC
                       Y_sc    =as.vector(y_sc),
                       type_sc =as.vector(cf_sc),
                       x_sc    =as.vector(x_sc),
                       b_sc    =b_sc[1],
                       issc_sv =issc_sc[1])
  return(results_df)
}

### 1. estSDID function
# returns an object that contains results for sdid and did estimators
# this is a legacy function, but keeping here for now
estSDID <- function(dt, #data.table
                    dep, #dependant variable name
                    unitY, #unit of analysis e.g. firm ID
                    panels = NA, #panels to select
                    groups = NA, #groups to select
                    est_sc=TRUE, #if SC= true, runs SC as well as SDID
                    save=FALSE,
                    save_name_append=NA) {
  stopifnot(!is.null(dep)) #halt if no dep variable
  if (!all(is.na(panels))){ #print panels if supplied
    print("Panels: " %+% paste0(panels, collapse=", "))
  }
  print("Dep: " %+% dep)
  #Prepare the data
  if ( all(is.na(panels)) & all(is.na(groups))  ){ #may want to select rows and columns
    tdf <- dt
  } else {
    print("filtering by panels and groups")
    tdf <- dt[(panel %in% panels) & (group %in% groups)] 
    }
  stopifnot(!is.null(tdf)) #halt if length zero
  col_names = c(unitY, "Et", dep, "Treat")
  setup = panel.matrices(
    tdf[, ..col_names],
    unit=unitY,time='Et',outcome=dep, treatment='Treat')

  ### path for dta. files
  if (save == TRUE) {
    outpath <-path_rslt %+% save_name_append %+%
        ifelse(length(panels)>1,"pooled",panels[1]) %+% 
        "_" %+% ifelse(3 %in% groups, "strong", "weak") %+%
        "_" %+% dep %+%  ".dta"
    print("Outpath: " %+% outpath)
  }

  ##############################################################################    
  #Estimation SDID
  ##############################################################################
  b_sdid      <- synthdid::synthdid_estimate(setup$Y,setup$N0,setup$T0)
  se_sdid     <- sqrt(vcov(b_sdid, method='placebo'))
  sdid_plt    <- synthdid_plot(b_sdid)
  plot(b_sdid)

  #Save output from plots
  x_sdid <-sdid_plt[["plot_env"]][["conc"]]$lines$x
  y_sdid <-sdid_plt[["plot_env"]][["conc"]]$lines$y  
  cf_sdid<-sdid_plt[["plot_env"]][["conc"]]$lines$color  
  issc_sdid<-sdid_plt[["plot_env"]][["conc"]]$lines$is.sc 
  print(b_sdid[1])
  print(se_sdid)  
  
  ##############################################################################    
  #Estimation sc
  ##############################################################################
  if (est_sc == TRUE) {
    b_sc      <- sc_estimate(setup$Y,setup$N0,setup$T0)
    se_sc     <- sqrt(vcov(b_sc, method='placebo'))
    sc_plt    <- synthdid_plot(b_sc)
    plot(b_sc)
    #Save output from plots
    x_sc <-sc_plt[["plot_env"]][["conc"]]$lines$x
    y_sc <-sc_plt[["plot_env"]][["conc"]]$lines$y  
    cf_sc<-sc_plt[["plot_env"]][["conc"]]$lines$color 
    issc_sc<-sc_plt[["plot_env"]][["conc"]]$lines$is.sc
    print(b_sdid[1])
    print(se_sdid)  
  }
  ##############################################################################      
  #Output
  ##############################################################################
  if (est_sc == TRUE) {
    results_df <- tibble(Y_sdid  =as.vector(y_sdid),
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
  } else {
    results_df <- tibble(Y_sdid  =as.vector(y_sdid),
                         type_sdid =as.vector(cf_sdid),
                         x_sdid    =as.vector(x_sdid),
                         b_sdid    =b_sdid[1],
                         se_sdid   =se_sdid[1],
                         issc_sdid =issc_sdid[1])
  }
  #Save output in Stata if save mode is turned on
  if (save == TRUE) {
    haven::write_dta(results_df,outpath)
  }
  return(results_df)
}

### 2. estSDID by name
# runs an estSDID, but uses the name of a df, rather than an actual df
# input:
# output: 
estSDID_byname <- function(df_name, #name of df
                    dep #dependent variable name
                    ) {
  stopifnot(!is.null(df_name) & !is.null(dep))
  print("DF Name: " %+% df_name)
  print("Dep: " %+% dep)
  #Prepare the data
  tdf <- get(df_name)
  setup = panel.matrices(
    tdf[, c("idnum", "Et", dep, "Treat")],
    unit='idnum',time='Et',outcome=dep, treatment='Treat')
  
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
  print(b_sdid[1])
  print(se_sdid)  
  
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
      issc_sdid =issc_sdid[1])
  
  return( results_df)
}


### 3. estDID wrapper for individual companies

# returns an object that contains results for sdid and did estimators for a single company
# input: full dt
# output: results df
estSDID_wrap <- function(df,
                         Company_name,
                         id,
                         outcome="sumAR",
                         est_sc=FALSE) {
  if (df[Treat == T,.N] == 0) {
    print('unit NOT treated')
    res = tibble(
      b_sdid=NA,
      se_sdid=NA,
      b_sc=NA,
      se_sc=NA)
  } else {
    print('unit treated')
    print(paste0('company: ',Company_name))
    res <- estSDID(df,
                   dep=outcome,
                   unitY=id,
                   est_sc=est_sc)
    }
  return(res)
}






### 4. drop unbalanced function
drop_unbalanced <- function(df, dcols="conm") {
  df <- df %>% 
    group_by(get(dcols)) %>%
    mutate(countN=n()) %>%
    ungroup() 
  nr <-nrow(df) 
  df <- df %>%
    filter(countN==median(countN))
  print("Dropped % for balance:")
  print((nr-nrow(df))/nr)
  return(data.table(df))
}


### 5. placebo distribution
# for each of the 100 random portfolios
# calculate treat effect using other 99 and donar pool
# report 1st and 99th percentiles
# takes in a dataframe with one treated unit
# returns dt of placebo dists 
gen_placebo_dist <- function(dt,treat_id=0,exclude_ids=1,dep.var="sumAR",se=F) {
  print(paste0("excluding: ",exclude_ids))
  print(paste0("treated: ",treat_id))
  # gen portfolio list
  
  PIDs <- unique(dt[PID %notin% exclude_ids]$PID)
  treatedPIDs <- c(treat_id,exclude_ids)
  donar_pool <- PIDs[PIDs %notin% treatedPIDs] #exclude treatment portfolios
  set.seed(1)
  dt_res <- data.table()
  for (i in PIDs) {
    ### form temp df
    print(paste0("PID: ",i))
    if (i == treat_id) { #gen dataset - special cases if PID = 0 or 1 
      dt_temp <- dt[PID %notin% exclude_ids] # 100 control units
      #print("skipping treated unit")
    }  else {
      dt_temp <- copy(dt[PID %notin% treatedPIDs]) #start df, exclude treated units
      dt_temp[PID==i & Et >= 0 ,Treat:= 1] #re-add treatment
    }
    ### run synthDID
    se_bool = fifelse(i == treat_id,T,F)
    if (se==T & se_bool==T ) {
      print("computing se's")
      res = quickerSDID(dt=dt_temp,
                         unitY="PID",
                         dep=dep.var)
    } else {
      print("not computing se's")
      res = quickestSDID(dt=dt_temp,
                        unitY="PID",
                        dep=dep.var)
    }
    ### record results
    df_temp <- data.table(res)
    df_temp[,PID:=i]
    dt_res <- rbind(dt_res,df_temp,fill=TRUE)
  }
  
  
  
  return(dt_res)
}
