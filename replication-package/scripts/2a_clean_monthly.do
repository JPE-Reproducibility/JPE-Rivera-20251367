do "scripts/config.do"

********************************************************************************
*1) Import Data to be merged later
********************************************************************************
*a) Get the roster from the daily data
use "$path_cleaned/returns_moredays.dta",clear

	keep gvkey permno group PD cusip tic cik conm sic group*
	duplicates drop

	*temporary data
	sort permno
	tempfile gvkey_permno
save `gvkey_permno'

*b) Get the security monthly to compute mkt value
gzimport delimited using "$path_raw_wrds/securitymonthly.csv.gz",clear

	*cleaning
	 numdate daily mdy= date, pattern(YMD)
	 gen year=year(mdy)
	 gen fyear=year
	 gen mofd=mofd(mdy)
	 format mofd %tm
	 gen qofd=qofd(mdy)
	 format qofd %tq

	 *Market value
	 gen mktvalue=prc*shrout
	 sort permno mofd
	 by permno: gen lagmktvalue=mktvalue[_n-1]

	 *keep relevant
	 keep permno mofd lagmktvalue mktvalue ret year fyear qofd
	 duplicates drop

	*Return
	foreach v in ret {
		replace  `v' = subinstr(`v', "%", "", .)
		destring `v',force replace
	}

	*temporary data
	sort permno mofd
	tempfile permno_mktvalue
save `permno_mktvalue'

********************************************************************************
*2) Master for RAW data
********************************************************************************
use `permno_mktvalue'

	*Merge gvkey
	sort permno
	joinby permno using `gvkey_permno'

	*Dummy for stocks exposed to PD
	bys PDstocks: distinct gvkey

*Save
save "$path_cleaned/final_monthly_RAW.dta",replace

********************************************************************************
* 3) AR from Betasuite
********************************************************************************
gzimport delimited using "$path_raw_wrds/betasuitemonthly_4factors.csv.gz",clear

	*Formatting/Cleaning
	 numdate daily mdy= date, pattern(YMD)
	 gen year=year(mdy)
	 gen fyear=year
	 gen mofd=mofd(mdy)
	 format mofd %tm
	 gen qofd=qofd(mdy)
	 format qofd %tq

	*Merge gvkey
	sort permno
	joinby permno using `gvkey_permno'

	*For each company, identify min/max fiscal year
	bys gvkey: egen minyear=min(year)
	bys gvkey: egen maxyear=max(year)

	*Need to be exposed to social events post 2013: Start of BLM with the acquittal of George Zimmerman in July 2014
	drop if maxyear<2014

	*Keep data after 2010
	keep if year>=2010

	*Keep
	keep if year<=2021

	*Dummy for stocks exposed to PD
	bys PDstocks: distinct gvkey

	*Return, Excess return, ivol, tvol,r2
	foreach v in ret exre ivol tvol r2{
		replace  `v' = subinstr(`v', "%", "", .)
		destring `v',force replace
		replace `v'=`v'/100
	}

	*Merge fundamentals quarterly
	sort gvkey permno qofd
	merge m:1 gvkey permno qofd using "$path_cleaned/fundamentals_quarterly.dta"
	keep if _merge==3
	drop _merge

	*Merge fundamentals yearly
	sort gvkey permno fyear
	merge m:1 gvkey permno fyear using "$path_cleaned/fundamentals_yearly.dta"
	keep if _merge==3
	drop _merge

	*Merge classification
	sort gvkey year
	merge m:1 gvkey year using "$path_cleaned/exposure_10K.dta"
	keep if _merge==3
	drop _merge

*Save
save "$path_cleaned/final_monthly.dta",replace

