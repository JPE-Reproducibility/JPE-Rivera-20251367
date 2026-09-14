do "scripts/config.do"

	*Labels/Subtitles
	global N0 "Death of Trayvon Martin (C)"
	global N1 "Acquittal of George Zimmerman (C)"
	global N2 "Mistrial in the Jordan Davis Shooting (C)"	
	global N3 "Death of Michael Brown (P)"
	global N4 "Death of Tamir Rice (P)"
	global N5 "Death of Alton Sterling (P)"	
	global N6 "Death of George Floyd (P)"
	global N7 "Pooled Effects"
	
	********************************************************************************
	* Append R-results for CAR from Carhart-FF model
	********************************************************************************
	use "$path_sdid/2a_0_strong_sumAR.dta",clear
	gen df=0
	gen type="strong"
	foreach v in 1 2 3 4 5 6 {
		append using "$path_sdid/2a_`v'_strong_sumAR.dta"
		replace df=`v' if df==.
		replace type="strong" if type==""
	}
	foreach v in 0 1 2 3 4 5 6 {
		append using "$path_sdid/2a_`v'_weak_sumAR.dta"
		replace df=`v' if df==.
		replace type="weak" if type==""
	}	
	*Add pooled results
	append using "$path_sdid/2a_pooled_strong_sumAR.dta"
	replace df=7 if df==.
	replace type="strong" if type==""
	append using "$path_sdid/2a_pooled_weak_sumAR.dta"
	replace df=7 if df==.
	replace type="weak" if type==""	

	*Method
	gen method="FF4"
	
	*temporary data	
	tempfile estim_FF4
	save `estim_FF4'	
	
	********************************************************************************
	* Append R-results for CAR from CAPM
	********************************************************************************	
	use "$path_sdid/8a0_strong_sumAR.dta",clear
	gen df=0
	gen type="strong"
	foreach v in 1 2 3 4 5 6 {
		append using "$path_sdid/8a`v'_strong_sumAR.dta"
		replace df=`v' if df==.
		replace type="strong" if type==""
	}
	foreach v in 0 1 2 3 4 5 6 {
		append using "$path_sdid/8a`v'_weak_sumAR.dta"
		replace df=`v' if df==.
		replace type="weak" if type==""
	}	
	*Add pooled results
	append using "$path_sdid/8apooled_strong_sumAR.dta"
	replace df=7 if df==.
	replace type="strong" if type==""
	append using "$path_sdid/8apooled_weak_sumAR.dta"
	replace df=7 if df==.
	replace type="weak" if type==""	
	
	*Method
	gen method="CAPM"

	*temporary data	
	tempfile estim_CAPM
	save `estim_CAPM'		
	
	********************************************************************************
	* Append R-results for CAR from Regular Return
	********************************************************************************	
	use "$path_sdid/8b_0_strong_sumR.dta",clear
	gen df=0
	gen type="strong"
	foreach v in 1 2 3 4 5 6 {
		append using "$path_sdid/8b_`v'_strong_sumR.dta"
		replace df=`v' if df==.
		replace type="strong" if type==""
	}
	foreach v in 0 1 2 3 4 5 6 {
		append using "$path_sdid/8b_`v'_weak_sumR.dta"
		replace df=`v' if df==.
		replace type="weak" if type==""
	}	
	*Add pooled results
	append using "$path_sdid/8b_pooled_strong_sumR.dta"
	replace df=7 if df==.
	replace type="strong" if type==""
	append using "$path_sdid/8b_pooled_weak_sumR.dta"
	replace df=7 if df==.
	replace type="weak" if type==""	
	
	*Method
	gen method="return"

	*temporary data	
	tempfile estim_return
	save `estim_return'		
		
	
	********************************************************************************
	*2) Append and Plot Estimates for each events and model
	********************************************************************************
	 *import data
		use `estim_FF4',clear
	append using `estim_CAPM'
	append using `estim_return'	
	*reformat
	gen timeline=-df
	keep   b_sdid se_sdid type timeline method
	duplicates drop	  
	sort type timeline
	
	*Names
	gen strong =type=="strong"
	gen capm   =method=="CAPM"
	gen return =method=="return"	
	sort capm timeline
	replace timeline=timeline    if capm==0 & return==0
	replace timeline=time-.25 if capm==1 & return==0
	replace timeline=time+.25 if capm==0 & return==1
	
	*Upper/lower bounds
	gen lower=b_sdid-1.96*se_sdid
	gen upper=b_sdid+1.96*se_sdid
	
	*Plots for Strongly Connected
	twoway (scatter timeline b_sdid      if strong==1 & capm==0 & return==0,mco(midblue%70) msymbol(Oh) msize(med)) || ///
	       (scatter timeline b_sdid      if strong==1 & capm==1 & return==0,mco(blue%70) msymbol(D) msize(med)) || ///
	       (scatter timeline b_sdid      if strong==1 & capm==0 & return==1,mco(ltblue) msymbol(S) msize(med)) || ///		   
		   (rcap    lower upper timeline if strong==1 & capm==0 & return==0,horizontal lco(midblue%70)) || ///
		   (rcap    lower upper timeline if strong==1 & capm==1 & return==0,horizontal lco(blue%70) lpa(-)) || ///
		   (rcap    lower upper timeline if strong==1 & capm==0 & return==1,horizontal lco(ltblue) lpa(-)), ///
		   legend(col(1) row(1) lab(1 "Carhart Four-Factor") lab(2 "CAPM") lab(3 "RAW Return")  order(1 2 3)) ///
		   legend(ring(1) pos(6) col(3)  col(1) row(1) size(small)) legend(region(lwidth(none))) ///
		   xlabel(-.1(.05).25,labsize(small)) ///
		    xline(0,lpa(-) lcolor(gs7%50))  /// 
			xtitle(Treatment Effect) ytitle("") ///
 			ylabel(0 "Death of Trayvon Martin (C)" -1 `""Acquittal of" "George Zimmerman (C)""' -2 `""Mistrial in the" "Jordan Davis Shooting (C)""'	 ///
				   -3 "Death of Michael Brown (P)"  -4 "Death of Tamir Rice (P)"           -5 "Death of Alton Sterling (P)"  -6 "Death of George Floyd (P)" ///
				   -7 "Pooled",angle(0) labsize(small)) ///
		   title({bf:A. Strong Connection},color(black) pos(1) size(med)) ///	   
		   graphregion(color(white)) bgcolor(white) 
	graph export "$path_figures/v3_SDID_capm_ff4_return_strong.pdf",replace
			
			
	*Plots for Weakly Connected
	twoway (scatter timeline b_sdid      if strong==0 & capm==0 & return==0,mco(orange%70) msymbol(Th) msize(med)) || ///
	       (scatter timeline b_sdid      if strong==0 & capm==1 & return==0,mco(orange_red%70) msymbol(D) msize(med)) || ///
	       (scatter timeline b_sdid      if strong==0 & capm==0 & return==1,mco(red%30) msymbol(S) msize(med)) || ///		   
		   (rcap    lower upper timeline if strong==0 & capm==0 & return==0,horizontal lco(orange%70)) || ///
		   (rcap    lower upper timeline if strong==0 & capm==1 & return==0,horizontal lco(orange_red%70) lpa(-)) || ///
		   (rcap    lower upper timeline if strong==0 & capm==0 & return==1,horizontal lco(red%30) lpa(-)), ///
		   legend(col(1) row(1) lab(1 "Carhart Four-Factor") lab(2 "CAPM") lab(3 "RAW Return")  order(1 2 3)) ///
		   legend(ring(1) pos(6) col(3)  col(1) row(1) size(small)) legend(region(lwidth(none))) ///
		   xlabel(-.1(.05).25,labsize(small)) ///
		    xline(0,lpa(-) lcolor(gs7%50))  /// 
			xtitle(Treatment Effect) ytitle("") ///
 			ylabel(0 "Death of Trayvon Martin (C)" -1 `""Acquittal of" "George Zimmerman (C)""' -2 `""Mistrial in the" "Jordan Davis Shooting (C)""'	 ///
				   -3 "Death of Michael Brown (P)"  -4 "Death of Tamir Rice (P)"           -5 "Death of Alton Sterling (P)"  -6 "Death of George Floyd (P)" ///
				   -7 "Pooled",angle(0) labsize(small)) ///
		   title({bf:B. Weak Connection},color(black) pos(1) size(med)) ///	   
		   graphregion(color(white)) bgcolor(white) 
	graph export "$path_figures/v3_SDID_capm_ff4_return_weak.pdf",replace
	

	
	
