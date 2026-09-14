do "scripts/config.do"

********************************************************************************
*1) Import Data to be merged later
********************************************************************************
*a) Roster
use "$path_cleaned/roster.dta",clear
	keep if gvkey!=.
	keep gvkey PD conm
	collapse (max) PD (last) conm ,by(gvkey)
	*save temporary data
	sort gvkey
	tempfile police_ctrl
	duplicates drop
save `police_ctrl'

*b) Security daily
use "$path_raw_wrds/wrds_compustat.dta",clear
	rename lpermno permno
	keep gvkey permno sic conm	ein
	duplicates drop
	*temporary data
	sort permno
	tempfile gvkey_permno
save `gvkey_permno'


*c) Producer Price Index
*Producer Price Index by Commodity: Final Demand: Private Capital Equipment (WPSFD41312)
* https://fred.stlouisfed.org/series/WPSFD41312
gzimport delimited using "$path_raw_fred/fred_PPI.csv.gz", varnames(1) clear
	*rename
	rename wpsfd41312 ppi

	*Formatting/Cleaning
	gen tmp = date(date, "YMD")
	gen qofd=qofd(tmp)
	format qofd %tq

	*collapse
	collapse (mean)ppi,by(qofd)
	sort qofd
	gen ratio_ppi=ppi/ppi[_n-1]

	*save
	sort qofd
	tempfile ratio_ppi
save `ratio_ppi'

*d) Political Risks — SOURCE FILE MISSING (firmquarter_2021q4.dta)
*   Variables PRisk/Sentiment/mdy_earncall are carried through downstream scripts
*   but never consumed by any estimation, plot, table, or draft output.
*   Stub: build an empty earningcalls tempfile with the expected schema so the
*   m:1 merge and `keep PRisk-Sentiment mdy_earncall` patterns still resolve.
clear
set obs 0
gen double gvkey = .
gen int    qofd  = .
gen double PRisk = .
gen double Sentiment = .
gen int    mdy_earncall = .
format qofd %tq
format mdy_earncall %td
sort gvkey qofd
tempfile earningcalls
save `earningcalls'

************************************************
*d) fundamentals yearly
************************************************
gzimport delimited using "$path_raw_wrds/fundamentalsyearly.csv.gz", varnames(1) clear
	*rename
	rename lpermno permno

	*New variables
	gen size         =log(at)
	gen profitability=ni/(csho*prcc_f)
	gen leverage     =(dltt+dlc)/seq

	keep size* profita* lever* gvk emp fyear incorp loc naics sale cogs capx permno conm state mkval
	duplicates drop

	*Collapse
	collapse (mean)size profitability leverage emp sale cogs capx mkval (first) incorp loc naics conm state,by(gvkey permno fyear)

	*See if there is any gap in time for report
	sort gvkey permno fyear
	by gvkey permno: gen gap_t=fyear-fyear[_n-1]
	gen tmp1=gap_t==.|gap_t==1
	gen tmp0=1-tmp1
	bys gvkey permno: egen evergap_t=max(tmp0)
	drop if evergap_t==1
	drop tmp* ever*

	*Growth
	sort gvkey permno fyear
	foreach v in emp sale cogs capx{
		by gvkey permno: gen gr_`v'=(`v'-`v'[_n-1])/`v'[_n-1]
		winsor gr_`v',gen(wgr_`v'_yr) p(0.01)
		rename `v' `v'_yr
	}

	*Lag size, profitability, leverage
	sort gvkey permno fyear
	foreach v in size profitability leverage{
		by gvkey permno : gen l`v'_yr=`v_yr'[_n-1]
	}


	*keep relevant
	keep gvkey permno fyear *_yr loc naics incorp state *size* *profita* *lever* mkval


*save
sort gvkey permno fyear
save "$path_cleaned/fundamentals_yearly.dta",replace

************************************************
*e) fundamentals quarterly
************************************************
gzimport delimited using "$path_raw_wrds/fundamentalsquarterly.csv.gz", varnames(1) clear
	*rename
	rename lpermno permno

	*New variables
	gen size_qtr         =log(atq)
	gen profitability_qtr=niq/(cshoq*prccq)
	gen leverage_qtr     =(dlttq+dlcq)/seqq

	*Formatting/Cleaning
	 numdate quarterly qofd=datafqtr, pattern(YQ)

	 *Keep relevant
	 keep gvkey permno fyearq fqtr saleq epspiq cshoq prccq ppentq cogsq capxy qofd conm size_qtr profitability_qtr leverage_qtr mkvaltq revtq

	*Merge PPI
	sort qofd
	merge m:1 qofd using `ratio_ppi'
	keep if _merge==3
	drop _merge

	*Merge earning calls
	sort gvkey qofd
	merge m:1 gvkey qofd using `earningcalls'
	keep if _merge==3|_merge==1
	drop _merge


	*See if there is any gap in time for report
	sort gvkey permno qofd
	by gvkey permno: gen gap_t=qofd-qofd[_n-1]
	gen tmp1=gap_t==.|gap_t==1
	gen tmp0=1-tmp1
	bys gvkey permno: egen evergap_t=max(tmp0)
	drop if evergap_t==1
	drop tmp* ever*

	*Growth
	sort gvkey permno qofd
	foreach v in saleq cogsq capxy{
		by gvkey permno : gen gr_`v'=(`v'-`v'[_n-1])/`v'[_n-1]
		winsor gr_`v',gen(wgr_`v'_qtr) p(0.01)
		rename `v' `v'_qtr
	}

	*Lag size, profitability, leverage
	sort gvkey permno qofd
	foreach v in size profitability leverage{
		by gvkey permno : gen l`v'_qtr=`v'_qtr[_n-1]
	}
	by gvkey permno : gen lag_mkvaltq =mkvaltq[_n-1]
	by gvkey permno : gen lag_cshoq   =cshoq[_n-1]
	by gvkey permno : gen lag_prccq   =prccq[_n-1]

	*Ratio Investment/Capital
	gen delta=0.1
	sort gvkey permno qofd
	by gvkey permno : gen t=_n
	gen PPI=1
	gen recK= ppentq[_n-1] if t==2
	by gvkey permno : replace recK=ratio_ppi*delta*recK[_n-1]+capxy if t>2
	gen I_perK= capxy/recK
	winsor I_perK,gen(w_I_perK_qtr) p(0.01)

	*Earnings Surprise following Hassan and al (2019)
	by gvkey permno: gen earn_surp_qtr=(epspiq -epspiq[_n-4])/prccq

	*keep relevant
	keep gvkey permno qofd *_qtr PRisk-Sentiment mdy_earncall mkvaltq revtq lag_* cshoq prccq

*save
sort gvkey permno qofd
save "$path_cleaned/fundamentals_quarterly.dta",replace




