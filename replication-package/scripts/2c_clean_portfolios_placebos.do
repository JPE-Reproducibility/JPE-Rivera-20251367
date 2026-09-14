do "scripts/config.do"


********************************************************************************
********************************************************************************
********************************************************************************
*Construct Portofolio
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
*1) Import Data to be merged later
********************************************************************************
*a) Get the roster from the daily data
use "$path_cleaned/returns_moredays.dta",clear

	keep gvkey permno group PD cusip tic cik conm sic group
	duplicates drop

	*temporary data
	sort permno
	tempfile gvkey_permno
save `gvkey_permno'


***************************
*A) Factors - Monthly Freq
***************************
gzimport delimited using "$path_raw_wrds/Factors - Monthly Frequency.csv.gz",clear
	*Formatting/Cleaning
	 numdate daily mdy= dateff, pattern(YMD)
	 gen year=year(mdy)
	 gen fyear=year
	 gen mofd=mofd(mdy)
	 format mofd %tm
	*keep relevant
	 keep mofd mktrf smb hml rf umd
	*temporary data
	sort mofd
	tempfile FF_factors
save `FF_factors'


*********************************************************************************
*2) Donor Pool for strongly connected firms (median number in portofolio=18)
*********************************************************************************
use  "$path_cleaned/final_monthly_RAW.dta",clear
	*A) Prepare data for strong placebos
	*Merge gvkey
	sort permno
	joinby permno using `gvkey_permno'

	*keep only sic with strongly connected firms
	gen strong=group==3
	bys sic: egen anystrong=max(strong)
	keep if anystrong==1

	*keep only the placebos
	keep if group==1

	*B) Create portofolios
	foreach v of numlist 4/104{
	preserve
		di "portofolio: " `v'
		set seed `v'
		sample 18, by(mofd) count
		gen rec=1
		*Weghted returns by mkt value
		bys mofd: egen totmkt=sum(lagmktvalue)
		gen wgt=(lagmktvalue)/totmkt
		*verify sum weights equal 1
		bys mofd: egen sumwgt=sum(wgt)
		gen wgtret=wgt*ret

		*Collapse
		collapse (mean) ret (sum)nfirm_type3=rec wgtret (last)year,by(mofd)
			gen portofolio=`v'
			gen group=1

			**********************************
			*Compute AR
			**********************************
			*Merge FF
			sort mofd
			merge m:1 mofd using `FF_factors'
			keep if _merge==3
			drop _merge

			*Calculate exret with rolling window
			gen exret=.
			gen wexret=.
			gen netret=ret-rf
			gen wnetret=wgtret-rf
			gen n=_n-120 if year>=2010
			foreach l of numlist 1/143{
				sum mofd if n==`l'
				gen x=mofd-`r(mean)'
				*Exreturn
				quietly reg netret mktrf smb hml umd if x>=-60 & x<=-30
				replace exret=ret-_b[_cons]-_b[mktrf]*mktrf-_b[smb]*smb-_b[hml]*hml-_b[umd]*umd if n==`l'
				*Weighted Exreturn
				quietly reg wnetret mktrf smb hml umd if x>=-60 & x<=-30
				replace wexret=ret-_b[_cons]-_b[mktrf]*mktrf-_b[smb]*smb-_b[hml]*hml-_b[umd]*umd if n==`l'
				drop x
			}
			keep if year>=2010

		*temporary data
		sort portofolio mofd
		tempfile dt_donor_`v'
		save `dt_donor_`v''
	  restore
	}

