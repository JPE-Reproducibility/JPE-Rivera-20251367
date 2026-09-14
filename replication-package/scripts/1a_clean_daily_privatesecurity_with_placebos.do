********************************************************************************
********************************************************************************
*Directory
********************************************************************************
do "scripts/config.do"


********************************************************************************
*1a) Private Security Roster
********************************************************************************
*a) Roster
use "$path_raw_wrds/wrds_compustat.dta",clear
	*keep only relevant
	keep if gvkey!=.
	drop if cik==.
	keep gvkey cik conm
	*save temporary data	
	sort cik gvkey
	tempfile roster
	duplicates drop
save `roster'

* Private Security from 10K
gzimport delimited using "$path_raw_edgar/21_SEP_2024_AW_CatTermFreq_v3.csv.gz",clear
	*Rename
	rename company_cik cik
	
	*Type of forms
	gen forms_10K=report_type=="10-K"|report_type=="10-K/A"
	gen forms_10Q=report_type=="10-Q"|report_type=="10-Q/A"
	
	*Formatting date
	split report_period_ending,p("/") gen(tmp)
	destring tmp*,replace force
	rename tmp1 month
	rename tmp2 day
	rename tmp3 year
	gen mdy=mdy(month,day,year)
	format mdy %td
	
	*QOFD
	gen qofd=qofd(mdy)
	format qofd %tq
	replace qofd=qofd-1 if report_type=="10-Q/A"
	*MDY
	gen filing_mdy=mdy
	format filing_mdy %td
	*Year
	replace year=year-1 if report_type=="10-K/A"	
	
	*keep relevant
	keep if forms_10K==1
	keep if year>=2010
	keep if year<=2021	
	
	*Rename
	drop police_terms government_terms
	
	bys cik: egen minyear=min(year)
	
	*Collapse
	collapse (sum) *terms (last) minyear ,by(year cik)
	
	*Tsset
	tsset cik year
	tsfill,full
	sort cik year
	foreach v in  total privatesecurity{
		by cik: replace `v'=`v'[_n-1] if `v'==. & `v'[_n-1]!=. 				
	}
	
	keep if year>=minyear	
	
	*Exposure
	gen expo_gvt     = privatesecurity_terms*100/total_terms

	foreach v in privatesecurity{
			gen expo_`v'= `v'_terms*100/total_terms	
	}
	
	*Lag
	sort cik year
	foreach v in privatesecurity{
			bys cik: gen lag_expo_`v'= expo_`v'[_n-1]
	}
	
	*Lag terms
	sort cik year
	foreach v in privatesecurity{
			bys cik: gen lag_`v'_terms= `v'_terms[_n-1]
	}
	
	
	*Merge
	sort cik
	merge m:1 cik using `roster'
	keep if _merge==3
	drop _merge	
	
	*Labels
	label variable total_terms            "Total words"
	label variable privatesecurity_terms  "Private Security-related words"

*Save exposure
sort gvkey year
save "$path_cleaned/privatsesecurity_exposure_10K.dta",replace

********************************************************************************
*1b) Import Data to be merged later
********************************************************************************
*a) Police roster
use "$path_raw_wrds/wrds_compustat.dta",clear
	*Merge classification
	sort gvkey 
	merge 1:m gvkey using "$path_cleaned/privatsesecurity_exposure_10K.dta"
	keep if _merge==3
	drop _merge	

	*keep if non missing cik
	keep if cik!=.
	
	*Keep if US firms
	keep if loc=="USA"
	
	*Keep if SIC as PD
	gen PD_tmp= privatesecurity_terms >0
	bys gvkey: egen PD=max(PD_tmp)	
	bys sic: egen anyPDsic=max(PD)
	keep if anyPDsic==1	
	
	*keep only relevant
	keep if gvkey!=.
	keep gvkey PD 
	*save temporary data	
	sort gvkey
	tempfile police_ctrl
	duplicates drop
save `police_ctrl'

*b) Security daily
use "$path_raw_wrds/wrds_compustat.dta",clear
	rename lpermno permno 
	keep gvkey permno sic conm	ein cusip tic cik busdesc
	duplicates drop
	*temporary data	
	sort permno
	tempfile gvkey_permno
