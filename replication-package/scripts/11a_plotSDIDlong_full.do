do "scripts/config.do"

	****************************************************************************	
	*Collect b_ests and SE
	****************************************************************************
	*Unweighted-SC
	foreach v in strong weak{
		use "$path_sdid/4a_unweighted_`v'_NA_weak_sumAR", clear
		keep b_sc se_sc
			duplicates drop
			*rename
			rename b_sc  b_est
			rename se_sc se
			*Type
			gen portfolio="unweighted"
			gen type     ="`v'"
			gen method  ="SC"
			
		*temporary data	
		tempfile long_unweight_SC_`v'	
		save `long_unweight_SC_`v''	
	}

	*Unweighted-SDID
	foreach v in strong weak{
		use "$path_sdid/4a_unweighted_`v'_NA_weak_sumAR", clear
		keep b_sdid se_sdid
			duplicates drop
			*rename
			rename b_sdid  b_est
			rename se_sdid se
			*Type
			gen portfolio="unweighted"
			gen type     ="`v'"
			gen method  ="SDID"
			
		*temporary data	
		tempfile long_unweight_SDID_`v'
		save `long_unweight_SDID_`v''	
	}
	
	*Weighted-SC
	foreach v in strong weak{
		use "$path_sdid/4a_`v'_NA_weak_sumwAR", clear
		keep b_sc se_sc
			duplicates drop
			*rename
			rename b_sc  b_est
			rename se_sc se
			*Type
			gen portfolio="weighted"
			gen type     ="`v'"
			gen method  ="SC"
			
		*temporary data	
		tempfile long_weight_SC_`v'	
		save `long_weight_SC_`v''	
	}

	*Weighted-SDID
	foreach v in strong weak{
		use "$path_sdid/4a_`v'_NA_weak_sumwAR", clear
		keep b_sdid se_sdid
			duplicates drop
			*rename
			rename b_sdid  b_est
			rename se_sdid se
			*Type
			gen portfolio="weighted"
			gen type     ="`v'"
			gen method  ="SDID"
			
		*temporary data	
		tempfile long_weight_SDID_`v'
		save `long_weight_SDID_`v''	
	}	
	
	****************************************************************************	
	*Append and Plots
	****************************************************************************
		use `long_unweight_SC_strong',clear
	append using `long_unweight_SDID_strong'
	append using `long_weight_SC_strong'
	append using `long_weight_SDID_strong'	
	append using `long_unweight_SC_weak'	
	append using `long_unweight_SDID_weak'
	append using `long_weight_SC_weak'
	append using `long_weight_SDID_weak'	
		
	* Clean variable
		gen timeline=1 if portfolio=="weighted" & method=="SDID"
    replace timeline=2 if portfolio=="weighted" & method=="SC"
    replace timeline=3 if portfolio=="unweighted" & method=="SDID"	
    replace timeline=4 if portfolio=="unweighted" & method=="SC"	
	
		gen group=2 if type=="strong"
	replace group=3 if type=="weak"
	replace timeline=time-.2 if group==2
	replace timeline=time+.2 if group==3	
	gen lower=b_est-1.96*se
	gen upper=b_est+1.96*se
	
	*3) Plots	
	twoway (scatter timeline b_est          if group==3,mco(orange%70) msymbol(T) msize(large)) || ///
		   (scatter timeline b_est          if group==2,mco(midblue%70) msymbol(O) msize(large)) || ///
		   (rcapsym    lower upper timeline if group==3,horizontal lco(orange%70) lpa(--) mco(orange%70) msymbol(|) msize(large)) || ///
		   (rcapsym    lower upper timeline if group==2,horizontal lco(midblue%70) lpa(--) mco(midblue%70) msymbol(|) msize(large)), ///
		   legend(col(2) row(1) pos(6) lab(1 "Weak Connection") lab(2 "Strong Connection") order(1 2)) ///
		   legend(size(small)) legend(region(lwidth(none))) ///
		   xlabel(-.5(.25)1.25,labsize(small)) ///
			xline(0,lpa(-) lcolor(gs7%50))  /// 
			xtitle(Treatment Effect) ytitle("") ///
			ylabel( 1 "Market Value Weighted-SDID" 2 "Market Value Weighted-SC"  ///
				    3 "Equally Weighted-SDID"  4 "Equally Weighted-SC",angle(0) labsize(small)) ///
		   graphregion(color(white)) bgcolor(white) 
	*Save
	graph export "$path_figures/v3_SDID_CAR_longterm_SDIDvsSC.pdf",replace
