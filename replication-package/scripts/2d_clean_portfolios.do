do "scripts/config.do"

********************************************************************************
*Append the data
********************************************************************************
*Main
use "$path_cleaned/strong_portfolio.dta",clear
	append using "$path_cleaned/weak_portfolio.dta"
	*Append placebos
	append using "$path_cleaned/placebos_strong_portfolio.dta"
	append using "$path_cleaned/placebos_weak_portfolio.dta"

*Save
sort estimation portofolio mofd
save "$path_cleaned/full_portfolio.dta",replace
export delimited using "$path_cleaned/full_portfolio.csv", replace
