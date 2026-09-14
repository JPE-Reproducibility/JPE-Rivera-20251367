do "scripts/config.do"

	****************************************************************************	
	*Data to convert time to event to month
	****************************************************************************
	use "$path_cleaned/placebos_weak_portfolio.dta", clear
		keep t0 mofd year
		duplicates drop
		rename t0 x_sdid
		keep if year<2021
	*temporary data	
	sort x_sdid
	tempfile date
	save `date'

	
	****************************************************************************	
	*Collect estimates and SE
	****************************************************************************
	use "$path_sdid/4a_weak_NA_weak_sumwAR", clear
		*Collect the effect
		su b_sdid 
		global bSDIDweak =trim("`: display %10.3f `r(mean)''")	
		su se_sdid 
		global seSDIDweak =trim("`: display %10.3f `r(mean)''")
	
	
	****************************************************************************	
	*Strong
	****************************************************************************
	*RAW
	use "$path_sdid/monthly_totalweak_dt.dta", clear
		*keep relevant
		keep if type_sdid=="treated"
		keep Y_sdid x_sdid PID
		duplicates drop
		rename Y_sdid  Yraw
		sort PID x_sdid 	
	*temporary data	
	sort PID x_sdid
	tempfile Yraw_weak
	save `Yraw_weak'
	
	*Synthetic
	 use "$path_sdid/monthly_totalweak_dt.dta",clear
		*keep relevant
		keep if type_sdid=="synthetic control"
		keep Y_sdid x_sdid PID
		duplicates drop
		rename Y_sdid  Ysdid
		sort PID x_sdid 	
	*temporary data	
	sort PID x_sdid
	tempfile Ysdid_weak
	save `Ysdid_weak'
	
		
	*Merge	
	use `Yraw_weak'
		*Merge
		sort PID x_sdid
		merge 1:1 PID x_sdid using `Ysdid_weak'
		keep if _merge==3
		drop _merge
	*temporary data	
	sort PID x_sdid
	tempfile Strong
	save `Strong'
	
	*Merge date
	sort x_sdid
	merge m:1 x_sdid using `date'
	keep if _merge==3
	drop _merge
	
	*Plot
	gen portofolio=PID
	gen tmp= Yraw if x_sdid==0
	bys PID: egen Yraw0=max(tmp)
	drop tmp
	gen tmp= Ysdid if x_sdid==0
	bys PID: egen Ysdid0=max(tmp)
	drop tmp
	
	*Treatment effect
	sort PID x_sdid
	*gen effect=	Yraw-Ysdid
	gen effect = Yraw-Yraw0-Ysdid+ Ysdid0
	
	* Plots	
	local lp
	forval i=2/102 {
	   local lp `lp' line effect mofd if portofolio==`i', lcolor(gs11%30) ||
	}
	twoway `lp' || ///
		   (connected effect mofd if portofolio==0,lco(orange%70)  mco(orange%70) lwidth(medthick)  lpa(solid) msymbol(th) msize(small)), ///
	       legend(col(2) row(1) pos(6) lab(102 "Weak Connection") lab(101 "Placebos") order(101 102))  ///
		   ylabel(-1.75(.5)1.25) ///
		   ytitle("Treatment Effect") ///
		   xtitle("Month") ///
		   	graphregion(color(white)) bgcolor(white) ///
			tline(2012m2,lpattern(dash)  lcolor(red) lwidth(medthick) lstyle(foreground)) ///
			tline(2014m8 2020m5,lwidth(thin) lpa(-) lcolor(red)) ///
		    ttext(-1.1 2012m2 "Death of Trayvon Martin"                ,margin(vsmall)  orientation(vertical) size(small) placement(w) color(red)) ///	
		    ttext(-1 2014m8 "{&larr} {&larr} Death of Michael Brown" ,margin(vsmall)  size(small) placement(e) color(red)) ///	
			ttext(0.9 2020m5 "Death of George Floyd {&rarr} {&rarr} " ,margin(vsmall)  size(small) placement(w) color(red)) ///	
			legend(size(med)) legend(region(lwidth(none))) ///
			title({bf:B. Weak Connection},color(black) pos(1) size(med)) ///
			subtitle("sdid = $bSDIDweak" "s.e. =$seSDIDweak", ///
				   size(med) position(11) ring(0) color(gs6%90)) 
	graph export "$path_figures/v3_SDID_CAR_long_weak.pdf",replace
	
*Save
save "$path_sdid/long_weak_effect.dta",replace
