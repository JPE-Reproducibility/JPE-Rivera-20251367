do "scripts/config.do"


	********************************************************************************
	* 1a) Collect Results for Smith & Wesson
	********************************************************************************
	use "$path_sdid/SDID_strong_placebo_CAR_smithwesson.dta", clear
    gen df=8 
	gen type="strong"
	
	foreach v in 8{
			*Collect mean 
			su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
			global mdv =trim("`: display %10.2f `r(mean)''")
			
			*Collect the effect
			su b_sdid if  type=="strong"  & df==`v'
			global bSDIDstrong =trim("`: display %10.4f `r(mean)''")	
			su se_sdid if  type=="strong" & df==`v'
			global seSDIDstrong =trim("`: display %10.4f `r(mean)''")

			
			*Plot
			twoway (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="strong",lco(dkblue%70)  mco(dkblue%70) lwidth(medthick)  lpa(solid) msymbol(O) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dkblue%70)  lwidth(med) lpa(-)) , ///
				   ylabel(-0.3(.1).1,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(medthick) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(col(2) row(1) pos(6) lab(1 "Smith & Wesson") lab(2 "SDID") order(1 2 3))  ///
				   title({bf: A. Smith & Wesson Brands Inc},color(black) pos(1) size(med)) ///
					subtitle("sdid = $bSDIDstrong (s.e.=$seSDIDstrong)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/SDID_CAR_MassShooting_SW_21days.pdf",replace
	}
	
	
	********************************************************************************
	* 1b) Collect Results for Virtra
	********************************************************************************
	use "$path_sdid/SDID_strong_placebo_CAR_virtra.dta", clear
    gen df=8 
	gen type="strong"
	
	foreach v in 8{
			*Collect mean 
			su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
			global mdv =trim("`: display %10.2f `r(mean)''")
			
			*Collect the effect
			su b_sdid if  type=="strong"  & df==`v'
			global bSDIDstrong =trim("`: display %10.4f `r(mean)''")	
			su se_sdid if  type=="strong" & df==`v'
			global seSDIDstrong =trim("`: display %10.4f `r(mean)''")

			
			*Plot
			twoway (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="strong",lco(dkblue%70)  mco(dkblue%70) lwidth(medthick)  lpa(solid) msymbol(O) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dkblue%70)  lwidth(med) lpa(-)) , ///
				   ylabel(-0.3(.1).1,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(medthick) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(col(2) row(1) pos(6) lab(1 "Virtra") lab(2 "SDID") order(1 2 3))  ///
				   title({bf: B. Virtra Inc},color(black) pos(1) size(med)) ///
					subtitle("sdid = $bSDIDstrong (s.e.=$seSDIDstrong)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/SDID_CAR_MassShooting_Virtra_21days.pdf",replace
	}	
	
	********************************************************************************
	* 1c) Collect Results for Vista
	********************************************************************************
	use "$path_sdid/SDID_strong_placebo_CAR_vista.dta", clear
    gen df=8 
	gen type="strong"
	
	foreach v in 8{
			*Collect mean 
			su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
			global mdv =trim("`: display %10.2f `r(mean)''")
			
			*Collect the effect
			su b_sdid if  type=="strong"  & df==`v'
			global bSDIDstrong =trim("`: display %10.4f `r(mean)''")	
			su se_sdid if  type=="strong" & df==`v'
			global seSDIDstrong =trim("`: display %10.4f `r(mean)''")

			
			*Plot
			twoway (connected Y_sdid x_sdid if  df==`v' & type_sdid=="treated"           & type=="strong",lco(dkblue%70)  mco(dkblue%70) lwidth(medthick)  lpa(solid) msymbol(O) msize(tiny)) || ///
			       (line      Y_sdid x_sdid if  df==`v' & type_sdid=="synthetic control" & type=="strong",lco(dkblue%70)  lwidth(med) lpa(-)) , ///
				   ylabel(-0.3(.1).1,axis(1) labsize(small)) ///
				   xlabel(-63(5)21,labsize(small)) ///
				   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
				   graphregion(color(white)) bgcolor(white) ///
				   xline(0,lpattern(dash)  lcolor(gs13) lwidth(medthick) lstyle(foreground)) ///
				   legend(size(med)) legend(region(lwidth(none))) ///
					legend(col(2) row(1) pos(6) lab(1 "Vista") lab(2 "SDID") order(1 2 3))  ///
				   title({bf: C. Vista Outdoor Inc},color(black) pos(1) size(med)) ///
					subtitle("sdid = $bSDIDstrong (s.e.=$seSDIDstrong)", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/SDID_CAR_MassShooting_Vista_21days.pdf",replace
	}	

