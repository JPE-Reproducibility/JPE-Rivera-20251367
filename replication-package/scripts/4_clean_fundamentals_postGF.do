do "scripts/config.do"

********************************************************************************
*1) Import Data to be merged later
********************************************************************************
*a) Import Crosswalk and Firms Exposed to Summer 2020
use "$path_cleaned/returns_moredays.dta",clear

	*Keep panel=6, i.e. George Floyd
	keep if panel==6

	*Keep relevant
	keep gvkey conm sic  group
	duplicates drop

	*Reshape and rename cusip
	keep sic group conm gvkey
	duplicates drop

	*temporary data
	sort gvkey
	tempfile gvkey
save `gvkey'


*b) Producer Price Index
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


*c) fundamentals quarterly
gzimport delimited using "$path_raw_wrds/fundamentals_yr2023.csv.gz", varnames(1) clear
	*rename
	rename lpermno permno

	*New variables
	gen size_qtr         =log(atq)
	gen profitability_qtr=niq/(cshoq*prccq)
	gen leverage_qtr     =(dlttq+dlcq)/seqq

	*Formatting/Cleaning
	 numdate quarterly qofd=datafqtr, pattern(YQ)

	 *Keep relevant
	 keep gvkey permno fyearq fqtr saleq epspiq prccq ppentq cogsq capxy qofd conm size_qtr profitability_qtr leverage_qtr mkvaltq revtq

	*Merge PPI
	sort qofd
	merge m:1 qofd using `ratio_ppi'
	keep if _merge==3
	drop _merge

	*Merge PD
	sort gvkey
	merge m:1 gvkey using `gvkey'
	keep if _merge==3
	drop _merge

	*Drop
	drop if group==2
	gen strong=group==3
	bys sic: egen everstrong=max(strong)
	drop if everstrong==0

	*Drop if no sale
	drop if sale==0
	drop if sale==.

	*Identify Mindate
	sort gvkey qofd
	bys gvkey: egen mindate=min(qofd)
	su mindate if group==3
	drop if qofd<`r(max)'

	*Lag Sales/Cogs
	sort gvkey permno qofd
	by gvkey permno : gen lag_saleq =saleq[_n-1]
	by gvkey permno : gen lag_cogsq =cogsq[_n-1]

	*Balanced
	gen rec=1
	bys gvkey: egen ntot=sum(rec)
	su ntot if group==3
	keep if ntot==14

	*Construct Outcomes
	sort gvkey qofd
	egen fobs=tag(gvkey)

	*Sales at the reference period
	gen fsale=saleq if fobs==1
	by gvkey: replace fsale=fsale[_n-1] if fobs==0

	*Cogs at the reference period
	gen fcogs=cogsq if fobs==1
	by gvkey: replace fcogs=fcogs[_n-1] if fobs==0

	*Growth relative to reference period
	by gvkey: gen gsale=(saleq-fsale)/fsale
	by gvkey: gen gcogs=(cogsq-fcogs)/fcogs

	*Time
	gen Et=qofd-qofd(mdy(5,25,2020))

	*Treat
	gen Treat=group==3 & Et>=0

	*Panel
	gen panel=6

	*ID
	egen idnum=group(permno)
	gen ID_abb=""
		foreach v in 0 1 2 3 4 5 6{
			replace ID_abb=conm + "${N`v'}" if panel==`v'

		}

*Export
sort permno qofd
export delimited using "$path_cleaned/fundamentals_PostSummer2020.csv", replace
save "$path_cleaned/fundamentals_PostSummer2020.dta", replace




