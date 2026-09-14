do "scripts/config.do"

***************************************
* 1) Import and Prepare data
***************************************
use "$path_raw_exploration/final_lemas_2020.dta",clear

	*Globals 
	global E  "stdevent"		
	global Zmain "wth_tavg wth_tavg_pol2 wth_rhav wth_avgprcp wth_tornado wth_wsf2 "
	global X  "police_dpt income sh_black sh_male_15_17 pc_police pc_violent pc_property ldist_mpv cumprotest"	

	*Folder for FAS
	local origdir = c(pwd)
	cd "$path_raw_exploration/MastenPoirier_2020_FAS_replication_files"
	adopath + "code"

	*Call .ado
	*do "exploration_Summer2020/MastenPoirier_2020_FAS_replication_files/code/ivfas.ado"

	*Prepare to save coefficients
	gen t=_n
		gen outcome=""
	replace outcome="any_vid_bwc"    if t==1
	replace outcome="any_tech_gun"   if t==2 
	replace outcome="any_vid_fixed"  if t==3 
	replace outcome="any_vid_mobile" if t==4 
	replace outcome="any_vid_drone"  if t==5 
	replace outcome="any_vid_car"    if t==6 	
	replace outcome="any_vid_weap"   if t==7
	gen fas_lb=.
	gen fas_ub=.
	gen iv_b  =.
	gen iv_se  =.
	gen iv_lb  =.
	gen iv_ub  =.	
	gen ivlasso_b  =.
	gen ivlasso_se  =.	
	gen ivlasso_lb  =.	
	gen ivlasso_ub  =.		
	gen ols_b  =.
	gen ols_se  =.
	gen ols_lb  =.	
	gen ols_ub  =.
	
***************************************
* 2) Estimation
***************************************	
	*IV and FAS
	foreach v in any_vid_bwc any_tech_gun any_vid_fixed any_vid_mobile any_vid_drone any_vid_car any_vid_weap {
		* OLS
		reg `v' $E  $X  ,cluster(ori9)
		replace ols_b =_b[$E] if outcome=="`v'" 
		replace ols_se=_se[$E] if outcome=="`v'" 
		replace ols_lb=_b[$E]-1.96*_se[$E] if outcome=="`v'" 	
		replace ols_ub =_b[$E]+1.96*_se[$E] if outcome=="`v'" 	
		
		* IV
		quietly : ivreg2 `v' ($E = $Zmain) $X  , first cluster(ori9)
		replace iv_b =_b[$E] if outcome=="`v'" 
		replace iv_se=_se[$E] if outcome=="`v'" 		
		replace iv_lb=_b[$E]-1.96*_se[$E] if outcome=="`v'" 	
		replace iv_ub =_b[$E]+1.96*_se[$E] if outcome=="`v'" 	
		
		* IV Lasso
		quietly : ivlasso `v' ($E = $Zmain) $X  , first cluster(ori9)
		replace ivlasso_b =_b[$E] if outcome=="`v'" 
		replace ivlasso_se=_se[$E] if outcome=="`v'" 
		replace ivlasso_lb=_b[$E]-1.96*_se[$E] if outcome=="`v'" 	
		replace ivlasso_ub =_b[$E]+1.96*_se[$E] if outcome=="`v'" 			
		
		*FAS
		ivfas `v' ($E = $Zmain) $X  , first cluster(ori9)
		replace fas_lb=e(fas)[1, 1] if outcome=="`v'" 
		replace fas_ub=e(fas)[1, 2] if outcome=="`v'" 		
	}

	cd "`origdir'"

**************************************************************
* 3) Plot
**************************************************************
keep t outcome fas_* iv_* ols_* ivlasso_*
keep if fas_lb!=.
replace t=-t
gen t1=t-0.2
gen t2=t+0.2

	twoway (scatter t ols_b,msym(O) msize(vlarge) color(orange%60)) || ///
	       (scatter t iv_b,msym(T) msize(vlarge)  color(eltblue%60)) || ///
	       (scatter t ivlasso_b,msym(Sh) msize(vlarge)  color(pink%60)) || ///		   
           (rcap fas_lb fas_ub t ,msize(large)  color(purple) horizontal), ///
	        legend(order(1 "OLS" 2 "2SLS" 3 "IV-Lasso" 4 "FAS") ///
		    row(4) col(1)  ring(0) pos(3) region(fcolor(none))) ///
			xline(0,lpa(-) lco(gs10)) ///
			ytitle("") ///
			ylabel(-1 "Body Worn Camera" ///
				   -2 "Gunshot Detection Tech." ///
				   -3 "Video: Public Areas" ///
				   -4 "Video: Mobile" ///
				   -5 "Video: Drones" ///
				   -6 "Video: Patrol Cars" ///				   
				   -7 "Video: Weapons")
	* Save
	graph export "$path_exploration_results/fas_IV.pdf",replace					   
			   
			   
	twoway (scatter t ols_b,msym(O) msize(vlarge) color(orange%60)) || ///
	       (scatter t1 iv_b,msym(T) msize(vlarge)  color(navy%60)) || ///
	       (scatter t2 ivlasso_b,msym(S) msize(vlarge)  color(pink%30)) || ///
		   (rcap ols_lb ols_ub t ,msize(large)  color(orange) horizontal) || ///
		   (rcap iv_lb iv_ub t1 ,msize(large)  color(navy) horizontal) || ///
		   (rcap ivlasso_lb ivlasso_ub t2 ,msize(large)  color(pink) horizontal), ///
	        legend(order(1 "OLS" 2 "2SLS" 3 "IV-Lasso" ) ///
		    row(1) col(4)  ring(1) pos(6) region(fcolor(none))) ///
			xline(0,lpa(-) lco(gs10)) ///
			ytitle("") ///
			ylabel(-1 "Body Worn Camera" ///
				   -2 "Gunshot Detection Tech." ///
				   -3 "Video: Public Areas" ///
				   -4 "Video: Mobile" ///
				   -5 "Video: Drones" ///
				   -6 "Video: Patrol Cars" ///				   
				   -7 "Video: Weapons")
	* Save
	graph export "$path_exploration_results/plot_IV.pdf",replace		   
   
			   
			   
			   