save `gvkey_permno'	


********************************************************************************
*2) Master 
********************************************************************************
* Betasuite
gzimport delimited using "$path_raw_wrds/betasuitedaily_4factors.csv.gz",clear

	*Extract data from WRDS, Fama-French 4 factors
	*Max days: 252
	*Min days: 30
	*Drop if n is not 252, want to keep balanced panel for case studies analysis
	*keep if n<252
	
	*Merge gvkey
	sort permno
	joinby permno using `gvkey_permno'
	
	*Formatting/Cleaning
	 numdate daily mdy= date, pattern(YMD)
	 gen year=year(mdy)
	 gen fyear=year
	 gen mofd=mofd(mdy)
	 format mofd %tm
	 gen qofd=qofd(mdy)
	 format qofd %tq
	 
	*For each company, identify min/max fiscal year
	bys gvkey: egen minyear=min(year)
	bys gvkey: egen maxyear=max(year)
	
	*Need to be exposed to social events post 2013: Start of BLM with the acquittal of George Zimmerman 
	drop if maxyear<2014
	
	*Keep data after 2010
	keep if year>=2010

	*Keep data before 2021
	keep if year<=2021
	
	*Merge PD
	sort gvkey
	merge m:1 gvkey using `police_ctrl'
	keep if _merge==3
	drop _merge
	
	*Dummy for stocks exposed to PD 
	gen PDstocks=PD
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
	merge m:1 gvkey year using "$path_cleaned/privatsesecurity_exposure_10K.dta"
	keep if _merge==3
	drop _merge	
	
	*Events, Need to be careful with weekends and holidays
		*Death of Trayvon Martinm(2/26/2012)---SUNDAY
		gen event0=mdy(2,26,2012)+1		
		* Acquittal of George Zimmerman (7/13/2013)---SATURDAY
		gen event1=mdy(7,13,2013)+2
		*Mistrial of Jordan Davis (2/15/2014)---SATURDAY+Holiday on February 17, 2014
		gen event2=mdy(2,15,2014)+3
		* Death of Michael Brown (8/9/2014)---SATURDAY
		gen event3=mdy(8,9,2014)+2
		* Death of Tamir Rice (11/22/2014)-----SATURDAY
		gen event4=mdy(11,22,2014)+2		
		* Death of Alton Sterling (7/5/2016)---TUESDAY
		gen event5=mdy(7,5,2016)		
		* Death of George Floyd (5/25/2020)---MONDAY---Memorial Day
		gen event6=mdy(5,25,2020)+1	
		
	*Placebos using mass shootings
	gen placebo1=mdy(7,12,2012)
	gen placebo2=mdy(12,14,2012)
	gen placebo3=mdy(9,16,2013)
	gen placebo4=mdy(12,2,2015)
	gen placebo5=mdy(6,12,2016)+1
	gen placebo6=mdy(10,1,2017)+1
	gen placebo7=mdy(11,5,2017)+1
	gen placebo8=mdy(2,14,2018)
	gen placebo9=mdy(11,8,2018)
	gen placebo10=mdy(5,31,2019)
	gen placebo11=mdy(8,2,2019)
	
	*Placebos using ADL data
	*gen adl_placebo1=mdy(6,26,2021)+2
	gen adl_placebo1=mdy(4,27,2019)+2
	gen adl_placebo2=mdy(10,27,2018)+2
	gen adl_placebo3=mdy(7,2,2018)
	gen adl_placebo4=mdy(1,2,2018)
	gen adl_placebo5=mdy(8,12,2017)+2
	gen adl_placebo6=mdy(3,30,2017)
	gen adl_placebo7=mdy(6,17,2015)
	gen adl_placebo8=mdy(4,13,2014)+1

		
	*Keep firms that existed after event1, creation of BLM
	gen postBLM=mdy>event1
	bys gvkey: egen anypostBLM=max(postBLM)
	keep if anypostBLM==1
	
	*keep if Firms is in the US 
	keep if loc=="USA"
	

	* Average Exposure 
	foreach v in privatesecurity{
		bys gvkey: egen avgexpo_`v'=mean(expo_`v')
	}
	
	*Business day calendar
	egen day=group(mdy)
	
	*Sort data
	sort gvkey permno mdy
	

	*Time until event
	foreach v in 0 1 2 3 4 5 6{
		su day if mdy==event`v'
		gen t`v'=day-r(mean)
	}

	*Time until masshooting placebo
	foreach v of numlist 1/11{
		su day if mdy==placebo`v'
		gen Pt`v'=day-r(mean)
	}

	*Time until ADL-placebo
	foreach v of numlist 1/8{
		su day if mdy==adl_placebo`v'
		gen APt`v'=day-r(mean)
	}
	

	*AR
	gen AR=exret
	
	*CAR
	sort permno  mdy
	foreach v in 0 1 2 3 4 5 6{
		by permno: gen CAR_event`v'=sum(AR)       if t`v'>=0
		by permno: gen sumR_event`v' =sum(ret)    if t`v'>=-63 & t`v'<=21 	
		by permno: gen sumAR_event`v'=sum(AR)     if t`v'>=-63 & t`v'<=21 	
		by permno: gen sumiVol_event`v'=sum(ivol) if t`v'>=-63 & t`v'<=21 			
	}
	
	*Mass Shooting Placebos CAR
	sort permno  mdy
	foreach v of numlist 1/11{
		by permno: gen PsumAR_event`v'=sum(AR) if Pt`v'>=-63 & Pt`v'<=21 	
	}

	*ADL Placebos CAR
	sort permno  mdy
	foreach v of numlist 1/8{
		by permno: gen APsumAR_event`v'=sum(AR) if APt`v'>=-63 & APt`v'<=21 	
	}

	*Polynomial
	sort permno  mdy
	foreach v in 1 2 3{
	 	by permno:gen lsize`v'          =size[_n-1]^`v'
	 	by permno:gen lprofitability`v' =profitability[_n-1]^`v'		
	 	by permno:gen lleverage`v'      =leverage[_n-1]^`v'
	}

	* Average Exposure 
	sort gvkey permno mdy
	egen fgvkey=tag(gvkey)
	foreach v in privatesecurity{
		su avgexpo_`v' if PD==1 & fgvkey==1,detail
		gen q75_expo_`v'=avgexpo_`v'>=r(p75)
		gen q50_expo_`v'=avgexpo_`v'>=r(p50)		
	}

	*Labels/Subtitles
	global N0 "Death of Trayvon Martin"
	global N1 "Acquittal of George Zimmerman"
	global N2 "Mistrial of Jordan Davis"	
	global N3 "Death of Michael Brown"
	global N4 "Death of Tamir Rice"
	global N5 "Death of Alton Sterling"	
	global N6 "Death of George Floyd"	

	*Save	
	save "$path_cleaned/intermediate_daily.dta",replace
			
	*Save Data for Synthetic Methods and Synthetic DID
	use "$path_cleaned/intermediate_daily.dta",clear
	foreach v in 0 1 2 3 4 5 6{
		preserve
			gen panel =`v'
			gen description="${N`v'}"
			gen Et=t`v'
			gen CAR=CAR_event`v'
			gen sumAR=sumAR_event`v'
			gen sumR =sumR_event`v'			
			gen sumiVol=sumiVol_event`v'
			*Balanced panel
			keep if t`v'>-63
			keep if t`v'<22
			gen Ft=Et+14 
			
			*Keep relevant
			keep conm gvkey permno sic PDstocks AR CAR sumAR sumR ret alpha panel description Et  Ft ///
				mdy *size* *leverage* *profitability* expo* q75* q50 n state sumiVol* ///
				alpha b_mkt b_smb b_hml b_umd any* cusip tic cik conm ret exre ivol tvol r2 mofd *expo* busdesc PRisk-Sentiment mdy_earncall mkvalt*
			
			*Save	
			save "$path_cleaned/panel`v'.dta",replace
		restore
	} 
	
	 *Final data
	 preserve
		 *Append
		 use "$path_cleaned/panel0.dta",clear
		 foreach v in 1 2 3 4 5 6{	 
			append using "$path_cleaned/panel`v'.dta"
		}
		*Erase irrelavant
		 foreach v in 0 1 2 3 4 5 6{	 
			erase "$path_cleaned/panel`v'.dta"
		}
		
		*keep if n=252
		keep if n==252
		
		*Final cleaning 
		egen ID=group(permno)
		gen ID_abb=""
		foreach v in 0 1 2 3 4 5 6{
			replace ID_abb=conm + "${N`v'}" if panel==`v'
		
		}
		egen idnum=group(ID panel permno)
		*Treat
		gen Treat=PDstocks==1 & Et>=0
		gen FTreat=PDstocks==1 & Ft>=0
		
		*Drop gvkey with missing AR or sumAR or missX
		gen missVar=AR==.|sumAR==.|leverage==.|size==.|profitability==.
		bys permno: egen evermissVar=max(missVar)
		drop if evermissVar==1
		
		*Group
			gen  group=1 if PD==0
		replace  group=2 if PD==1 & q75_expo_privatesecurity==0
		replace  group=3 if PD==1 & q75_expo_privatesecurity==1
		drop if q75_expo_privatesecurity==1 & PD==0
		
		
			gen  group_p50=1 if PD==0
		replace  group_p50=2 if PD==1 & q50_expo_privatesecurity==0
		replace  group_p50=3 if PD==1 & q50_expo_privatesecurity==1
		drop if q50_expo_privatesecurity==1 & PD==0		
		
		*Balanced panel
		gen rec=1
		bys permno panel: egen nobs=sum(rec)
		drop if nobs!=84
		
		*Drop State without PD
		bys state: egen anyPDstate=max(PDstocks)
		keep if anyPDstate==1

		*Drop SIC without PD
		bys sic: egen anyPDsic=max(PDstocks)
		keep if anyPDsic==1
		
		*Created variables with treated company names
		gen treated_company=conm if group==2|group==3

		*Export
		sort permno mdy
		export delimited using "$path_cleaned/returns_moredays_privatesecurity.csv", replace
		save "$path_cleaned/returns_moredays_privatesecurity.dta", replace
	 restore
	 
	 
	 
	 
	 /**************************************************************************
	 **************************************************************************
	 **************************************************************************
	 **************************************************************************
	 PLACEBOS SAMPLE FOR MASS SHOOTINGS
	 **************************************************************************
	 **************************************************************************
	 **************************************************************************
	 **************************************************************************
	 **************************************************************************
	 ***************************************************************************/
	 *Save Data for Synthetic Methods and Synthetic DID
	use "$path_cleaned/intermediate_daily.dta",clear
	foreach v of numlist 1/11 {
		preserve
			gen placebo =`v'
			gen description="Mass Shooting `v'"
			gen Et=Pt`v'
			gen PsumAR=PsumAR_event`v'			
			*Balanced placebo
			keep if Pt`v'>-63
			keep if Pt`v'<22
			
			*Keep relevant
			keep conm gvkey permno sic PDstocks AR  *sumAR ret alpha placebo description Et  ///
				mdy *size* *leverage* *profitability* expo* q75* q50* n state ///
				alpha b_mkt b_smb b_hml b_umd any* cusip tic cik conm ret exre sumiVol* ivol tvol r2 mofd *expo* busdesc PRisk-Sentiment mdy_earncall mkval*
			
			*Save	
			save "$path_cleaned/placebo`v'_privatesecurity.dta",replace
		restore
	} 
	
	 *Final data
	 preserve
		 *Append
		 use "$path_cleaned/placebo1_privatesecurity.dta",clear
		 foreach v of numlist 2/11{	 
			append using "$path_cleaned/placebo`v'_privatesecurity.dta"
		}
		*Erase irrelavant
		 foreach v of numlist 1/11{	 
			erase "$path_cleaned/placebo`v'_privatesecurity.dta"
		}
		
		*keep if n=252
		keep if n==252
		
		*Final cleaning 
		egen ID=group(permno)
		gen ID_abb=""
		foreach v of numlist 1/11{
			replace ID_abb=conm + "${N`v'}" if placebo==`v'
		}
		egen idnum=group(ID placebo permno)
		*Treat
		gen Treat=PDstocks==1 & Et>=0
		
		*Drop gvkey with missing AR or sumAR or missX
		gen missVar=AR==.|PsumAR==.|leverage==.|size==.|profitability==.
		bys permno: egen evermissVar=max(missVar)
		drop if evermissVar==1
		
		*Group
			gen  group=1 if PD==0
		replace  group=2 if PD==1 & q75_expo_privatesecurity==0
		replace  group=3 if PD==1 & q75_expo_privatesecurity==1
		drop if q75_expo_privatesecurity==1 & PD==0
		

		*Balanced placebo
		gen rec=1
		bys permno placebo: egen nobs=sum(rec)
		drop if nobs!=84
		
		*Drop State without PD
		bys state: egen anyPDstate=max(PDstocks)
		keep if anyPDstate==1

		*Drop SIC without PD
		bys sic: egen anyPDsic=max(PDstocks)
		keep if anyPDsic==1

		*Export
		sort permno mdy
		export delimited using "$path_cleaned/returns_moredays_placebos_privatesecurity.csv", replace
	 restore

	 /**************************************************************************
	 **************************************************************************
	 **************************************************************************
	 **************************************************************************
	 PLACEBOS SAMPLE USING ADL
	 **************************************************************************
	 **************************************************************************
	 **************************************************************************
	 **************************************************************************
	 **************************************************************************
	 ***************************************************************************/
	 *Save Data for Synthetic Methods and Synthetic DID
	use "$path_cleaned/intermediate_daily.dta",clear
	foreach v of numlist 1/8 {
		preserve
			gen adl_placebo =`v'
			gen description="ADL `v'"	
			gen Et=APt`v'
			gen APsumAR=APsumAR_event`v'			
			*Balanced placebo
			keep if APt`v'>-63
			keep if APt`v'<22
			
			*Keep relevant
			keep conm gvkey permno sic PDstocks AR  *sumAR ret alpha adl_placebo description Et  ///
				mdy *size* *leverage* *profitability* expo* q75* n state ///
				alpha b_mkt b_smb b_hml b_umd any* cusip tic cik conm ret exre sumiVol* ivol tvol r2 mofd *expo* busdesc PRisk-Sentiment mdy_earncall mkval*
			
			*Save	
			save "$path_cleaned/adl_placebo`v'_privatesecurity.dta",replace
		restore
	} 
	
	 *Final data
	 preserve
		 *Append
		 use "$path_cleaned/adl_placebo1_privatesecurity.dta",clear
		 foreach v of numlist 2/8{	 
			append using "$path_cleaned/adl_placebo`v'_privatesecurity.dta"
		}
		*Erase irrelavant
		 foreach v of numlist 1/8{	 
			erase "$path_cleaned/adl_placebo`v'_privatesecurity.dta"
		}
		
		*keep if n=252
		keep if n==252
		
		*Final cleaning 
		egen ID=group(permno)
		gen ID_abb=""
		foreach v of numlist 1/8{
			replace ID_abb=conm + "${N`v'}" if adl_placebo==`v'
		}
		egen idnum=group(ID adl_placebo permno)
		*Treat
		gen Treat=PDstocks==1 & Et>=0
		
		*Drop gvkey with missing AR or sumAR or missX
		gen missVar=AR==.|APsumAR==.|leverage==.|size==.|profitability==.
		bys permno: egen evermissVar=max(missVar)
		drop if evermissVar==1
		
		*Group
			gen  group=1 if PD==0
		replace  group=2 if PD==1 & q75_expo_privatesecurity==0
		replace  group=3 if PD==1 & q75_expo_privatesecurity==1
		drop if q75_expo_privatesecurity==1 & PD==0
		

		*Balanced placebo
		gen rec=1
		bys permno adl_placebo: egen nobs=sum(rec)
		drop if nobs!=84
		
		*Drop State without PD
		bys state: egen anyPDstate=max(PDstocks)
		keep if anyPDstate==1

		*Drop SIC without PD
		bys sic: egen anyPDsic=max(PDstocks)
		keep if anyPDsic==1

		*Export
		sort permno mdy
		export delimited using "$path_cleaned/returns_moredays_ADL_placebos_privatesecurity.csv", replace
	 restore
	 

