do "scripts/config.do"

********************************************************************************
*1) Import Data to be merged later
********************************************************************************
* a) Police1
import excel "$path_raw_rosters/PD_atlas_rosters.xlsx", sheet("police1") cellrange(A1:J2046) firstrow clear
	*Keep relevant
	keep name bvd* ein*

	*Modify
	gen PD=1
	*EIN
	replace ein1 = subinstr(ein1, "-", "",.)
	replace ein2 = subinstr(ein2, "-", "",.)
	replace ein3 = subinstr(ein3, "-", "",.)
	replace ein4 = subinstr(ein4, "-", "",.)
	gen ein5 = regexs(2) if regexm(bvd1, "^([^0-9]*)([0-9]+)([^0-9]*)$")
	gen ein6 = regexs(2) if regexm(bvd2, "^([^0-9]*)([0-9]+)([^0-9]*)$")
	gen ein7 = regexs(2) if regexm(bvd3, "^([^0-9]*)([0-9]+)([^0-9]*)$")
	gen ein8 = regexs(2) if regexm(bvd4, "^([^0-9]*)([0-9]+)([^0-9]*)$")

	*Reshape
	gen IDN=_n
	reshape long ein bvd,i(IDN) j(einnum)
	duplicates drop
	drop if ein ==""
	drop IDN einnum
	duplicates drop

	*Keep if the US.
	gen US=regexm(bvd,"US")|ein!=""
	keep if US==1

	*Source
	gen police1=1

	*temporary data
	sort ein
	tempfile police1
save `police1'

* b0) Compustat (build wrds_compustat.dta from raw securitydaily so pipeline is self-contained)
gzimport delimited using "$path_raw_wrds/securitydaily.csv.gz",clear
	*keep relevant
	keep gvkey ein naics sic conm busdesc loc incorp addzip cik tic lper* cusip datadate
	replace ein= subinstr(ein, "-", "",.)
	duplicates drop
	sort ein datadate
	egen dup=tag(ein)
	keep if dup==1
	drop dup
*save
sort ein
save "$path_raw_wrds/wrds_compustat.dta",replace


* b1) Roster WRDS
use "$path_raw_wrds/wrds_compustat.dta",clear
	*Keep relevant
	keep gvkey conm cik cusip tic
	duplicates drop
	drop if cik==.
*Save roster
export delimited using "$path_cleaned/roster_wrds.csv", replace

* c) Fuzzy Match
gzimport delimited using "$path_raw_rosters/rosters_deduped.csv.gz",clear
	*Keep if tie to police
	gen pd=po_index!=.
	bys cluster_id: egen everpd=max(pd)
	keep if everpd==1
	*Keep if publicly traded
	gen public=gvkey!=.
	bys cluster_id: egen everpublic=max(public)
	keep if everpublic==1

	*Remove duplicates
	gen PD=1
	keep PD ein
	drop if ein==""
	duplicates drop

	*temporary data
	sort ein
	tempfile fuzz_match1
save `fuzz_match1'

* d) Fuzzy Match
use "$path_raw_rosters/fuzz_match.dta",clear
	*preliminary cleaning
	drop ID1
	duplicates drop

	*Match
	gen match=sname==sconm
	gen same_location=City==city

	*Manually verified-If same location, zip, perfect==0 and similar name---same company
	replace match=1 if same_location==1 & match==0

	*EIN
	replace ein = subinstr(ein, "-", "",.)

	*Keep relevant
	keep if match==1
	gen PD=1
	keep PD ein
	drop if ein==""
	duplicates drop

	*temporary data
	sort ein
	tempfile fuzz_match2
save `fuzz_match2'


********************************************************************************
* 2) Merge roster+wrds
********************************************************************************
use `police1',clear
keep PD ein
	append using `fuzz_match1'
	append using `fuzz_match2'
	duplicates drop

	*Merge with compustat
	sort ein
	merge m:1 ein using "$path_raw_wrds/wrds_compustat.dta"
	replace PD=0 if PD==.
	gen public=_merge==3|_merge==2
	drop _merge

	*keep if non missing cik
	keep if cik!=.

	*Keep public firms
	keep if public==1

	*Keep if US firms
	keep if loc=="USA"

	*Keep if SIC as PD
	bys sic: egen anyPD=max(PD)
	keep if anyPD==1


*Save roster
save "$path_cleaned/roster.dta",replace
export delimited using "$path_cleaned/roster.csv", replace

********************************************************************************
*3) Extract for roster
********************************************************************************
use "$path_cleaned/roster.dta",clear
	keep gvkey cusip tic cik conm PD
	duplicates drop
	gsort -PD
*Save roster
export delimited using "$path_cleaned/roster_public.csv", replace

********************************************************************************
*General WRDS Roster
********************************************************************************
	* Compustat
	gzimport delimited using "$path_raw_wrds/securitydaily.csv.gz",clear
	keep gvkey conm city add1 addzip loc state ein
	drop if ein==""
	keep if loc=="USA"
	duplicates drop
*Save roster
export delimited using "$path_cleaned/roster_wrds.csv", replace




