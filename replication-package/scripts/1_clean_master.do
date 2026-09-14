********************************************************************************
* Preliminary
********************************************************************************
do "scripts/config.do"

****************************
*0) Preliminary
****************************
gzimport delimited using "$path_raw_exploration/census_state.csv.gz", varnames(1) clear
	*temporary data	
	sort statename
	tempfile census
save `census'

****************************
*1) Master
****************************
use "$path_raw_exploration/lemas_2020.dta", clear
	
	*Merge county
	sort ori9 year
	merge m:1 ori9  using "$path_raw_exploration/cw_ori9_county.dta"
	keep if _merge==3
	drop _merge
	
	*Merge  weather
	sort ori9 year
	merge m:1 ori9  using "$path_raw_exploration/final_cw_ori9_stations.dta"
	keep if _merge==3
	drop _merge	
	
	*Keep counties in 2020
	keep if year==2020
	
	*Merge Weather
	destring geoid,replace force
	drop if geoid==.
	sort geoid year
	merge m:1 geoid year using "$path_raw_exploration/weather_instrument_summer2020.dta"
	keep if _merge==3
	drop _merge
	
	*Merge Covariates
	sort geoid 
	merge m:1 geoid using  "$path_raw_exploration/county_covariates2020.dta"
	keep if _merge==3 
	drop _merge	
	
	*Crime
	sort ori9
	merge 1:1 ori9 using "$path_raw_exploration/crime_2019.dta"	
	keep if _merge==3 
	drop _merge	
	
	*Leoka
	sort ori9
	merge 1:1 ori9 using "$path_raw_exploration/leoka_2019.dta"	
	keep if _merge==3 
	drop _merge		
	
	*MPV Killing
	gen i=1
	merge m:1 i using "$path_raw_exploration/mpv_xy_summer2020.dta"	
	keep if _merge==3 
	drop _merge	i

	*Black MPV Killing
	gen b=1
	merge m:1 b using "$path_raw_exploration/black_mpv_xy_summer2020.dta"	
	keep if _merge==3 
	drop _merge	b
	
	*Cummulative No. of Protest
	merge m:1 ori9 using "$path_raw_exploration/gdelt_ori9_2013_2019.dta"
	drop if _merge==2
	drop _merge	
	replace cumprotest=0 if cumprotest==.
	
	*Per Capita
	foreach v in murder property violent{
		gen pc_`v'=cr_`v'*10000/population
	}
	gen pc_police=tot_police*10000/population
	
	foreach v in bwc car fixed mobile weap drone{
			gen pc_vid_`v'=eq_vid_`v'*10000/population
	}	

	*Covariates
	gen sh_black=black/total
	gen sh_hispanic=hispanic/total
	gen sh_male_15_17=male_15_17/total	
	gen income=median_income/1000 
	su sh_black,detail
	gen high_black=sh_black>=0.25
	
	*Standardized Protest
	egen stdevent=std(event)
	
	*Drop if missing information
	drop if wth_rhav==.
	*cluster
	egen grp=group(ori9) 
	
	*Distance to mpls
	geodist latitude longitude mpls_latitude mpls_longitude , generate(dist_mpls) 
	gen ldist_mpls=log(dist_mpls)
	
	*Distance to MPV
	foreach v of numlist 1(1)198{
	  geodist latitude longitude mpv_lat`v' mpv_lon`v' , generate(raw_dist_mpv`v') 
	}
	 egen dist_mpv=rowmin(raw_dist_mpv*)
	gen ldist_mpv=log(dist_mpv)
	drop raw_*
	
	*Distance to Black MPV 
	foreach v of numlist 1(1)49{
	  geodist latitude longitude black_mpv_lat`v' black_mpv_lon`v' , generate(raw_black_dist_mpv`v') 
	}
	 egen dist_black_mpv=rowmin(raw_black_dist_mpv*)
	gen ldist_black_mpv=log(dist_black_mpv)
	drop raw_*
	
	*Label
	label variable stdevent "Protest (Std. Dev.)"
	
	
* Save
sort ori9 year
save "$path_raw_exploration/final_lemas_2020.dta",replace
