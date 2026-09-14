do "scripts/config.do"

 ********************************************************************************
*1) Import Data to be merged later
********************************************************************************
*a) Control group
use "$path_cleaned/returns_moredays.dta", clear
	keep if group==1
	*keep George Floyd's Event
	*keep if panel==6
	*temporary data
	sort gvkey mdy
	tempfile control
save `control'

********************************************************************************
*2) Master
********************************************************************************
*a) Panel
use "$path_cleaned/returns_moredays.dta", clear
*keep George Floyd's Event
*keep if panel==6
	*Merge
	sort gvkey
	joinby gvkey using "$path_cleaned/clean_categoryV4.dta"

	*Drop
	drop if group==3 & category==""
	sort  category gvkey mdy
	*br gvkey conm category mdy if group==3

	*Labels/Subtitles
	global N0 "Death of Trayvon Martin"
	global N1 "Acquittal of George Zimmerman"
	global N2 "Mistrial of Jordan Davis"
	global N3 "Death of Michael Brown"
	global N4 "Death of Tamir Rice"
	global N5 "Death of Alton Sterling"
	global N6 "Death of George Floyd"

	*Final cleaning
	gen ID_abb_cat=""
	foreach v in 0 1 2 3 4 5 6{
			replace ID_abb_cat=conm + "${N`v'}" if panel==`v'
	}

	*Merge Client
	sort gvkey
	merge m:1 gvkey using "$path_cleaned/gvt_client.dta"
	keep if _merge==3
	drop _merge

	drop if group==2

	*Append Control
	append using `control'
	duplicates drop
	replace ID_abb_cat=ID_abb if group==1

	*Create group_product
	gen group_product=categoryID

*Export
sort panel group_product permno mdy
export delimited using "$path_cleaned/returns_daily_category_fullV4.csv", replace

