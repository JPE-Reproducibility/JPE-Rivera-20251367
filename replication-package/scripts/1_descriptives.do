do "scripts/config.do"

********************************************************************************
*1) Descriptives using daily data: summary statistics by group
********************************************************************************
use "$path_cleaned/returns_moredays.dta",clear
	*Global
	global X    "lsize1 lprofitability1 lleverage1 avgexpo_policing"
	global fmt_ "%9.2f            %9.2f            %9.2f  %9.2f  %9.2f        %11.0gc"
	
	*Keep Baseline
	keep if Et==-1
	
	*Number of firms/obs
	distinct gvkey               if group==1
	gen nfirms= r(ndistinct)     if group==1
	distinct gvkey               if group==2
	replace nfirms= r(ndistinct) if group==2
	distinct gvkey               if group==3
	replace nfirms= r(ndistinct) if group==3
	
	*Keep nfirms only once per group so SD is undefined
	bys group (gvkey): replace nfirms = . if _n > 1

	*Replace
	replace alpha=alpha*100
	
	*Label
	label variable lsize1          "Size"
	label variable lprofitability1 "Profitability"
	label variable lleverage1      "Leverage"		
	label variable alpha             "Alpha (x 100)"	
	label variable b_mkt             "Market Return (MKT)"	
	label variable b_smb             "Size Factor (SMB)"	
	label variable b_hml             "Value Factor (HML)"
	label variable b_umd             "Momentum (UMD)"	
	label variable nfirms            "Number of Firms"
	label variable avgexpo_policing   "Exposure to Policing"
	label variable sharegvt_client    "Share Government Clients"
	
	********************************************************************************
	* summary statistics by group
	********************************************************************************
		*Descriptives
		eststo clear
		eststo: estpost sum $X sharegvt_client nfirms if group==3
		eststo: estpost sum $X sharegvt_client nfirms if group==2
		eststo: estpost sum $X nfirms if group==1

	*Table
	esttab using "$path_tables/v3_summary.tex",label mtitles("\shortstack{Strong\\ Connection}" "\shortstack{Weak\\ Connection}"  "\shortstack{Donor\\ Pool}") replace nodepvars  	cell((mean(fmt($fmt_) label("Mean")) sd(fmt(%9.2f) label("SD"))))  number aux(sd)
	esttab                           ,label mtitles("\shortstack{Strong\\ Connection}" "\shortstack{Weak\\ Connection}"  "\shortstack{Donor\\ Pool}") replace nodepvars  	cell((mean(fmt($fmt_) label("Mean")) sd(fmt(%9.2f) label("SD"))))  number aux(sd)

	*Clean up: suppress missing dot in SD column for Number of Firms
	filefilter "$path_tables/v3_summary.tex" "$path_tables/v3_summary_tmp.tex", from("&           .") to("&            ")
	copy "$path_tables/v3_summary_tmp.tex" "$path_tables/v3_summary.tex", replace
	erase "$path_tables/v3_summary_tmp.tex"

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
		   legend(size(small) pos(12) ring(1) region(lwidth(none)) ///
		   row(1) col(3) lab(1 "CDF") lab(2 "Weak Connection") lab(3 "Strong Connection"))
	 graph export "$path_figures/connected_cutoff.pdf",replace  
		
	