* C) Append Data
use `dt_donor_4',clear
foreach v of numlist 5/104{
	append using `dt_donor_`v''
}

	*Events, Need to be careful with weekends and holidays
	*Death of Trayvon Martinm(2/26/2012)---SUNDAY
	gen event0=mofd(mdy(2,26,2012)+1)
	* Acquittal of George Zimmerman (7/13/2013)---SATURDAY
	gen event1=mofd(mdy(7,13,2013)+2)

	*Time until event
	foreach v in 0 {
		su mofd if mofd==event`v'
		gen t`v'=mofd-r(mean)
	}
	sort portofolio mofd t0
    by portofolio: gen sumR=sum(ret)    if t0>=-25
    by portofolio: gen sumAR=sum(exret) if t0>=-25
    by portofolio: gen sumwAR=sum(wexret) if t0>=-25
	drop if sumR==.
	drop if sumAR==.
	gen Et=t0

	*Treat
	gen PDstocks=group==2 | group==3
	gen Treat=PDstocks==1 & Et>=0

	*Group of estimation
	gen estimation=3

*Save data
sort portofolio mofd
save "$path_cleaned/placebos_strong_portfolio.dta",replace


*********************************************************************************
*3) Donor Pool for weakly connected firms (median number in portofolio=58)
*********************************************************************************
use  "$path_cleaned/final_monthly_RAW.dta",clear
	*A) Prepare data for weak placebos
	*Merge gvkey
	sort permno
	joinby permno using `gvkey_permno'

	*keep only sic with weakly connected firms
	gen weak=group==2
	bys sic: egen anyweak=max(weak)
	keep if anyweak==1

	*keep only the placebos
	keep if group==1

	*B) Create portofolios
	foreach v of numlist 4/104{
	preserve
		di "portofolio: " `v'
		set seed `v'
		sample 58, by(mofd) count
		gen rec=1
		*Weghted returns by mkt value
		bys mofd: egen totmkt=sum(lagmktvalue)
		gen wgt=(lagmktvalue)/totmkt
		*verify sum weights equal 1
		bys mofd: egen sumwgt=sum(wgt)
		gen wgtret=wgt*ret

		*Collapse
		collapse (mean) ret (sum)nfirm_type2=rec wgtret (last)year,by(mofd)
			gen portofolio=`v'
			gen group=1

			**********************************
			*Compute AR
			**********************************
			*Merge FF
			sort mofd
			merge m:1 mofd using `FF_factors'
			keep if _merge==3
			drop _merge

			*Calculate exret with rolling window
			gen exret=.
			gen wexret=.
			gen netret=ret-rf
			gen wnetret=wgtret-rf
			gen n=_n-120 if year>=2010
			foreach l of numlist 1/143{
				sum mofd if n==`l'
				gen x=mofd-`r(mean)'
				*Exreturn
				quietly reg netret mktrf smb hml umd if x>=-60 & x<=-30
				replace exret=ret-_b[_cons]-_b[mktrf]*mktrf-_b[smb]*smb-_b[hml]*hml-_b[umd]*umd if n==`l'
				*Weighted Exreturn
				quietly reg wnetret mktrf smb hml umd if x>=-60 & x<=-30
				replace wexret=ret-_b[_cons]-_b[mktrf]*mktrf-_b[smb]*smb-_b[hml]*hml-_b[umd]*umd if n==`l'
				drop x
			}
			keep if year>=2010

		*temporary data
		sort portofolio mofd
		tempfile dt_donor_`v'
		save `dt_donor_`v''
	  restore
	}

* C) Append Data
use `dt_donor_4',clear
foreach v of numlist 5/104{
	append using `dt_donor_`v''
}

	*Events, Need to be careful with weekends and holidays
	*Death of Trayvon Martinm(2/26/2012)---SUNDAY
	gen event0=mofd(mdy(2,26,2012)+1)
	* Acquittal of George Zimmerman (7/13/2013)---SATURDAY
	gen event1=mofd(mdy(7,13,2013)+2)

	*Time until event
	foreach v in 0 {
		su mofd if mofd==event`v'
		gen t`v'=mofd-r(mean)
	}
	sort portofolio mofd t0
    by portofolio: gen sumR=sum(ret)    if t0>=-25
    by portofolio: gen sumAR=sum(exret) if t0>=-25
    by portofolio: gen sumwAR=sum(wexret) if t0>=-25
	drop if sumR==.
	drop if sumAR==.
	gen Et=t0

	*Treat
	gen PDstocks=group==2 | group==3
	gen Treat=PDstocks==1 & Et>=0

	*Group of estimation
	gen estimation=2

*Save data
sort portofolio mofd
save "$path_cleaned/placebos_weak_portfolio.dta",replace
