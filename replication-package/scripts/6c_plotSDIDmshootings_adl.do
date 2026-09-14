do "scripts/config.do"
	
	********************************************************************************
	* 1a) Append Placebos for CAR
	********************************************************************************
	
	*Add pooled results
	use "$path_sdid/SDID_strong_placebo_CAR_placebo.dta", clear
    gen df=8 
	gen type=""
	replace type="strong" if type==""
	append using  "$path_sdid/SDID_weak_placebo_CAR_placebo.dta"
	replace df=8 if df==.
	replace type="weak" if type==""	
	
	********************************************************************************
	* 1b) Placebo
	********************************************************************************
	foreach v in 8{
			*Collect mean 
			su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
			global mdv =trim("`: display %10.2f `r(mean)''")
			
			*Collect the effect
			su b_sdid if  type=="strong"  & df==`v'
			global bSDIDstrong =trim("`: display %10.4f `r(mean)''")	
			su se_sdid if  type=="strong" & df==`v'
			global seSDIDstrong =trim("`: display %10.4f `r(mean)''")		
			su b_sdid if  type=="weak"  & df==`v'
			global bSDIDweak =trim("`: display %10.4f `r(mean)''")	
			su se_sdid if type=="weak"  & df==`v'
			global seSDIDweak =trim("`: display %10.4f `r(mean)''")		

			*Plot
			twoway (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="strong",lco(dkblue%70)  mco(dkblue%70) lwidth(medthick)  lpa(solid) msymbol(O) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dkblue%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="weak",lco(maroon%70)     mco(maroon%70) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="weak",lco(maroon%70)     lwidth(med) mco(teal)  msize(med) lpa(-.) msymbol(x)), ///
				   ylabel(-0.01(.03).16,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(medthick) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
						legend(ring(1) pos(6) row(1) col(3)lab(1 "Strong") lab(2 "SDID{sub:strong}") lab(3 "Weak") lab(4 "SDID{sub:weak}") order(1 2 3 4))  ///
				   title({bf: A. Mass Shootings},color(black) pos(1) size(med)) ///
					subtitle("sdid{sub:strong} = $bSDIDstrong (s.e.=$seSDIDstrong)" "sdid{sub:weak} = $bSDIDweak (s.e.=$seSDIDweak)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	*$path_out
	graph export "$path_figures/SDID_CAR_MassShooting_21days.pdf",replace
	}
	
	********************************************************************************
	* 2a) Append BLM event for CAR
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
	* 2b) BLM
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
			twoway (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="strong",lco(dkblue%70)  mco(dkblue%70) lwidth(med)  lpa(solid) msymbol(O) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dkblue%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="weak",lco(maroon%70)     mco(maroon%70) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="weak",lco(maroon%70)     lwidth(med) mco(teal)  msize(med) lpa(-.) msymbol(x)), ///
				   ylabel( -0.03(.03).18,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(med) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
				   	title({bf:C. BLM Events},color(black) pos(1) size(med)) ///
						legend(ring(1) pos(6) row(1) col(3)lab(1 "Strong") lab(2 "SDID{sub:strong}") lab(3 "Weak") lab(4 "SDID{sub:weak}") order(1 2 3 4))  ///
					subtitle("sdid{sub:strong} = $bSDIDstrong (s.e.=$seSDIDstrong)" "sdid{sub:weak} = $bSDIDweak (s.e.=$seSDIDweak)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/SDID_CAR_BLM_21days.pdf",replace
	}
	

	********************************************************************************
	* 3a) Append Placebos for CAR
	********************************************************************************
	*Add pooled results
	use "$path_sdid/SDID_strong_placebo_CAR_ADL_placebo.dta", clear
    gen df=8 
	gen type=""
	replace type="strong" if type==""
	append using "$path_sdid/SDID_weak_placebo_CAR_ADL_placebo.dta"
	replace df=8 if df==.
	replace type="weak" if type==""	
	
	********************************************************************************
	* 3b) Placebo for ADL
	********************************************************************************
	foreach v in 8{
			*Collect mean 
			su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
			global mdv =trim("`: display %10.2f `r(mean)''")
			
			*Collect the effect
			su b_sdid if  type=="strong"  & df==`v'
			global bSDIDstrong =trim("`: display %10.4f `r(mean)''")	
			su se_sdid if  type=="strong" & df==`v'
			global seSDIDstrong =trim("`: display %10.4f `r(mean)''")		
			su b_sdid if  type=="weak"  & df==`v'
			global bSDIDweak =trim("`: display %10.4f `r(mean)''")	
			su se_sdid if type=="weak"  & df==`v'
			global seSDIDweak =trim("`: display %10.4f `r(mean)''")		

			*Plot
			twoway (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="strong",lco(dkblue%70)  mco(dkblue%70) lwidth(medthick)  lpa(solid) msymbol(O) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dkblue%70)  lwidth(med) lpa(-)) || ///
				   (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="weak",lco(maroon%70)     mco(maroon%70) lwidth(med)  lpa(solid) msymbol(T) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="weak",lco(maroon%70)     lwidth(med) mco(teal)  msize(med) lpa(-.) msymbol(x)), ///
				   ylabel(-0.01(.03).16,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(medthick) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
						legend(ring(1) pos(6) row(1) col(3)lab(1 "Strong") lab(2 "SDID{sub:strong}") lab(3 "Weak") lab(4 "SDID{sub:weak}") order(1 2 3 4))  ///
				   title({bf: B. White Supremacists Murders},color(black) pos(1) size(med)) ///
					subtitle("sdid{sub:strong} = $bSDIDstrong (s.e.=$seSDIDstrong)" "sdid{sub:weak} = $bSDIDweak (s.e.=$seSDIDweak)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/SDID_CAR_adl_21days.pdf",replace
	}
	
