do "scripts/config.do"


***************************************
* 1) Import and Prepare data
***************************************
use "$path_cleaned/returns_moredays.dta",clear

*New variables
gen strong=group==3
gen weak  =group==2
label variable strong "Strong Tie"
label variable weak   "Weak Tie"
egen gstate=group(state)

label variable lsize1          "Size"
label variable lprofitability1 "Profitability"
label variable lleverage1      "Leverage"


***************************************
* 2) Estimations
***************************************
*Globals
global X "lsize1 lprofitability1 lleverage1"

*Estimation 
eststo clear
foreach v in 1 7 14 21{
	* OLS
	eststo:reghdfe CAR strong weak $X  i.panel i.gstate if Et==`v',absorb(sic)  cluster(gvkey)
}
	*Export to Tex
	esttab using "$path_tables/v3_table_CAR.tex", label se keep(strong weak $X) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("CAR[0,1]" "CAR[0,7]" "CAR[0,14]" "CAR[0,21]") replace
	esttab ,  label se keep(strong weak $X) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("CAR[0,1]" "CAR[0,7]" "CAR[0,14]" "CAR[0,21]") replace	
