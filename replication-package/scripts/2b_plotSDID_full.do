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
	* Append R-results for CAR
	********************************************************************************
	* Black CEOs
	use "$path_sdid/minority_0_sumAR.dta", clear
	gen df=0
	gen type="black"
	foreach v in 1 2 3 4 5 6 {
		append using "$path_sdid/minority_`v'_sumAR.dta"
		replace df=`v' if df==.
		replace type="black" if type==""
	}
	
	*Hispanic CEOs
	foreach v in 0 1 2 3 4 5 6 {
		append using "$path_sdid/HispCEO_`v'_sumAR.dta"
		replace df=`v' if df==.
		replace type="hispanic" if type==""
	}
	
	*Asian CEOs
	foreach v in 0 1 2 3 4 5 6 {
		append using "$path_sdid/AsianCEO_`v'_sumAR.dta"
		replace df=`v' if df==.
		replace type="asian" if type==""
	}	

	*Add pooled results
	append using "$path_sdid/minority_pooled_sumAR.dta"
	replace df=7 if df==.
	replace type="black" if type==""
	append using  "$path_sdid/HispCEO_pooled_sumAR.dta"
	replace df=7 if df==.
	replace type="hispanic" if type==""		
	append using  "$path_sdid/AsianCEO_pooled_sumAR.dta"
	replace df=7 if df==.
	replace type="asian" if type==""			
	
	
	********************************************************************************
	* 1b) Pooled Effects
	********************************************************************************
	foreach v in 0 1 2 3 4 5 6 7{
			*Collect mean 
			su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
			global mdv =trim("`: display %10.3f `r(mean)''")
			
			*Collect the effect
			su b_sdid if  type=="asian"  & df==`v'
			global bSDIDasian =trim("`: display %10.3f `r(mean)''")	
			su se_sdid if  type=="asian" & df==`v'
			global seSDIDasian =trim("`: display %10.3f `r(mean)''")		
			su b_sdid if  type=="black"  & df==`v'
			global bSDIDblack =trim("`: display %10.3f `r(mean)''")	
			su se_sdid if type=="black"  & df==`v'
			global seSDIDblack =trim("`: display %10.3f `r(mean)''")		
			su b_sdid if  type=="hispanic"  & df==`v'
			global bSDIDhispanic =trim("`: display %10.3f `r(mean)''")	
			su se_sdid if type=="hispanic"  & df==`v'
			global seSDIDhispanic =trim("`: display %10.3f `r(mean)''")	
			*Plot
			twoway (connected Y_sdid x_sdid if df==`v' & type_sdid=="treated"           & type=="asian",lco(maroon%70)  mco(maroon%70) lwidth(med)  lpa(solid) msymbol(o) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="asian",lco(maroon%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="black",lco(black%70)     mco(black%70) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="black",lco(black%70)     lwidth(med)   msize(med) lpa(-.) msymbol(x)) ||  ///
				   (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="hispanic",lco(green%70)     mco(green%70) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="hispanic",lco(green%70)     lwidth(med) mco(green)  msize(med) lpa(-.) msymbol(x)), ///
					title({bf:${N`v'}},color(black) pos(1) size(med)) ///
				   ylabel(-0.09(.09).30,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs7) lwidth(med) lstyle(foreground)) ///
				   legend(size(small)) legend(region(lwidth(none))) ///
					legend(ring(1) pos(6) col(3)  col(1) row(1) lab(1 "Asian") lab(2 "SDID{sub:Asian}") lab(3 "Black") lab(4 "SDID{sub:Black}") lab(5 "Hispanic") lab(6 "SDID{sub:Hispanic}")  order(1 2 3 4 5 6))  ///
					subtitle("sdid{sub:asian} = $bSDIDasian (s.e.=$seSDIDasian)" "sdid{sub:black} = $bSDIDblack (s.e.=$seSDIDblack)" "sdid{sub:hispanic} = $bSDIDhispanic (s.e.=$seSDIDhispanic)" , ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/minority/SDID_minority_event`v'_21days.pdf",replace

	}
	

	********************************************************************************
	*2) Plot Estimates for each events
	********************************************************************************
	gen timeline=-df
	keep   b_sdid se_sdid type timeline
	duplicates drop	  
	sort type timeline
	
	*Names
	gen asian   =type=="asian"
	gen black   =type=="black"
	gen hispanic=type=="hispanic"	
	sort type timeline
	replace timeline=time-.2 if asian ==1
	replace timeline=time    if black ==1	
	replace timeline=time+.2 if hispanic ==1
	
	*Upper/lower bounds
	gen lower=b_sdid-1.96*se_sdid
	gen upper=b_sdid+1.96*se_sdid
	
	*Plots	
	twoway (scatter timeline b_sdid      if asian ==1,mco(maroon%70) msymbol(T) msize(medlarge)) || ///
	       (scatter timeline b_sdid      if black ==1,mco(black%70) msymbol(S) msize(medlarge)) || ///
	       (scatter timeline b_sdid      if hispanic==1,mco(green%70) msymbol(O) msize(medlarge)) || ///
		   (rcap    lower upper timeline if asian   ==1,horizontal lco(maroon%70) lpa(-)) || ///		   
		   (rcap    lower upper timeline if black   ==1,horizontal lco(black%70) lpa(-)) || ///
		   (rcap    lower upper timeline if hispanic==1,horizontal lco(green%70)), ///
		   legend(ring(1) pos(6) col(3) row(1) lab(1 "Asian CEO") lab(2 "Black CEO") lab(3 "Hispanic CEO") order(1 2 3)) ///
		   legend(size(small)) legend(region(lwidth(none))) ///
		   xlabel(-.1(.05).25,labsize(small)) ///
		    xline(0,lpa(-) lcolor(gs7%50))  /// 
			title({bf:A. Minority CEOs},color(black) pos(1) size(med)) ///			
			xtitle(Treatment Effect) ytitle("") ///
 			ylabel(0 "Death of Trayvon Martin (C)" -1 `""Acquittal of" "George Zimmerman (C)""' -2 `""Mistrial in the" "Jordan Davis Shooting (C)""'	 ///
				   -3 "Death of Michael Brown (P)"  -4 "Death of Tamir Rice (P)"           -5 "Death of Alton Sterling (P)"  -6 "Death of George Floyd (P)" ///
				   -7 "Pooled",angle(0) labsize(small)) ///
		   graphregion(color(white)) bgcolor(white) 
	* Save	   
	graph export "$path_figures/minority/SDID_minority_21days_ByEvents.pdf",replace
		
	