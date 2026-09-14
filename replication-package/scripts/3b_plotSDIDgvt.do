do "scripts/config.do"

	*Labels/Subtitles
	global N0 "Death of Trayvon Martin (C)"
	global N1 "Acquittal of George Zimmerman (C)"
	global N2 "Mistrial of Jordan Davis (C)"	
	global N3 "Death of Michael Brown (P)"
	global N4 "Death of Tamir Rice (P)"
	global N5 "Death of Alton Sterling (P)"	
	global N6 "Death of George Floyd (P)"
	global N7 "Pooled Effects"
	
	********************************************************************************
	* Append R-results for CAR
	********************************************************************************
	foreach v in 0 1 2 3 4 5 6  {
		use "$path_sdid/gvt_res_`v'.dta",clear
		gen n=_n
	tempfile rslt_`v'
	duplicates drop
	save `rslt_`v''
	}
	
	
	use `rslt_0',clear
	gen df=0
		foreach v in 1 2 3 4 5 6 {
		append using `rslt_`v''
		replace df=`v' if df==.
	}

	*Add pooled results
	append using "$path_sdid/gvt_dfpooled.dta"
	replace df=7 if df==.
	append using "$path_sdid/gvt_dfpooled.dta"
	replace df=7 if df==.
	replace n=4 if df==7 & company_name=="Strong Connection-High Exposure"
	replace n=3 if df==7 & company_name=="Strong Connection-Low Exposure"
	replace n=2 if df==7 & company_name=="Weak Connection-High Exposure"
	replace n=1 if df==7 & company_name=="Weak Connection-Low Exposure"
	
	********************************************************************************
	*2) Plot Estimates for each events
	********************************************************************************
	gen timeline=-df
	gen type    =n
	keep   b_sdid se_sdid type timeline n df company_name
	duplicates drop	  
	sort type timeline
	
	*Names
	replace timeline=timeline-.2 if type==1|type==2
	replace timeline=timeline+.2 if type==3|type==4

		gen timeline_alt=-df
	replace timeline_alt=timeline_alt-.2 if type==1|type==3
	replace timeline_alt=timeline_alt+.2 if type==2|type==4	
	
	*Upper/lower bounds
	gen lower=b_sdid-1.96*se_sdid
	gen upper=b_sdid+1.96*se_sdid
	
	
	*Plots	
	twoway (scatter timeline_alt b_sdid      if company_name=="Strong Connection-High Exposure",mco(dknavy%90) msymbol(O) msize(large)) || ///
	       (scatter timeline_alt b_sdid      if company_name=="Strong Connection-Low Exposure",mco(dknavy%90) msymbol(Dh) msize(large)) || ///
		   (rcap    lower upper timeline_alt if company_name=="Strong Connection-High Exposure",horizontal lco(dknavy%90) lpa(-)) || ///
		   (rcap    lower upper timeline_alt if company_name=="Strong Connection-Low Exposure",horizontal lco(dknavy%90)), ///
		   legend(pos(6) ring(1) col(1) row(1) lab(1 "Share of Public Sector Client > 50%") lab(2 "Share of Public Sector Client {&le} 50%") order(1 2)) ///
		   legend(size(small)) legend(region(lwidth(none))) ///
		   xlabel(-.15(.05).35,labsize(medsmall)) ///
		    xline(0,lpa(-) lcolor(gs7%50))  /// 
			xtitle(Treatment Effect) ytitle("") ///
			ylabel(0 "Death of Trayvon Martin (C)" -1 `""Acquittal of" "George Zimmerman (C)""' -2 `""Mistrial in the" "Jordan Davis Shooting (C)""'	 ///
				   -3 "Death of Michael Brown (P)"  -4 "Death of Tamir Rice (P)"           -5 "Death of Alton Sterling (P)"  -6 "Death of George Floyd (P)" -7 "Pooled",angle(0) labsize(small)) ///
		   title({bf:A. Strong Connection},color(black) pos(1) size(med)) ///
		   graphregion(color(white)) bgcolor(white) 
	graph export "$path_figures/v3_strong_gvt_event_21days_ByEvents.pdf",replace
	
	*Plots	
	twoway (scatter timeline_alt b_sdid      if company_name=="Weak Connection-High Exposure",mco(maroon%90) msymbol(T) msize(large)) || ///
	       (scatter timeline_alt b_sdid      if company_name=="Weak Connection-Low Exposure",mco(maroon%90) msymbol(Sh) msize(large)) || ///
		   (rcap    lower upper timeline_alt if company_name=="Weak Connection-High Exposure",horizontal lco(maroon%90) lpa(-)) || ///
		   (rcap    lower upper timeline_alt if company_name=="Weak Connection-Low Exposure",horizontal lco(maroon%90)), ///
		   legend(pos(6) ring(1) col(1) row(1) lab(1 "Share of Public Sector Client > 50%") lab(2 "Share of Public Sector Client {&le} 50%") order(1 2)) ///
		   legend(size(small)) legend(region(lwidth(none))) ///
		   xlabel(-.15(.05).35,labsize(medsmall)) ///
		    xline(0,lpa(-) lcolor(gs7%50))  /// 
			xtitle(Treatment Effect) ytitle("") ///
			ylabel(0 "Death of Trayvon Martin (C)" -1 `""Acquittal of" "George Zimmerman (C)""' -2 `""Mistrial in the" "Jordan Davis Shooting (C)""'	 ///
				   -3 "Death of Michael Brown (P)"  -4 "Death of Tamir Rice (P)"           -5 "Death of Alton Sterling (P)"  -6 "Death of George Floyd (P)" -7 "Pooled",angle(0) labsize(small)) ///
		   title({bf:B. Weak Connection},color(black) pos(1) size(med)) ///
		   graphregion(color(white)) bgcolor(white) 
	graph export "$path_figures/v3_weak_gvt_event_21days_ByEvents.pdf",replace
	
	
