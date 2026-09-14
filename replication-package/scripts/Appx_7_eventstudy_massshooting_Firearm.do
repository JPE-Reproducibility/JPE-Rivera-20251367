do "scripts/config.do"


***************************************
* 1) Import and Prepare data Smith & Wesson
***************************************
use "$path_cleaned/returns_moredays_massshooting_smithwesson.dta",clear
*a) Cleaning
*New variables
gen strong=group==3
gen weak  =group==2
label variable strong "Strong Tie"
label variable weak   "Weak Tie"
egen gstate=group(state)

label variable lsize1          "Size"
label variable lprofitability1 "Profitability"
label variable lleverage1      "Leverage"



* b) Estimations for 
*Globals
global X "lsize1 lprofitability1 lleverage1"

*Estimation 
eststo clear
foreach v in 1 7 14 21{
	* OLS
	eststo:bootstrap _b, reps(100) seed(1234):reg CAR strong $X  i.placebo i.gstate i.sic if Et==`v'
}

	*Export to Tex
	esttab using "$path_tables/v3_table_CAR_massshooting_smithwesson.tex", label se keep(strong $X) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("CAR[0,1]" "CAR[0,7]" "CAR[0,14]" "CAR[0,21]") replace
	esttab ,  label se keep(strong  $X) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("CAR[0,1]" "CAR[0,7]" "CAR[0,14]" "CAR[0,21]") replace	

***************************************
* 2) Import and Prepare data Virtra
***************************************
use "$path_cleaned/returns_moredays_massshooting_virtra.dta",clear
*a) Cleaning
*New variables
gen strong=group==3
gen weak  =group==2
label variable strong "Strong Tie"
label variable weak   "Weak Tie"
egen gstate=group(state)

label variable lsize1          "Size"
label variable lprofitability1 "Profitability"
label variable lleverage1      "Leverage"



* b) Estimations for 
*Globals
global X "lsize1 lprofitability1 lleverage1"

*Estimation 
eststo clear
foreach v in 1 7 14 21{
	* OLS
	eststo:bootstrap _b, reps(100) seed(1234):reg CAR strong $X  i.placebo i.gstate i.sic if Et==`v'
}

	*Export to Tex
	esttab using "$path_tables/v3_table_CAR_massshooting_virtra.tex", label se keep(strong $X) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("CAR[0,1]" "CAR[0,7]" "CAR[0,14]" "CAR[0,21]") replace
	esttab ,  label se keep(strong  $X) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("CAR[0,1]" "CAR[0,7]" "CAR[0,14]" "CAR[0,21]") replace			
			
***************************************
* 2) Import and Prepare data Vista
***************************************
use "$path_cleaned/returns_moredays_massshooting_vista.dta",clear
*a) Cleaning
*New variables
gen strong=group==3
gen weak  =group==2
label variable strong "Strong Tie"
label variable weak   "Weak Tie"
egen gstate=group(state)

label variable lsize1          "Size"
label variable lprofitability1 "Profitability"
label variable lleverage1      "Leverage"



* b) Estimations for 
*Globals
global X "lsize1 lprofitability1 lleverage1"

*Estimation 
eststo clear
foreach v in 1 7 14 21{
	* OLS
	eststo:bootstrap _b, reps(100) seed(1234):reg CAR strong $X  i.placebo i.gstate i.sic if Et==`v'
}

	*Export to Tex
	esttab using "$path_tables/v3_table_CAR_massshooting_vista.tex", label se keep(strong $X) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("CAR[0,1]" "CAR[0,7]" "CAR[0,14]" "CAR[0,21]") replace
	esttab ,  label se keep(strong  $X) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("CAR[0,1]" "CAR[0,7]" "CAR[0,14]" "CAR[0,21]") replace				
			
