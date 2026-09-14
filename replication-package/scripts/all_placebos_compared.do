version 17.0
clear all
set more off

do "scripts/config.do"

********************************************************************************
* Legend labels
********************************************************************************
global L_blm     "BLM protest"
global L_mass    "Mass shooting placebo"
global L_white   "White supremacy placebo"

********************************************************************************
* Build unified dataset
********************************************************************************
* POLICING
use "$path_sdid/2a_pooled_strong_sumAR.dta", clear
gen df = 0
append using "$path_sdid/SDID_strong_placebo_CAR_placebo.dta"
replace df = 1 if missing(df)
append using "$path_sdid/SDID_strong_placebo_CAR_ADL_placebo.dta"
replace df = 2 if missing(df)

* PRIVATE SECURITY
append using "$path_sdid/SDID_privatesecurity_panel_-1.dta"
replace df = 3 if missing(df)
append using "$path_sdid/sumAR_placebo_privatesecurity.dta"
replace df = 4 if missing(df)
append using "$path_sdid/sumAR_ADL_placebo_privatesecurity.dta"
replace df = 5 if missing(df)

* MINORITY CEOS
* Black CEO
append using "$path_sdid/minority_pooled_sumAR.dta"
replace df = 6 if missing(df)
append using "$path_sdid/sumAR_placebo_BlackCEO.dta"
replace df = 7 if missing(df)
append using "$path_sdid/sumAR_ADL_placebo_BlackCEO.dta"
replace df = 8 if missing(df)

* Asian CEO
append using "$path_sdid/AsianCEO_pooled_sumAR.dta"
replace df = 9  if missing(df)
append using "$path_sdid/sumAR_placebo_AsianCEO.dta"
replace df = 10 if missing(df)
append using "$path_sdid/sumAR_ADL_placebo_AsianCEO.dta"
replace df = 11 if missing(df)

* Hispanic CEO
append using "$path_sdid/HispCEO_pooled_sumAR.dta"
replace df = 12 if missing(df)
append using "$path_sdid/sumAR_placebo_HispanicCEO.dta"
replace df = 13 if missing(df)
append using "$path_sdid/sumAR_ADL_placebo_HispanicCEO.dta"
replace df = 14 if missing(df)

********************************************************************************
* Prep variables
********************************************************************************
keep b_sdid se_sdid df
drop if missing(b_sdid) | missing(se_sdid)
duplicates drop

gen lower = b_sdid - 1.96*se_sdid
gen upper = b_sdid + 1.96*se_sdid

* Map to 5 rows x 3 subrows
gen group = floor(df/3)          // 0=policing 1=privsec 2=Black 3=Asian 4=Hispanic
gen sub   = mod(df,3)            // 0=BLM 1=mass 2=white

gen base   = -group              // rows: 0,-1,-2,-3,-4 (top to bottom)
gen offset = .
replace offset =  0.15 if sub==0 // BLM
replace offset =  0.00 if sub==1 // Mass shooting
replace offset = -0.15 if sub==2 // White supremacy
gen y = base + offset

label define glab  0 "Policing firms" -1 "Private security" -2 "Black CEO" -3 "Asian CEO" -4 "Hispanic CEO"
label values base glab

********************************************************************************
* Labels on the Y axis (attach to y, not base)
********************************************************************************
capture label drop glab
label define glab ///
    0  "Policing firms" ///
   -1  "Private security firms" ///
   -2  "Black CEO" ///
   -3  "Asian CEO" ///
   -4  "Hispanic CEO", replace
label values y glab

********************************************************************************
* FIGURE 1: BLM + placebos (three colored subrows per row)
********************************************************************************
twoway ///
 (rcap    lower upper y if sub==0, horizontal lcolor(gs6))          || /* BLM */ ///
 (scatter y     b_sdid    if sub==0, msymbol(O)  msize(medium) mcolor(gs6)) || ///
 (rcap    lower upper y if sub==1, horizontal lcolor(navy))         || /* Mass */ ///
 (scatter y     b_sdid    if sub==1, msymbol(D)  msize(medium) mcolor(navy)) || ///
 (rcap    lower upper y if sub==2, horizontal lcolor(maroon))       || /* White */ ///
 (scatter y     b_sdid    if sub==2, msymbol(T)  msize(medium) mcolor(maroon)), ///
 legend(order(2 "$L_blm" 4 "$L_mass" 6 "$L_white") rows(1) pos(6) size(small) region(lwidth(none))) ///
 xlabel(-.1(.05).1, labsize(small)) xline(0, lpattern(dash) lcolor(gs8)) ///
 ytitle("") xtitle("Treatment effect") ///
 ylabel(0( -1 )-4, valuelabel angle(0) labsize(small)) ///
 name(fig_all, replace)

graph export "$path_figures/all_placebos_compared.pdf", replace
