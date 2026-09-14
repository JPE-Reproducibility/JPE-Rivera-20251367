do "scripts/config.do"

* Identify firms with firearm
use "$path_cleaned/clean_categoryV4.dta",clear
	replace category=lower(category)
	ta gvkey if regexm(category,"firearm")
	*Answer
     * 65344 or 115757


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

			sort permno Pt`v'
			by permno: gen CAR=sum(AR)       if Pt`v'>=0

			*Balanced placebo
			keep if Pt`v'>-63
			keep if Pt`v'<22

			*Keep relevant
			keep CAR conm gvkey permno sic PDstocks AR  *sumAR ret alpha placebo description Et  ///
				mdy *size* *leverage* *profitability* expo* q75* q50* n state ///
				alpha b_mkt b_smb b_hml b_umd any* cusip tic cik conm ret exre sumiVol* ivol tvol r2 mofd *expo* busdesc PRisk-Sentiment mdy_earncall *mkval*

			*Save
			save "$path_cleaned/placebo`v'.dta",replace
		restore
	}

	 *Final data
	 preserve
		 *Append
		 use "$path_cleaned/placebo1.dta",clear
		 foreach v of numlist 2/11{
			append using "$path_cleaned/placebo`v'.dta"
		}
		*Erase irrelavant
		 foreach v of numlist 1/11{
			erase "$path_cleaned/placebo`v'.dta"
		}

		*keep if n=252
		keep if n==252

		*Final cleaning
		egen ID=group(permno)
		gen ID_abb=""
		foreach v of numlist 1/11{
			replace ID_abb=conm + "Placebo `v'" if placebo==`v'
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
		replace  group=2 if PD==1 & q75_expo_policing==0
		replace  group=3 if PD==1 & q75_expo_policing==1
		drop if q75_expo_policing==1 & PD==0


		*Balanced placebo
		gen rec=1
		bys permno placebo: egen nobs=sum(rec)
		drop if nobs!=84

		*Drop State without PD
		bys state: egen anyPDstate=max(PDstocks)
		keep if anyPDstate==1

		*Drop SIC without PD
		keep if group==1|group==3
		bys sic: egen anyPDsic=max(PDstocks)
		keep if anyPDsic==1

		*keep relevant, i.e FIREARM firms
		keep if group==1|gvkey==115757|gvkey==65344

		*Export
		sort permno mdy
		save "$path_cleaned/returns_moredays_massshooting_smithwesson.dta",replace
		export delimited using "$path_cleaned/returns_moredays_massshooting_smithwesson.csv", replace
	 restore



