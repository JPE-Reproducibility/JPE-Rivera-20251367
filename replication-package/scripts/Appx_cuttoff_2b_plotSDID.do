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
	* Append R-results for different cutoff: p50
	********************************************************************************
	use "$path_sdid/Appx_p50_2a_0_strong_sumAR.dta",clear
	gen df=0
	gen type="strong"
	foreach v in 1 2 3 4 5 6 {
		append using "$path_sdid/Appx_p50_2a_`v'_strong_sumAR.dta"
		replace df=`v' if df==.
		replace type="strong" if type==""
	}
	foreach v in 0 1 2 3 4 5 6 {
		append using "$path_sdid/Appx_p50_2a_`v'_weak_sumAR.dta"
		replace df=`v' if df==.
		replace type="weak" if type==""
	}
	*Add pooled results
	append using "$path_sdid/Appx_p50_2a_pooled_strong_sumAR.dta"
	replace df=7 if df==.
	replace type="strong" if type==""
	append using "$path_sdid/Appx_p50_2a_pooled_weak_sumAR.dta"
	replace df=7 if df==.
	replace type="weak" if type==""	

	
	*Method
	gen method="p50"
	
	*temporary data	
	tempfile estim_p50
	save `estim_p50'		
	
	********************************************************************************
	* Append R-results for different cutoff: p25
	********************************************************************************
	use "$path_sdid/Appx_p25_2a_0_strong_sumAR.dta",clear
	gen df=0
	gen type="strong"
	foreach v in 1 2 3 4 5 6 {
		append using "$path_sdid/Appx_p25_2a_`v'_strong_sumAR.dta"
		replace df=`v' if df==.
		replace type="strong" if type==""
	}
	foreach v in 0 1 2 3 4 5 6 {
		append using "$path_sdid/Appx_p25_2a_`v'_weak_sumAR.dta"
		replace df=`v' if df==.
		replace type="weak" if type==""
	}
	*Add pooled results
	append using "$path_sdid/Appx_p25_2a_pooled_strong_sumAR.dta"
	replace df=7 if df==.
	replace type="strong" if type==""
	append using "$path_sdid/Appx_p25_2a_pooled_weak_sumAR.dta"
	replace df=7 if df==.
	replace type="weak" if type==""
	
	*Method
	gen method="p25"
	
	*temporary data	
	tempfile estim_p25
	save `estim_p25'		
	
	********************************************************************************
	*2) Append and Plot Estimates for each events and model
	********************************************************************************
	 *import data
		use `estim_p25',clear
	append using `estim_p50'
	append using `estim_FF4'	
	*reformat
	gen timeline=-df
	keep   b_sdid se_sdid type timeline method
	duplicates drop	  
	sort type timeline	

	*Names
	gen strong =type=="strong"
	gen p25   =method=="p25"
	gen p50    =method=="p50"	
	sort p25 timeline
	replace timeline=time-.25 if p25==0 & p50==0	
	replace timeline=timeline if p25==0 & p50==1
	replace timeline=time+.25 if p25==1 & p50==0
	
	*Upper/lower bounds
	gen lower=b_sdid-1.96*se_sdid
	gen upper=b_sdid+1.96*se_sdid	
	
	*Plots for Strongly Connected
	twoway (scatter timeline b_sdid      if strong==1 & p50==0 & p25==0,mco(green) msymbol(O) msize(medlarge)) || ///
	       (scatter timeline b_sdid      if strong==1 & p50==1 & p25==0,mco(blue%70) msymbol(D) msize(med)) || ///
	       (scatter timeline b_sdid      if strong==1 & p50==0 & p25==1,mco(ltblue) msymbol(S) msize(med)) || ///		   
		   (rcap    lower upper timeline if strong==1 & p50==0 & p25==0,horizontal lco(green)) || ///
		   (rcap    lower upper timeline if strong==1 & p50==1 & p25==0,horizontal lco(blue%70) lpa(-)) || ///
		   (rcap    lower upper timeline if strong==1 & p50==0 & p25==1,horizontal lco(ltblue) lpa(-)), ///
		   legend(ring(0) pos(1) col(1) row(3)  lab(1 "Main Specification") lab(2 "Cutoff at p50") lab(3 "Cutoff at p25")  order(1 2 3)) ///
		   legend(size(small)) legend(region(lwidth(none))) ///
		   xlabel(-.1(.05).25,labsize(small)) ///
		    xline(0,lpa(-) lcolor(gs7%50))  /// 
			xtitle(Treatment Effect) ytitle("") ///
 			ylabel(0 "Death of Trayvon Martin (C)" -1 `""Acquittal of" "George Zimmerman (C)""' -2 `""Mistrial in the" "Jordan Davis Shooting (C)""'	 ///
				   -3 "Death of Michael Brown (P)"  -4 "Death of Tamir Rice (P)"           -5 "Death of Alton Sterling (P)"  -6 "Death of George Floyd (P)" ///
				   -7 "Pooled",angle(0) labsize(small)) ///
		   title({bf:B. Strong Connection},color(black) pos(1) size(med)) ///	   
		   graphregion(color(white)) bgcolor(white) 
	graph export "$path_figures/v3_SDID_cutoff_return_strong.pdf",replace
	
	
	
	*Plots for Weakly Connected
	twoway (scatter timeline b_sdid      if strong==0 & p50==0 & p25==0,mco(green) msymbol(T) msize(medl)) || ///
	       (scatter timeline b_sdid      if strong==0 & p50==1 & p25==0,mco(orange_red%70) msymbol(D) msize(med)) || ///
	       (scatter timeline b_sdid      if strong==0 & p50==0 & p25==1,mco(red%30) msymbol(S) msize(med)) || ///		   
		   (rcap    lower upper timeline if strong==0 & p50==0 & p25==0,horizontal lco(green)) || ///
		   (rcap    lower upper timeline if strong==0 & p50==1 & p25==0,horizontal lco(orange_red%70) lpa(-)) || ///
		   (rcap    lower upper timeline if strong==0 & p50==0 & p25==1,horizontal lco(red%30) lpa(-)), ///
		   legend(ring(0) pos(1) col(1) row(3) lab(1 "Main Specification") lab(2 "Cutoff at p50") lab(3 "Cutoff at p25")  order(1 2 3)) ///
		   legend(size(small)) legend(region(lwidth(none))) ///
		   xlabel(-.1(.05).25,labsize(small)) ///
		    xline(0,lpa(-) lcolor(gs7%50))  /// 
			xtitle(Treatment Effect) ytitle("") ///
 			ylabel(0 "Death of Trayvon Martin (C)" -1 `""Acquittal of" "George Zimmerman (C)""' -2 `""Mistrial in the" "Jordan Davis Shooting (C)""'	 ///
				   -3 "Death of Michael Brown (P)"  -4 "Death of Tamir Rice (P)"           -5 "Death of Alton Sterling (P)"  -6 "Death of George Floyd (P)" ///
				   -7 "Pooled",angle(0) labsize(small)) ///
		   title({bf:C. Weak Connection},color(black) pos(1) size(med)) ///	   
		   graphregion(color(white)) bgcolor(white) 
		graph export "$path_figures/v3_SDID_cutoff_return_weak.pdf",replace
	
