do "scripts/config.do"

 ********************************************************************************
*1) Import Data to be merged later
********************************************************************************
*a) Name
use "$path_cleaned/returns_moredays.dta", clear
	*keep relevant
	keep conm gvkey group
	duplicates drop
	*temporary data
	sort gvkey
	tempfile conm_name
save `conm_name'

*b) Categorization
gzimport delimited using "$path_raw_survey/Business_description - agg_form_responses_long_21_may_2022.csv.gz",clear

	*Merge Group
	sort gvkey
	merge m:1 gvkey using `conm_name'
	keep if group==3
	drop _merge

	*Keep relevant
	drop categorization entry
	drop if category==""
	duplicates drop

	gen rec=1
	bys category: egen nfreq=sum(rec)
	drop if nfreq<2

	*Identify duplicates
	sort category gvkey
	by category: gen nofirm=_n

	foreach v in 1 2 3 4 5{
		gen f`v'=conm if nofirm==`v'
	}

	foreach v in 1 2 3 4 5{
		bys category: egen name`v'=mode(f`v')
	}

	*Keep relevant
	keep category name*
	duplicates drop

	*Identify Duplicates
	gen categoryID=name1+"--"+name2+"--"+name3+"--"+name4+"--"+name5
	egen numcategoryID=group(categoryID)
	keep categoryID category num*
	egen fobs=tag(num)
	gen dup=1-fobs
	bys categoryID: egen anyduplicate=max(dup)

	*Rename categories
		gen long_category=category
	replace long_category="alarms, evacuation + public address equipment"                   if numcategoryID==3
	replace long_category="GPS + Detention Equip + Evidence Storage + Report Writing"       if numcategoryID==13
	replace long_category="CCTV + Community Policing"                                       if numcategoryID==19
	replace long_category="Personnel Mgt + Predictive Policing + Networks + Mobile Devices" if numcategoryID==23
	replace long_category="911/CAD + Mapping"                          				        if numcategoryID==24
	replace long_category="Firearms + Firearms Training"                        	        if numcategoryID==33

	*Keep relevant
	keep long_* category categoryID
	duplicates drop

*Save
save "$path_cleaned/long_category.dta",replace

*c) Merge back
gzimport delimited using "$path_raw_survey/Business_description - agg_form_responses_long_21_may_2022.csv.gz",clear
	drop entry
	*Merge
	sort category
	merge m:1 category using "$path_cleaned/long_category.dta"
	keep if _merge==3
	drop _merge

	*Keep relevant
	keep long_* categoryID gvkey
	duplicates drop
	rename long_category category

*Save
sort gvkey
save "$path_cleaned/clean_categoryV4.dta",replace
