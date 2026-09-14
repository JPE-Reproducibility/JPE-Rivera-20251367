********************************************************************************
* Preliminary
********************************************************************************
do "scripts/config.do"


****************************
*1) Crime data: 2019
****************************
use "$path_raw_exploration/offenses_known_monthly_2019.dta", clear

	*Keep relevant
	drop if ori9==""
	drop if year==.
	keep ori9 year actual_murder actual_index_property actual_index_violent population agency_type month state_abb latitude longitude
	
	*Some cleaning
	rename actual_murder         cr_murder
	rename actual_index_property cr_property
	rename actual_index_violent  cr_violent	
	foreach v in murder property violent{
		replace cr_`v'=. if cr_`v'<0
	}
	
	*Drop Missing
	drop if population==0
	drop if population==.
	foreach v in murder property violent{
		drop if cr_`v'==. 
	}
	
	*Collapse
	collapse (sum) cr_* (first)population state_abb latitude longitude,by(ori9 year)
	destring latitude longitude,replace
	su latitude if ori9=="MN0271100"
	gen mpls_latitude=`r(mean)'
	su longitude if ori9=="MN0271100"
	gen mpls_longitude=`r(mean)'	
	
*Save
sort ori9 year
save "$path_raw_exploration/crime_2019.dta",replace

****************************
*2) Leoka data: 2019
****************************
use "$path_raw_exploration/leoka_yearly_1960_2022.dta",clear
	*Keep relevant year
	keep if year==2019

	*keep relevant
	keep ori9 year total_employees_officers total_employees_total total_employees_civilians
	duplicates drop
	
	*Rename
	rename total_employees_officers   tot_police
	rename total_employees_total      tot_employees
	rename total_employees_civilians  tot_civilians
	
	*Drop irrelevant
	drop if ori9==""
	drop if tot_employees==0
	drop if tot_civilians==.
	drop if tot_police==0
	drop if tot_employees!=tot_civilians+tot_police
	
*Save
sort ori9 year
save "$path_raw_exploration/leoka_2019.dta",replace

****************************
*3) Lemas data: 2020
****************************
use "$path_raw_exploration/38651-0001-Data.dta", clear

	* Clean
	foreach var of varlist * {
		rename `var' `=strlower("`var'")'
	}
	gen year=2020

	*Police Department
	gen police_dpt=agencysamptype>1
	
	*Keep relevant
	keep ori9 year eq_vid* tech_typ_* pol_homeless police_dpt pol_mentill pol_bwc pol_compl pol_compl pol_juv pol_lesslethal pol_domdisp pol_deadforc pol_conduct opbudget_2019 opbudget
	drop if ori9=="-9"
	drop if ori9==""
	drop if ori9=="-1"
	
	* Outcomes: Videos + technology
	foreach v in gunshot facerec rms cad infr lpr{
			gen any_tech_`v'=tech_typ_`v'==1
			replace tech_typ_`v'=. if tech_typ_`v'<0
	}
	foreach v in bwc car fixed mobile weap drone{
			gen any_vid_`v'=eq_vid_`v'>0
			replace eq_vid_`v'=. if eq_vid_`v'<0
	}	
	
	* Outcomes: Policy
	foreach v in conduct deadforc lesslethal ///
				domdisp homeless juv bwc mentill compl{
		    gen any_`v'=pol_`v'==1
	}

* Save
sort ori9 year
save "$path_raw_exploration/lemas_2020.dta",replace

****************************
*4) MPV data
****************************
*"$path_raw_exploration/MPVDatasetDownload.xlsx"
import excel "$path_raw_exploration/MPVDatasetDownload_feb2024.xlsx", sheet("2013-2024 Police Killings") firstrow case(lower) clear

	*Cleaning
	gen year =year(dateofincidentmonthdayyear)
	gen month=month(dateofincidentmonthdayyear)	
	gen day  =day(dateofincidentmonthdayyear)	
	gen mdy=mdy(month,day,year)
	keep if mdy>=mdy(5,25,2020)
	keep if mdy<=mdy(7,31,2020)
	
	*Keep relevant
	keep latitude longitude
	duplicates drop
	drop if latitude==.|longitude==.
	rename latitude mpv_lat
	rename longitude mpv_lon
	
	*Reshape
	gen i=1
	gen j=_n
	reshape wide mpv_lat mpv_lon,i(i) j(j)
	
* Save
sort i
save "$path_raw_exploration/mpv_xy_summer2020.dta",replace

****************************
*4) BLACK MPV data
****************************
*"$path_raw_exploration/MPVDatasetDownload.xlsx"
import excel "$path_raw_exploration/MPVDatasetDownload_feb2024.xlsx", sheet("2013-2024 Police Killings") firstrow case(lower) clear

	*Cleaning
	gen year =year(dateofincidentmonthdayyear)
	gen month=month(dateofincidentmonthdayyear)	
	gen day  =day(dateofincidentmonthdayyear)	
	gen mdy=mdy(month,day,year)
	keep if mdy>=mdy(5,25,2020)
	keep if mdy<=mdy(7,31,2020)
	
	*Race/Ethnicity
	replace victimsrace=lower(victimsrace)
	gen r_black    =regexm(victimsrace,"black")	
	keep if r_black==1
	
	*Keep relevant
	keep latitude longitude
	duplicates drop
	drop if latitude==.|longitude==.
	rename latitude black_mpv_lat
	rename longitude black_mpv_lon
	
	*Reshape
	gen b=1
	gen j=_n
	reshape wide black_mpv_lat black_mpv_lon,i(b) j(j)
	
* Save
sort b
save "$path_raw_exploration/black_mpv_xy_summer2020.dta",replace


********************************************************************************		
* 5) GDELT
********************************************************************************	
gzimport delimited using "$path_raw_exploration/MPV_GDELT_ORI_events_strict.csv.gz",clear
	gen dist_ori9=ori9_dist_gdelt_mpv
	*Keep relevant
	keep event_id ori9_gdelt year sqldate
	duplicates drop

	*Rename
	rename ori9_gdelt ori9
	drop if ori9==""

	*Dates
	drop year
	tostring sqldate, gen(tmp)
	gen tmp1 = substr(tmp,1,4)
	gen tmp3 = substr(tmp,7,8)
	gen m3= substr(tmp,4,5)
	gen tmp2= substr(m3,2,2)
	destring tmp1,gen(year)
	destring tmp2,gen(month)
	destring tmp3,gen(day)
	drop if year<2020
	*Collapse
	gen protest=1
	collapse (sum) cumprotest2019=protest,by(ori9)
	
*Save
sort ori9
save "$path_raw_exploration/gdelt_ori9_2013_2019.dta",replace
