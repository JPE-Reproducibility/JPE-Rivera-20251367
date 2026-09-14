#Estimate SDID placebo for private security
rm(list = ls())
library(synthdid)
library(tidyverse)
library(lubridate)

source("scripts/helper_funcs.R")
source("scripts/config.R")

set.seed(1)

for (event_type in c('_ADL','')) {

  if (event_type == "_ADL") {
    path_placebos <- path_data %+% "returns_moredays_ADL_placebos_privatesecurity.csv"
    dep_var <- "APsumAR"
    placebo_name <- "adl_placebo"
  } else {
    path_placebos <- path_data %+% "returns_moredays_placebos_privatesecurity.csv"
    dep_var <- "PsumAR"
    placebo_name <- "placebo"
  }

  set.seed(1)

  df <- read_csv(path_placebos) %>%
    group_by(permno) %>%
    mutate(PID=cur_group_id()) %>%
    ungroup() %>%
    mutate(Treat = Treat==1)

  dfshort <- df %>% select(conm,group,PID,mdy,permno,idnum,ID_abb,Et,Treat,
                           all_of(placebo_name),all_of(dep_var))

  if (event_type == "_ADL") {
    dfshort$placebo <- dfshort$adl_placebo
  }

  strong_dfpooled <- dfshort %>% as.data.frame() %>%
    filter(placebo>=0) %>%
    filter(group==1|group==3)

  estSDID_placebo <- function(df_name, dep, unitY) {
    print("DF Name: " %+% df_name %+% " Dep: " %+% dep)
    tdf <- get(df_name)
    setup = panel.matrices(
      tdf[, c(unitY, "Et", dep, "Treat")],
      unit=unitY, time='Et', outcome=dep, treatment='Treat')
    b_sdid  <- synthdid_estimate(setup$Y, setup$N0, setup$T0)
    se_sdid <- sqrt(vcov(b_sdid, method='placebo'))
    sdid_plt <- synthdid_plot(b_sdid)
    x_sdid <- sdid_plt[["plot_env"]][["conc"]]$lines$x
    y_sdid <- sdid_plt[["plot_env"]][["conc"]]$lines$y
    cf_sdid <- sdid_plt[["plot_env"]][["conc"]]$lines$color
    issc_sdid <- sdid_plt[["plot_env"]][["conc"]]$lines$is.sc
    b_sc  <- sc_estimate(setup$Y, setup$N0, setup$T0)
    se_sc <- sqrt(vcov(b_sc, method='placebo'))
    sc_plt <- synthdid_plot(b_sc)
    x_sc <- sc_plt[["plot_env"]][["conc"]]$lines$x
    y_sc <- sc_plt[["plot_env"]][["conc"]]$lines$y
    cf_sc <- sc_plt[["plot_env"]][["conc"]]$lines$color
    issc_sc <- sc_plt[["plot_env"]][["conc"]]$lines$is.sc
    tibble(Y_sdid=as.vector(y_sdid), type_sdid=as.vector(cf_sdid),
           x_sdid=as.vector(x_sdid), b_sdid=b_sdid[1], se_sdid=se_sdid[1],
           issc_sdid=issc_sdid[1],
           Y_sc=as.vector(y_sc), type_sc=as.vector(cf_sc),
           x_sc=as.vector(x_sc), b_sc=b_sc[1], se_sc=se_sc[1],
           issc_sv=issc_sc[1])
  }

  strong_placebo_CAR <- estSDID_placebo("strong_dfpooled", dep_var, "idnum")
  haven::write_dta(strong_placebo_CAR, path_rslt %+% "sumAR" %+% event_type %+% "_placebo_privatesecurity.dta")
}
