do "scripts/config.do"

********************************************************************************
*1) Import Data to be merged later
********************************************************************************
*a) Police roster
use "$path_cleaned/roster.dta",clear
	*keep only relevant
	keep if gvkey!=.
	keep gvkey PD cik conm
	*save temporary data
	sort cik gvkey
	tempfile police_ctrl
	duplicates drop
save `police_ctrl'

*b) EDGAR
gzimport delimited using "$path_raw_edgar/18_APR_2022_PN_CatTermFreq.csv.gz",clear
	*Rename
	rename company_cik cik

	*Type of forms
	gen forms_10K=report_type=="10-K"|report_type=="10-K/A"
	gen forms_10Q=report_type=="10-Q"|report_type=="10-Q/A"

	*Formatting date
	gen tmp = date(report_period_ending, "YMD")
	*QOFD
	gen qofd=qofd(tmp)
	format qofd %tq
	replace qofd=qofd-1 if report_type=="10-Q/A"
	*MDY
	gen filing_mdy=tmp
	format filing_mdy %td
	*Year
	gen year=year(tmp)
	replace year=year-1 if report_type=="10-K/A"
	drop tmp

	*keep relevant
	keep if forms_10K==1
	keep if year>=2010
	keep if year<=2021

	*Rename
	drop police_terms government_terms

	foreach v in crime reform police government {
			rename `v' `v'_terms
	}

	bys cik: egen minyear=min(year)

	*Collapse
	collapse (sum) *terms (last) minyear ,by(year cik)

	*Tsset
	tsset cik year
	tsfill,full
	sort cik year
	foreach v in  total crime reform police government{
		by cik: replace `v'=`v'[_n-1] if `v'==. & `v'[_n-1]!=.
	}


	keep if year>=minyear


	*Exposure
	gen expo_gvt     = government_terms*100/total_terms
	gen expo_policing= police_terms*100/total_terms

	foreach v in crime reform police government{
			gen expo_`v'= `v'_terms*100/total_terms
	}

	*Lag
	sort cik year
	foreach v in crime reform police government{
			bys cik: gen lag_expo_`v'= expo_`v'[_n-1]
	}

	*Lag terms
	sort cik year
	foreach v in crime reform police government{
			bys cik: gen lag_`v'_terms= `v'_terms[_n-1]
	}


	*Merge
	sort cik
	merge m:1 cik using `police_ctrl'
	keep if _merge==3
	drop _merge

	*Labels
	label variable total_terms       "Total words"
	label variable police_terms      "Police-related words"
	label variable government_terms  "Government-related words"
	label variable police_terms      "Exposure to Policing"
	label variable government_terms  "Exposure to Government"

*Save exposure
sort gvkey year
save "$path_cleaned/exposure_10K.dta",replace


