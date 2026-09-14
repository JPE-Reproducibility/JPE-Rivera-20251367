*******************************************************************************
* This code replicates the empirical analysis in Masten and Poirier (2020)
*******************************************************************************

clear all
capture log close
set more off
program drop _all
set matsize 800
version 12.1

cd "/Users/matt/Desktop/MastenPoirier_2020_FAS_replication_files"
global data_path "data"
global do_path "code"

*******************************************************************************
* Prepare the dataset
*******************************************************************************

do "${do_path}/prep_data.do"

*******************************************************************************
* Define macros
*******************************************************************************

global depvar2a "exporter_fe_tons_iv_qr_05"

global c0 
global c1 "l_emp07_cbp l_mp_val_iv_qr_05_exporter"
global c2 "l_emp07_cbp l_mp_val_iv_qr_05_exporter l_pop1920 l_pop1950 l_pop2000"
global c3 "l_emp07_cbp l_mp_val_iv_qr_05_exporter l_pop1920 l_pop1950 l_pop2000 l_manshare2003"

global i1 "l_csa_hwy1947 l_csa_rail1898 l_exploration" 

global instruct2 "tex(frag) auto(2) se nor2 noobs nocons depvar label"
global instruct2_1 "tex(frag) tdec(2) rdec(2) auto(2) label se addstat(First-stage Stat., e(widstat))"

*******************************************************************************
* Load data and define macros
*******************************************************************************

use "${data_path}/DMT2014.dta", clear

*******************************************************************************
* Run analysis
*******************************************************************************

cd "${do_path}"

do "table1.do"
do "table2.do"
do "table3.do"
do "table4.do"

