* Create mktval.dta — ported from old_code/code/analysis/12_marketvalue.do
do "scripts/config.do"

use "$path_cleaned/returns_moredays.dta", clear
drop if group==1
keep if Et==-62
collapse (mean) mktval=mkvaltq sharegvt_client, by(group panel)
su mktval if group==2
gen weak_mktval=`r(mean)'
su mktval if group==3
gen strong_mktval=`r(mean)'
su sharegvt_client if group==2
gen weak_sharegvt=`r(mean)'
su sharegvt_client if group==3
gen strong_sharegvt=`r(mean)'
sort group panel
save "$path_cleaned/mktval.dta", replace