********************************************************************************
*1) Cutoff
********************************************************************************
use "$path_cleaned/returns_moredays.dta",clear
	keep gvkey conm avgexpo_policing Et group* PD
	keep if Et==-1
	duplicates drop
	
	*Prepare data
	keep if group>1
	cumul avgexpo_policing, gen(cdf_police)
	sort cdf_police
	
	*Plot CDF
	twoway (line cdf_police avgexpo_policing,lpa(-) lco(blue) lwidth(med)) || ///
	       (hist avgexpo_policing if group==2,freq bin(100) yaxis(2) color(orange%30)) || ///
		   (hist avgexpo_policing if group==3,freq bin(100) lcolor(gs10) lwidth(thin) yaxis(2) color(midblue%30)), ///
		   graphregion(color(white)) bgcolor(white) ///
		   ytitle("CDF",axis(1)) ytitle("Frequency",axis(2) orientation(rvertical)) ///
		   ylabel(0(.25)1) /// 
		   ylabel(,axis(2) angle(270)) ///
		   xtitle("Exposure to Policing") ///
		   title({bf:A. Distribution of Exposure to Policing},color(black) pos(1) size(med)) ///	 		   
		   legend(ring(1) pos(1) col(1) row(3)  size(small)) legend(region(lwidth(none))) ///
		   legend(row(1) col(1) lab(1 "CDF") lab(2 "Weak Connection") lab(3 "Strong Connection"))
	 graph export "$path_figures/connected_cutoff_appx.pdf",replace
