do "scripts/config.do"

*Labels/Subtitles
global N0 "Death of Trayvon Martin"
global N1 "Acquittal of George Zimmerman"
global N2 "Mistrial in the Jordan Davis Shooting"	
global N3 "Death of Michael Brown"
global N4 "Death of Tamir Rice"
global N5 "Death of Alton Sterling"	
global N6 "Death of George Floyd"
global N7 "A. Pooled Effects"


	
********************************************************************************
* Append R-results for CAR
********************************************************************************
use "$path_sdid/SDID_privatesecurity_panel_0.dta",clear
gen df=0
foreach v in 1 2 3 4 5 6 {
	append using "$path_sdid/SDID_privatesecurity_panel_`v'.dta"
	replace df=`v' if df==.
}

*Add pooled results
append using "$path_sdid/SDID_privatesecurity_panel_-1.dta"
replace df=7 if df==.


********************************************************************************
* 1c) Plot-CAR results for SDID
********************************************************************************
foreach v in 0 1 2 3 4 5 6 7 {
		*Collect mean 
		su Y_sdid if type_sdid=="treated" & x_sdid==-21 & df==`v'
		global mdv =trim("`: display %10.3f `r(mean)''")
		
		*Collect the effect
		su b_sdid   if df==`v'
		global bSDIDstrong =trim("`: display %10.3f `r(mean)''")	
		su se_sdid  if  df==`v'
		global seSDIDstrong =trim("`: display %10.3f `r(mean)''")		


		*Plot
		twoway (connected Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="treated"           ,lco(blue%70)  mco(blue%70) lwidth(med)  lpa(solid) msymbol(O) msize(small)) || ///
			   (line      Y_sdid x_sdid if x_sdid>-22 & df==`v' & type_sdid=="synthetic control" ,lco(blue%70)  lwidth(med) lpa(-)) || , ///
			   ylabel(-0.1(.1).4 ,axis(1) labsize(small)) ///
			   xlabel(-21(3)21,labsize(small)) ///
			   ytitle("Cumulative Abnormal Return",size(med) col(gs3)) xtitle("Trading Day",size(med) col(gs3)) ///
			   graphregion(color(white)) bgcolor(white) ///
			   xline(0,lpattern(dash)  lcolor(gs13) lwidth(med) lstyle(foreground)) ///
			   legend(size(med)) legend(region(lwidth(none)) pos(6) ) ///
				legend(col(1) row(1) lab(1 "Private Security") lab(2 "Synthetic")  order(1 2))  ///
			   title({bf:${N`v'}},color(black) pos(1) size(med)) ///
				subtitle("sdid{sub:private-security} = $bSDIDstrong (s.e.=$seSDIDstrong)" , ///
			   size(med) position(11) ring(0) color(gs6%90)) 

			   graph export "$path_figures/private_security/SDID_private_security_`v'.pdf",replace

//graph export "sdid_ps/SDID_ps_CAR_event",replace		


}
********************************************************************************
*1) Plot Estimates for each events
********************************************************************************
gen timeline=-df
keep   b_sdid se_sdid timeline
duplicates drop	  

*Upper/lower bounds
gen lower=b_sdid-1.96*se_sdid
gen upper=b_sdid+1.96*se_sdid


*Plots	
twoway (scatter timeline b_sdid     , mco(blue%70) msymbol(O) msize(medlarge)) || ///
	   (rcap    lower upper timeline , horizontal lco(blue%70) lpa(-)), ///
	   legend(ring(1) pos(6) col(3) row(1) lab(1 "Private Security") order(1)) ///
	   legend(size(small)) legend(region(lwidth(none))) ///
	   xlabel(-0.1(0.05)0.25,labsize(small)) ///
	   	title({bf:B. Private Security},color(black) pos(1) size(med)) ///			
		xline(0,lpa(-) lcolor(gs7%50))  /// 
		xtitle(Treatment Effect) ytitle("") ///
		ylabel(0 "Death of Trayvon Martin (C)" -1 "Acquittal of George Zimmerman  (C)" -2 "Mistrial in the Jordan Davis Shooting (C)"  ///
			   -3 "Death of Michael Brown (P)"  -4 "Death of Tamir Rice (P)"           -5 "Death of Alton Sterling (P)"  -6 "Death of George Floyd (P)" ///
			   -7 "Pooled",angle(0) labsize(small)) ///
	   graphregion(color(white)) bgcolor(white) ///
	   ///title({bf:Results by Incident,color(black) pos(1) size(med)) ///
	   
	   
	   
	   
graph export "$path_figures/private_security/SDID_ps_CAR_event.pdf",replace
		
		
		


	
