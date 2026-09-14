* This code replicates the results in table 4 of Masten and Poirier (2020)

*******************************************************************************
* Compute table 4 results
*******************************************************************************
quietly log using "../output/Table 4.log", text replace

* Baseline 2SLS estimands
forvalues c = 0/3{
	ivreg2 $depvar2a (l_sec_km_IH_07 = $i1) ${c`c'}, first robust
	matrix beta = (nullmat(beta), e(b)[1,1])
}

* Summary statistics for the instruments (for re-scaling)
capture matrix drop Z
forvalues c = 0/3{
	capture drop Xpred
	capture matrix drop col
	reg l_sec_km_IH_07 $i1 ${c`c'}
	predict Xpred, xb
	foreach instrument in $i1 {
		reg `instrument' Xpred ${c`c'}
		matrix col = (nullmat(col) \ e(b)[1,1])
	}
	matrix Z = (nullmat(Z), col)
}

* Rescale
tempname std
foreach instrument in $i1 {
	sum `instrument'
	matrix `std' = (nullmat(`std') \ r(sd))
}
matrix Z = (Z[1, 1...] / `std'[1,1] \ ///
            Z[2, 1...] / `std'[2,1] \ ///
	        Z[3, 1...] / `std'[3,1])

* Calculate bias terms
mata: st_matrix("bias", colsum(st_matrix("Z"))) 
matrix beta = (beta \ bias / sqrt(_N))
matrix beta = (beta \ beta[1, 1...] - beta[2, 1...] \ beta[1, 1...] + beta[2, 1...])

*******************************************************************************
* Generate Table 4 Latex Output
*******************************************************************************

* Name matrices
matrix colnames Z = (1) (2) (3) (4)
matrix rownames Z = Plan Railroads Exploration

matrix colnames beta = (1) (2) (3) (4)
local rbeta `""Baseline 2SLS" "Bias""' 
local rbeta `"`rbeta' "Bias corrected 2SLS (lower)""'
local rbeta `"`rbeta' "Bias corrected 2SLS (upper)""'
matrix rownames beta = `rbeta'

matrix list Z
matrix list beta

* Save to latex
esttab matrix(Z, fmt(2)) using "../output/Table_4_panel_A.tex", ///
       style(tex) replace
esttab matrix(beta, fmt(2)) using "../output/Table_4_panel_B.tex", style(tex) replace

log close
