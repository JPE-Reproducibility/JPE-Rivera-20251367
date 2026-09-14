do "scripts/config.do"

	*Labels/Subtitles
	global Ngsale "A. Sales"
	global Ngcogs "B. Cost of Goods Sold"

	********************************************************************************
	* 0) Append data
	********************************************************************************	
	*Get the initial sales and cogs
	use "$path_cleaned/fundamentals_PostSummer2020.dta",clear
	su fsale if group==3
	global fsale =trim("`: display %10.3f `r(mean)''")
	su fcogs if group==3
	global fcogs=trim("`: display %10.3f `r(mean)''")	
	
	*Append
	use "$path_sdid/11a_6_strong_gsale.dta",clear
		gen df="gsale"
		append using "$path_sdid/11a_6_strong_gcogs.dta"
		replace df="gcogs" if df==""

	*Get the dollar value ($)
	gen fcogs=$fcogs
	gen fsale=$fsale	
	gen tot_sdid=.
	gen tot_sc  =.
	foreach v in sale cogs{
		replace tot_sdid=b_sdid*f`v' if df=="g`v'"
		replace tot_sc  =b_sc*f`v'	 if df=="g`v'"	
	} 
	
	********************************************************************************
	* 1a) Plot-Cummlative growth of SDID Sales and Cogs
	********************************************************************************
	*Sale
	foreach z in gsale{
		*Collect the effect
		su b_sdid if  df=="`z'"
		global bSDIDstrong =trim("`: display %10.3f `r(mean)''")	
		su se_sdid if df=="`z'"
		global seSDIDstrong =trim("`: display %10.3f `r(mean)''")	
		su tot_sdid if df=="`z'"
		global tot_sdid =trim("`: display %10.0f `r(mean)''")+"M"	
			
		*Plot
		twoway (connected Y_sdid x_sdid if df=="`z'" & type_sdid=="treated"           ,lco(dknavy%70) msize(medlarge) mco(dknavy%70) lwidth(medthick)  lpa(solid) msymbol(O)) || ///
			   (line      Y_sdid x_sdid if df=="`z'" & type_sdid=="synthetic control" ,lco(dknavy%70%70)  lwidth(medthick) lpa(-)), ///
				   ylabel(0(2)8,axis(1) labsize(small)) ///
				   xlabel(-6(2)7,labsize(small)) ///
				   ytitle("Cumulative Growth",size(med) col(gs3)) xtitle("Quarter",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs9) lwidth(med) lstyle(foreground)) ///
				   ttext(6 -0.3 "George Floyd's Murder" ,orientation(vertical) margin(vsmall) color(gs9)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
				   legend(col(1) ring(1) pos(6) row(1) lab(1 "Strongly Connected") lab(2 "Synthetic Connected")  order(1 2))  ///
				   title({bf:${N`z'}},color(black) pos(1) size(med)) ///
					subtitle("coef = $bSDIDstrong" "s.e. = $seSDIDstrong" "value ($) = $tot_sdid", ///
				   size(medsmall) position(9) ring(0) color(dknavy%70))
		graph export "$path_figures/v3_SDID_gsale.pdf",replace
	}
	
	
	*Cogs
	foreach z in gcogs{
		*Collect the effect
		su b_sdid if  df=="`z'"
		global bSDIDstrong =trim("`: display %10.3f `r(mean)''")	
		su se_sdid if df=="`z'"
		global seSDIDstrong =trim("`: display %10.3f `r(mean)''")	
		su tot_sdid if df=="`z'"
		global tot_sdid =trim("`: display %10.0f `r(mean)''")+"M"	
		
		*Plot
		twoway (connected Y_sdid x_sdid if df=="`z'" & type_sdid=="treated"           ,lco(dknavy%70) msize(medlarge) mco(dknavy%70) lwidth(medthick)  lpa(solid) msymbol(O)) || ///
			   (line      Y_sdid x_sdid if df=="`z'" & type_sdid=="synthetic control" ,lco(dknavy%70%70)  lwidth(medthick) lpa(-)), ///
				   ylabel(0(2)8,axis(1) labsize(small)) ///
				   xlabel(-6(2)7,labsize(small)) ///
				   ytitle("Cumulative Growth",size(med) col(gs3)) xtitle("Quarter",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs9) lwidth(med) lstyle(foreground)) ///
				   ttext(6 -.3 "George Floyd's Murder" , orientation(vertical) margin(vsmall) color(gs9)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
				   legend(col(1) ring(1) pos(6) row(1) lab(1 "Strongly Connected") lab(2 "Synthetic Connected")  order(1 2))  ///
				   title({bf:${N`z'}},color(black) pos(1) size(med)) ///
					subtitle("coef = $bSDIDstrong" "s.e. = $seSDIDstrong" "value ($) = $tot_sdid", ///
				   size(med) position(9) ring(0) color(dknavy%70))
		graph export "$path_figures/v3_SDID_gcogs.pdf",replace
	}
	
	
	********************************************************************************
	* 1b) Plot-Cummlative growth of SC Sales and Cogs
	********************************************************************************
	*Sale
	foreach z in gsale{
		*Collect the effect
		su b_sc if  df=="`z'"
		global bSDIDstrong =trim("`: display %10.3f `r(mean)''")	
		su se_sc if df=="`z'"
		global seSDIDstrong =trim("`: display %10.3f `r(mean)''")	
		su tot_sc if df=="`z'"
		global tot_sc =trim("`: display %10.0f `r(mean)''")+"M"
		
		*Plot
		twoway (connected Y_sc x_sc if df=="`z'" & type_sc=="treated"           ,lco(dknavy%70) msize(medlarge) mco(dknavy%70) lwidth(medthick)  lpa(solid) msymbol(O)) || ///
			   (line      Y_sc x_sc if df=="`z'" & type_sc=="synthetic control" ,lco(dknavy%70%70)  lwidth(med) lpa(-)), ///
				   ylabel(0(2)8,axis(1) labsize(small)) ///
				   xlabel(-6(2)7,labsize(small)) ///
				   ytitle("Cumulative Growth",size(med) col(gs3)) xtitle("Quarter",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs9) lwidth(med) lstyle(foreground)) ///
				   ttext(6 -.3 "George Floyd's Murder", orientation(vertical) margin(vsmall) color(gs9)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
				   legend(col(1) ring(1) pos(6) row(1) lab(1 "Strongly Connected") lab(2 "Synthetic Connected")  order(1 2))  ///
				   title({bf:${N`z'}},color(black) pos(1) size(med)) ///
					subtitle("coef = $bSDIDstrong" "s.e. = $seSDIDstrong" "value ($) = $tot_sc", ///
				   size(med) position(9) ring(0) color(dknavy%70))
		graph export "$path_figures/v3_SC_gsale.pdf",replace
	}
	
	
	*Cogs
	foreach z in gcogs{
		*Collect the effect
		su b_sc if  df=="`z'"
		global bSDIDstrong =trim("`: display %10.3f `r(mean)''")	
		su se_sc if df=="`z'"
		global seSDIDstrong =trim("`: display %10.3f `r(mean)''")	
		su tot_sc if df=="`z'"
		global tot_sc =trim("`: display %10.0f `r(mean)''")+"M"
		
		*Plot
		twoway (connected Y_sc x_sc if df=="`z'" & type_sc=="treated"           ,lco(dknavy%70) msize(medlarge)  mco(dknavy%70) lwidth(medthick)  lpa(solid) msymbol(O)) || ///
			   (line      Y_sc x_sc if df=="`z'" & type_sc=="synthetic control" ,lco(dknavy%70%70)  lwidth(med) lpa(-)), ///
				   ylabel(0(2)8,axis(1) labsize(small)) ///
				   xlabel(-6(2)7,labsize(small)) ///
				   ytitle("Cumulative Growth",size(med) col(gs3)) xtitle("Quarter",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs9) lwidth(med) lstyle(foreground)) ///
				   ttext(6 -.3 "George Floyd's Murder" ,orientation(vertical) margin(vsmall) color(gs9)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
				   legend(col(1) ring(1) pos(6) row(1) lab(1 "Strongly Connected") lab(2 "Synthetic Connected")  order(1 2))  ///
				   title({bf:${N`z'}},color(black) pos(1) size(med)) ///
					subtitle("coef = $bSDIDstrong" "s.e. = $seSDIDstrong" "value ($) = $tot_sc", ///
				   size(med) position(9) ring(0) color(dknavy%70))
		graph export "$path_figures/v3_SC_gcogs.pdf",replace
	}
	

	********************************************************************************
	* 2) CAR
	********************************************************************************	
	*Labels/Subtitles
	global N6 "C. Death of George Floyd"
	
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
	
	*Merge Mkt value ($)
		gen panel =df
		gen group=3 if type=="strong"
	replace group=2 if type=="weak"
	sort group panel
	merge m:1 group panel using "$path_cleaned/mktval.dta"
	drop if _merge==2
	replace weak_mktval  =weak_mktval[_n-1]   if weak_mktval==.   & weak_mktval[_n-1]!=.
	replace strong_mktval=strong_mktval[_n-1] if strong_mktval==. & strong_mktval[_n-1]!=.	
	replace mktval=weak_mktval   if group==2 & df==7
	replace mktval=strong_mktval if group==3 & df==7
	
	*Total Amount
	gen tot_sdid=b_sdid*mktval
	gen tot_sc  =b_sc*mktval	
		
	
	
	********************************************************************************
	* 1c) Plot-CAR results for SDID
	********************************************************************************
	sort group df x_sdid
	foreach v in 6 {
			*Collect mean 
			su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
			global mdv =trim("`: display %10.3f `r(mean)''")
			
			*Collect the effect
			su b_sdid if  type=="strong"  & df==`v'
			global bSDIDstrong =trim("`: display %10.3f `r(mean)''")	
			su se_sdid if  type=="strong"  & df==`v'
			global seSDIDstrong =trim("`: display %10.3f `r(mean)''")		
			su b_sdid if  type=="weak"  & df==`v'

			
			su tot_sdid if type=="strong"  & df==`v'
			global strong_tot_sdid =trim("`: display %10.0f `r(mean)''")+"M"	
				
			* Plot	   
			twoway (connected Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="treated"           & type=="strong",lco(dknavy%70)  mco(dknavy%70) lwidth(med)  lpa(solid) msymbol(O) msize(small)) || ///
			       (line      Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dknavy%70)  lwidth(med) lpa(-)), ///
				   title({bf:},color(black) pos(1) size(med)) ///
				   ylabel(-0(.1).35 ,axis(1) labsize(small)) ///
				   xlabel(-21(3)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs9) lwidth(med) lstyle(foreground)) ///
				   ttext(.2 -1 "George Floyd's Murder" ,orientation(vertical) margin(vsmall) color(gs9)) ///				   
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(col(1) ring(1) pos(6) row(1) lab(1 "Connected") lab(2 "Synthetic Connected") order(1 2))  ///
					subtitle("coef = $bSDIDstrong" "s.e. = $seSDIDstrong" "value ($) = $strong_tot_sdid", ///
				   size(med) position(3) ring(0) color(dknavy%70))	   
	graph export "$path_figures/short_SDID_CAR_GF.pdf",replace
	}

	
	
