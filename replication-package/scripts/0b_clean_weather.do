********************************************************************************
* Preliminary
********************************************************************************
do "scripts/config.do"

********************************************************************************		
* GDELT
********************************************************************************	
gzimport delimited using "$path_raw_exploration/MPV_GDELT_ORI_events_strict.csv.gz",clear
	gen dist_ori9=ori9_dist_gdelt_mpv
	*Keep relevant
	keep event_id ori9_gdelt year sqldate
	duplicates drop

	*Rename
	rename ori9_gdelt ori9
	drop if ori9==""
	
	*Merge county
	merge m:1 ori9 using "$path_raw_exploration/cw_ori9_county.dta"
	keep if _merge==3
	drop _merge
	
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
	drop tmp* m3
	gen mdy=mdy(month,day,year)
	format mdy %td
	keep if mdy>=mdy(5,25,2020)
	keep if mdy<=mdy(7,31,2020)
	
	*Collapse
	gen protest=1
	collapse (sum) protest,by(geoid mdy)
	destring geoid, replace
	
*Save
sort geoid mdy
save "$path_raw_exploration/gdelt_county_mdy_summer2020.dta",replace


********************************************************************************	
*Weather
********************************************************************************	
* Weather
use "$path_raw_exploration/weather.dta", clear

	* Codebook
	* https://www.ncei.noaa.gov/pub/data/ghcn/daily/readme.txt
	drop if closest_station_id==""
	
	*Modification I: Standardized the data
	rename VALUE value
	replace value=. if value==-9999
		
	replace closest_station_id=lower(closest_station_id)
	
	rename ELEMENT element
	replace element=lower(element)
	replace element="fog"      if element=="wt01"|element=="wt02"|element=="wt21"|element=="wt22"|element=="wt13"
	replace element="thunder"  if element=="wt03"
	replace element="hail"     if element=="wt04"|element=="wt05"
	replace element="rain"     if element=="wt14"|element=="wt15"|element=="wt16"|element=="wt17"
	replace element="tornado"  if element=="wt10"|element=="wt11"
	replace element="smoke"    if element=="wt08"|element=="wt07"
	
	rename DATE date
	
	*Modification II: check the unit of the values before aggregating
		*1)Convert temperature from tenths of degrees C to celsus: tavg,tmin,tmax
		replace value=value/10 if element=="tavg"|element=="tmin"|element=="tmax"
		*2)Convert precipitation from tenths of mm to mm: prcp 	
		replace value=value/10 if element=="prcp"	
		*3) No change for  snowfall and snow depth-in mm:snow,snwd 
		*4) No change for Humidity-in percent: rhav,rhmn,rhmx
		*5) Convert daily wind speed from tenths of meters per second to meter per second:awnd,wsf2 
		replace value=value/10 if element=="awnd"|element=="wdf2"|element=="wsf2"
		*6) No change fow direction of the wind - in degrees:wdf2 
		*7) Dummy variable: fog,thunder,hail,rain,tornado,smoke
		
		*Create Weather Variables for the continuous var.
		foreach v in tavg tmin tmax prcp snow snwd  rhav rhmn rhmx awnd wsf2 wdf2 fog thunder hail rain tornado smoke  {
			gen wth_`v'=value if element=="`v'"
		}
		
	*Collapse
	collapse (mean) wth_tavg wth_tmin wth_tmax wth_prcp wth_snow wth_snwd wth_rhav wth_rhmn wth_rhmx wth_awnd wth_wsf2 wth_wdf2 ///
	         (max)  wth_fog wth_thunder wth_hail wth_rain wth_tornado wth_smoke,by(closest_station_id date)
			 
	************************************************************************************	
	*Create Weather Panel for Station + Link with County + Protest + Create Instrument
	************************************************************************************
	*Roster of the Station
	egen stationid=group(closest_station_id)
	gen mdy=date
	format mdy %td

	*Put in a panel format
	tsset stationid date
	tsfill,full
	drop if closest_station_id==""

	*Clean the weather dummy, replace missing by zeros
	foreach v in fog thunder hail rain tornado smoke  {
		replace wth_`v'=0 if wth_`v'==.
	}	
	
	*Average
	replace wth_tavg=(wth_tmin+wth_tmax)/2 if wth_tavg==. & wth_tmax!=. & wth_tmin!=.  
	
	*Create Temperature Bins
	*Temperature
	foreach v in avg max min{
			* Main temperature
			gen wth_t`v'_bin1    = (wth_t`v' < 10)
			gen wth_t`v'_bin2    = (wth_t`v' >= 10  & wth_t`v' < 20)
			gen wth_t`v'_bin3    = (wth_t`v' >= 20  & wth_t`v' < 30)			
			gen wth_t`v'_bin4    = (wth_t`v' >= 30) 
			gen wth_t`v'_bin5=wth_t`v'==.	
		} 
		
	*Create Rain from Prcp 
	gen wth_prcp_rain = wth_prcp > 0
	
	*Find the County
	joinby  closest_station_id using "$path_raw_exploration/cw_county_station.dta"		
	order geoid closest_station_id date
		
	*Merge Protests
	merge m:1 geoid mdy using "$path_raw_exploration/gdelt_county_mdy_summer2020.dta"
	drop if _merge==2
	drop _merge
		
	*Protest and protest elsewhere
	replace protest=0 if protest==.
		gen blank = .
	replace blank = protest
	bys mdy geoid: egen all_event = sum(blank)
	gen event_elsewhere = (all_event > 0) 
	
	*Keep relevant year
	gen year=year(mdy)
	keep if year>=2013 & year<=2020
	keep if mdy>=mdy(5,25,2020)
	keep if mdy<=mdy(7,31,2020)
	*keep if mdy<=mdy(6,15,2020)	
	
	
	*Instrument - Interaction
	*Temperature
	foreach v in avg max min{
			gen prot_wth_t`v'_bin1    =event_elsewhere==1 & (wth_t`v' < 10)
			gen prot_wth_t`v'_bin2    =event_elsewhere==1 & (wth_t`v' >= 10  & wth_t`v' < 20)
			gen prot_wth_t`v'_bin3    =event_elsewhere==1 & (wth_t`v' >= 20  & wth_t`v' < 30)			
			gen prot_wth_t`v'_bin4    =event_elsewhere==1 & (wth_t`v' >= 30) 
			gen prot_wth_t`v'_bin5    =event_elsewhere==1 & wth_t`v'==.	
		} 	
	
	* Temperature
	foreach v in avg max min{
		gen wth_t`v'_pol2= wth_t`v'^2
		gen wth_t`v'_pol3= wth_t`v'^3		
	}		
	
	*Precipitation
		gen wth_avgprcp     =wth_prcp
		gen wth_avgprcp_pol2=wth_prcp^2
		
	*Other Weather
	foreach v in tavg tmax tmin tavg_pol2 tmax_pol2 tmin_pol2 tavg_pol3 tmax_pol3 tmin_pol3 prcp snow snwd  rhav rhmn rhmx awnd wsf2 wdf2 fog thunder hail rain tornado smoke{
		gen prot_wth_`v'=event_elsewhere * wth_`v'
	}
	
	*Collapse
	collapse  (sum) event=blank *wth_prcp *wth_snow *wth_snwd ///
	          (mean) *wth_tavg *wth_tmin *wth_tmax *wth_rhav *wth_rhmn *wth_rhmx *wth_awnd *wth_wsf2 *wth_wdf2 *_pol2 *_pol3 wth_avgprcp ///
			  (sum) *_bin1 *_bin2 *_bin3 *_bin4 *_bin5  ///
			  (sum)  wth_prcp_rain *_fog *_thunder *_hail  *_tornado *_smoke (first)closest_station_id,by(geoid year)
	
*Save
sort geoid year
save "$path_raw_exploration/weather_instrument_summer2020.dta",replace
