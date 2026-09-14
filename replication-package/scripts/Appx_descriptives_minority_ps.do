do "scripts/config.do"

********************************************************************************
*0) Preliminary cleaning
********************************************************************************
* Import Private security
import delimited "$path_cleaned/returns_moredays_privatesecurity_refined.csv",clear
	* minor modification
	rename et Et
	gen sample="ps"
	keep lsize1 lprofitability1 lleverage1 Et conm gvkey sample group
	
	* Append CEO data
	append using "$path_cleaned/returns_moredays_AsianCEO.dta"
	replace sample="asian_ceo" if sample==""
	append using "$path_cleaned/returns_moredays_BlackCEO.dta"
	replace sample="black_ceo" if sample==""
	append using "$path_cleaned/returns_moredays_HispCEO.dta"
	replace sample="hisp_ceo" if sample==""	

	********************************************************************************
	*1) Descriptives using daily data: summary statistics by group
	********************************************************************************
	*Global
	global X    "lsize1 lprofitability1 lleverage1"
	global fmt_ "%9.2f            %9.2f %9.2f       %11.0gc"
	
	*Keep Baseline
	keep if Et==-1
	
	*Number of firms/obs
	gen nfirms=.
	foreach v in asian_ceo black_ceo hisp_ceo ps {
		distinct gvkey               if group==1 & sample=="`v'"
		replace nfirms= r(ndistinct) if group==1 & sample=="`v'"
		distinct gvkey               if group==3 & sample=="`v'"
		replace nfirms= r(ndistinct) if group==3 & sample=="`v'"
	}
	
	*Label
	label variable lsize1          "Size"
	label variable lprofitability1 "Profitability"
	label variable lleverage1      "Leverage"		
	label variable nfirms          "Number of Firms"

	*Descriptives
	eststo clear
	foreach v in asian_ceo black_ceo hisp_ceo ps {	
		eststo: estpost sum $X nfirms if group==3 & sample=="`v'"
		eststo: estpost sum $X nfirms if group==1 & sample=="`v'"
    }


	*Table
	esttab    using "$path_tables/summary_minority_ps.tex"                        ,label mtitles("\shortstack{Asian CEO \\ Treat}" "\shortstack{Asian CEO \\ Donor Pool}"  ///
												    "\shortstack{Black CEO \\ Treat}" "\shortstack{Black CEO \\ Donor Pool}"  ///
												    "\shortstack{Hisp. CEO \\ Treat}" "\shortstack{Hisp. CEO \\ Donor Pool}"  ///	
												    "\shortstack{Priv. Safety \\ Treat}" "\shortstack{Priv. Safety  \\ Donor Pool}")  ///
													replace nodepvars  	cell((mean(fmt($fmt_) label("Mean")) sd(fmt(%9.2f) label("SD"))))  number aux(sd)
	
	esttab                           ,label mtitles("\shortstack{Asian CEO \\ Treat}" "\shortstack{Asian CEO \\ Donor Pool}"  ///
												    "\shortstack{Black CEO \\ Treat}" "\shortstack{Black CEO \\ Donor Pool}"  ///
												    "\shortstack{Hisp. CEO \\ Treat}" "\shortstack{Hisp. CEO \\ Donor Pool}"  ///	
												    "\shortstack{Priv. Safety \\ Treat}" "\shortstack{Priv. Safety  \\ Donor Pool}")  ///
													replace nodepvars  	cell((mean(fmt($fmt_) label("Mean")) sd(fmt(%9.2f) label("SD"))))  number aux(sd)
		
	
	