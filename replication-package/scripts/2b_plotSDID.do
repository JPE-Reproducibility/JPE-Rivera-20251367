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
	
	********************************************************************************
	* 1b) Pooled Effects
	********************************************************************************
	foreach v in 7{
			*Collect mean 
			su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
			global mdv =trim("`: display %10.3f `r(mean)''")
			
			*Collect the effect
			su b_sdid if  type=="strong"  & df==`v'
			global bSDIDstrong =trim("`: display %10.3f `r(mean)''")	
			su se_sdid if  type=="strong" & df==`v'
			global seSDIDstrong =trim("`: display %10.3f `r(mean)''")		
			su b_sdid if  type=="weak"  & df==`v'
			global bSDIDweak =trim("`: display %10.3f `r(mean)''")	
			su se_sdid if type=="weak"  & df==`v'
			global seSDIDweak =trim("`: display %10.3f `r(mean)''")		

			*Plot
			twoway (connected Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="treated"           & type=="strong",lco(dknavy%70)  mco(dknavy%70) lwidth(med)  lpa(solid) msymbol(O) msize(sm)) || ///
			       (line      Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dknavy%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="treated"           & type=="weak",lco(maroon%70)     mco(maroon%70) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="synthetic control" & type=="weak",lco(maroon%70)     lwidth(med) mco(teal)  msize(med) lpa(-.) msymbol(x)), ///
				   ylabel( -0.03(.03).18,axis(1) labsize(small)) ///
				   xlabel(-21(3)21,labsize(small)) ///
				   title({bf:${N`v'}},color(black) pos(1) size(med)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(med) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(pos(6) ring(1) col(1) row(1) lab(1 "Strong") lab(2 "SDID{sub:strong}") lab(3 "Weak") lab(4 "SDID{sub:weak}") order(1 2 3 4))  ///
					subtitle("sdid{sub:strong} = $bSDIDstrong (s.e.=$seSDIDstrong)" "sdid{sub:weak} = $bSDIDweak (s.e.=$seSDIDweak)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/v3_SDID_CAR_event`v'_21days.pdf",replace



	*Plot
			twoway (connected Y_sdid x_sdid if df==`v' & type_sdid=="treated"           & type=="strong",lco(dknavy%70)  mco(dknavy%70) lwidth(med)  lpa(solid) msymbol(O) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dknavy%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sdid x_sdid if df==`v' & type_sdid=="treated"           & type=="weak",lco(maroon%70)     mco(maroon%70) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if df==`v' & type_sdid=="synthetic control" & type=="weak",lco(maroon%70)     lwidth(med) mco(teal)  msize(med) lpa(-.) msymbol(x)), ///
				   ylabel( -0.03(.03).18,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(med) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(pos(6) ring(1) col(1) row(1) lab(1 "Strong") lab(2 "SDID{sub:strong}") lab(3 "Weak") lab(4 "SDID{sub:weak}") order(1 2 3 4))  ///
					subtitle("sdid{sub:strong} = $bSDIDstrong (s.e.=$seSDIDstrong)" "sdid{sub:weak} = $bSDIDweak (s.e.=$seSDIDweak)", ///
				   size(med) position(11) ring(0) color(gs6%90))
	graph export "$path_figures/v3_SDID_CAR_event`v'_21days_full_short.pdf",replace
	}

	********************************************************************************
	* 1c) Plot-CAR results for SDID
	********************************************************************************
	foreach v in 0 1 2 3 4 5 6 {
			*Collect mean 
			su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
			global mdv =trim("`: display %10.3f `r(mean)''")
			
			*Collect the effect
			su b_sdid if  type=="strong"  & df==`v'
			global bSDIDstrong =trim("`: display %10.3f `r(mean)''")	
			su se_sdid if  type=="strong"  & df==`v'
			global seSDIDstrong =trim("`: display %10.3f `r(mean)''")		
			su b_sdid if  type=="weak"  & df==`v'
			global bSDIDweak =trim("`: display %10.3f `r(mean)''")	
			su se_sdid if type=="weak"  & df==`v'
			global seSDIDweak =trim("`: display %10.3f `r(mean)''")		

			*Plot
			twoway (connected Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="treated"           & type=="strong",lco(dknavy%70)  mco(dknavy%70) lwidth(med)  lpa(solid) msymbol(O) msize(small)) || ///
			       (line      Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dknavy%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="treated"           & type=="weak",lco(maroon%70)     mco(maroon) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="synthetic control" & type=="weak",lco(maroon%70)     lwidth(med) mco(teal)  msize(med) lpa(-.) msymbol(x)), ///
				   ylabel(-0.1(.1).4 ,axis(1) labsize(small)) ///
				   xlabel(-21(3)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(med) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(pos(6) ring(1) col(1) row(1) lab(1 "Strong") lab(2 "SDID{sub:strong}") lab(3 "Weak") lab(4 "SDID{sub:weak}") order(1 2 3 4))  ///
				   title({bf:${N`v'}},color(black) pos(1) size(med)) ///
					subtitle("sdid{sub:strong} = $bSDIDstrong (s.e.=$seSDIDstrong)" "sdid{sub:weak} = $bSDIDweak (s.e.=$seSDIDweak)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/v3_SDID_CAR_event`v'_21days.pdf",replace
	
	
	*Plot
			twoway (connected Y_sdid x_sdid if df==`v' & type_sdid=="treated"           & type=="strong",lco(dknavy%70)  mco(dknavy%70) lwidth(med)  lpa(solid) msymbol(O) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dknavy%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sdid x_sdid if df==`v' & type_sdid=="treated"           & type=="weak",lco(maroon%70)     mco(maroon%70) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if df==`v' & type_sdid=="synthetic control" & type=="weak",lco(maroon%70)     lwidth(med) mco(teal)  msize(med) lpa(-.) msymbol(x)), ///
				   ylabel(-0.1(.1).4,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(med) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(pos(6) ring(1) col(1) row(1) lab(1 "Strong") lab(2 "SDID{sub:strong}") lab(3 "Weak") lab(4 "SDID{sub:weak}") order(1 2 3 4))  ///
				   title({bf:${N`v'}},color(black) pos(1) size(med)) ///
					subtitle("sdid{sub:strong} = $bSDIDstrong (s.e.=$seSDIDstrong)" "sdid{sub:weak} = $bSDIDweak (s.e.=$seSDIDweak)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/v3_SDID_CAR_event`v'_21days_full.pdf",replace
	}


	********************************************************************************
	* 1d) Plot-CAR results for SC
	********************************************************************************
	foreach v in 0 1 2 3 4 5 6 {
			*Collect mean 
			su Y_sc if type_sc=="treated" & x_sc==-21 & df==`v'
			global mdv =trim("`: display %10.3f `r(mean)''")
			
			*Collect the effect
			su b_sc if  type=="strong"  & df==`v'
			global bSCstrong =trim("`: display %10.3f `r(mean)''")	
			su se_sc if  type=="strong"  & df==`v'
			global seSCstrong =trim("`: display %10.3f `r(mean)''")		
			su b_sc if  type=="weak"  & df==`v'
			global bSCweak =trim("`: display %10.3f `r(mean)''")	
			su se_sc if type=="weak"  & df==`v'
			global seSCweak =trim("`: display %10.3f `r(mean)''")		

			*Plot
			twoway (connected Y_sc x_sc if x_sc>-22 & df==`v' & type_sc=="treated"           & type=="strong",lco(dknavy%70)  mco(dknavy%70) lwidth(med)  lpa(solid) msymbol(O) msize(small)) || ///
			       (line      Y_sc x_sc if x_sc>-22 & df==`v' & type_sc=="synthetic control" & type=="strong",lco(dknavy%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sc x_sc if x_sc>-22 & df==`v' & type_sc=="treated"           & type=="weak",lco(maroon%70)     mco(maroon) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sc x_sc if x_sc>-22 & df==`v' & type_sc=="synthetic control" & type=="weak",lco(maroon%70)     lwidth(med) mco(teal)  msize(med) lpa(-.) msymbol(x)), ///
				   ylabel(-0.1(.1).4 ,axis(1) labsize(small)) ///
				   xlabel(-21(3)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(med) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(pos(6) ring(1) col(1) row(1) lab(1 "Strong") lab(2 "SC{sub:strong}") lab(3 "Weak") lab(4 "SC{sub:weak}") order(1 2 3 4))  ///
				   title({bf:${N`v'}},color(black) pos(1) size(med)) ///
					subtitle("SC{sub:strong} = $bSCstrong (s.e.=$seSCstrong)" "SC{sub:weak} = $bSCweak (s.e.=$seSCweak)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/v3_SC_CAR_event`v'_21days.pdf",replace
	
	*Plot
			twoway (connected Y_sc x_sc if df==`v' & type_sc=="treated"           & type=="strong",lco(dknavy%70)  mco(dknavy%70) lwidth(med)  lpa(solid) msymbol(O) msize(tiny)) || ///
			       (line      Y_sc x_sc if df==`v' & type_sc=="synthetic control" & type=="strong",lco(dknavy%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sc x_sc if df==`v' & type_sc=="treated"           & type=="weak",lco(maroon%70)     mco(maroon) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sc x_sc if df==`v' & type_sc=="synthetic control" & type=="weak",lco(maroon%70)     lwidth(med) mco(teal)  msize(med) lpa(-.) msymbol(x)), ///
				   ylabel(-0.1(.1).4 ,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(med) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(pos(6) ring(1) col(1) row(1) lab(1 "Strong") lab(2 "SC{sub:strong}") lab(3 "Weak") lab(4 "SC{sub:weak}") order(1 2 3 4))  ///
				   title({bf:${N`v'}},color(black) pos(1) size(med)) ///
					subtitle("SC{sub:strong} = $bSCstrong (s.e.=$seSCstrong)" "SC{sub:weak} = $bSCweak (s.e.=$seSCweak)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/v3_SC_CAR_event`v'_21days_full.pdf",replace
	}


	********************************************************************************
	*2) Plot Estimates for each events
	********************************************************************************
	gen timeline=-df
	keep   b_sdid se_sdid type timeline
	duplicates drop	  
	sort type timeline
	
	*Names
	gen strong=type=="strong"
	sort strong timeline
	replace timeline=time-.2 if strong==0
	replace timeline=time+.2 if strong==1
	
	*Upper/lower bounds
	gen lower=b_sdid-1.96*se_sdid
	gen upper=b_sdid+1.96*se_sdid
	
	
	*Plots	
	twoway (scatter timeline b_sdid      if strong==0,mco(maroon%70) msymbol(T) msize(large)) || ///
	       (scatter timeline b_sdid      if strong==1,mco(dknavy%70) msymbol(O) msize(large)) || ///
		   (rcap    lower upper timeline if strong==0,horizontal lco(maroon%70) lpa(-)) || ///
		   (rcap    lower upper timeline if strong==1,horizontal lco(dknavy%70)), ///
		   legend(pos(6) ring(1) col(1) row(1) lab(1 "Weak Connection") lab(2 "Strong Connection") order(1 2)) ///
		   legend(size(small)) legend(region(lwidth(none))) ///
		   xlabel(-.1(.05).25,labsize(small)) ///
		    xline(0,lpa(-) lcolor(gs7%50))  /// 
			xtitle(Treatment Effect) ytitle("") ///
			title({bf:B. Results by Incident},color(black) pos(1) size(med)) ///
			ylabel(0 "Death of Trayvon Martin (C)" -1 `""Acquittal of" "George Zimmerman (C)""' -2 `""Mistrial in the" "Jordan Davis Shooting (C)""'	 ///
				   -3 "Death of Michael Brown (P)"  -4 "Death of Tamir Rice (P)"           -5 "Death of Alton Sterling (P)"  -6 "Death of George Floyd (P)" ///
				   -7 "Pooled",angle(0) labsize(small)) ///
		   graphregion(color(white)) bgcolor(white) 
	graph export "$path_figures/v3_SDID_CAR_event_21days_ByEvents.pdf",replace

