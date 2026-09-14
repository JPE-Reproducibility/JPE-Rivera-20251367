do "scripts/config.do"

********************************************************************************
* IBES STRONGLY CONNECTED FIRMS
********************************************************************************
********************************************************************************
*A1) Import Control/Strong Firms
********************************************************************************
use "$path_cleaned/returns_moredays.dta",clear
	*Keep strong + control in  the same SIC firms associated with
	keep if group==1|group==3
	keep tic cusip conm cik sic group state
	duplicates drop
	gen strong=group==3

	*Reformate cusip
	gen cusip8=substr(cusip, 1, 8)

*Save
sort cusip8
save "$path_cleaned/rosters_cusip8_strong.dta",replace

********************************************************************************
*B1) Clean the Consensus Recommendations
********************************************************************************
gzimport delimited using "$path_raw_ibes/ibes_rec_consensus.csv.gz", clear
	*Rename the cusip
	rename cusip cusip8

	*Merge Roster
	sort cusip8
	merge m:1 cusip8 using "$path_cleaned/rosters_cusip8_strong.dta"
	keep if _merge==3
	drop _merge

	*Date
	split statpers,gen(tmp) p("-")
	destring tmp*, force replace
	rename tmp1 year
	rename tmp2 month
	rename tmp3 day
	gen mdy=mdy(month,day,year)
	format mdy %td
	gen mofd=mofd(mdy)
	format mofd %tm
	gen wofd=wofd(mdy)
	format mofd %tm
	gen t=mdy-mdy(5,25,2020)
	gen tm=mofd-mofd(mdy(5,25,2020))
	gen tw=wofd-wofd(mdy(5,25,2020))

	*Keep Relevant Year
	keep if year>=2010
	keep if year<=2022
	keep if usfirm==1

*Save
sort cusip8	mofd
save "$path_cleaned/ibes_rec_consensus_strong.dta",replace



********************************************************************************
* IBES WEAKLY CONNECTED FIRMS
********************************************************************************
********************************************************************************
*A1) Import Control/Weak Firms
********************************************************************************
use "$path_cleaned/returns_moredays.dta",clear
	*Keep weak + control in  the same SIC firms associated with
	keep if group==1|group==2
	keep tic cusip conm cik sic group state
	duplicates drop
	gen weak=group==2

	*Reformate cusip
	gen cusip8=substr(cusip, 1, 8)

*Save
sort cusip8
save "$path_cleaned/rosters_cusip8_weak.dta",replace

********************************************************************************
*B1) Clean the Consensus Recommendations
********************************************************************************
gzimport delimited using "$path_raw_ibes/ibes_rec_consensus.csv.gz", clear
	*Rename the cusip
	rename cusip cusip8

	*Merge Roster
	sort cusip8
	merge m:1 cusip8 using "$path_cleaned/rosters_cusip8_weak.dta"
	keep if _merge==3
	drop _merge

	*Date
	split statpers,gen(tmp) p("-")
	destring tmp*, force replace
	rename tmp1 year
	rename tmp2 month
	rename tmp3 day
	gen mdy=mdy(month,day,year)
	format mdy %td
	gen mofd=mofd(mdy)
	format mofd %tm
	gen wofd=wofd(mdy)
	format mofd %tm
	gen t=mdy-mdy(5,25,2020)
	gen tm=mofd-mofd(mdy(5,25,2020))
	gen tw=wofd-wofd(mdy(5,25,2020))

	*Keep Relevant Year
	keep if year>=2010
	keep if year<=2022
	keep if usfirm==1

*Save
sort cusip8	mofd
save "$path_cleaned/ibes_rec_consensus_weak.dta",replace
