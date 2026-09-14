* This code replicates the results in table 3 of Masten and Poirier (2020)

*******************************************************************************
* Compute table 3 results
*******************************************************************************

quietly log using "../output/Table 3.log", text replace

local instruments Plan Railroads Exploration
local vars l_sec_km_IH_07
local extra_controls l_water l_slope i.division l_college l_pi_00 l_wholesale
local extra_controls `extra_controls' l_aadt_IH_exporter

local cnum 0
foreach c_extra in `extra_controls' all {
	local ++cnum 
	if "`c_extra'" == "all" {
		local c_extra `extra_controls'
	}

	// run using each instrument without other instruments as controls
	local inum 1
	foreach instrument in $i1 {
		ivreg2 $depvar2a (l_sec_km_IH_07 = `instrument') $c3 `c_extra', /// 
		       first robust `estname'
		estimates store c`cnum'_nc_i`inum'
		local ++inum
	}

	// run using each instrument including other instruments as controls
	ivfas $depvar2a (l_sec_km_IH_07 = $i1) $c3 `c_extra', ///
		       first robust store(c`cnum'_c) fmin(5)
	estimates store c`cnum'

	// store formatted results for table
	local replace replace
	tempfile c`cnum'
	foreach col in nc c {
		forvalues i = 1/3{
			estimates restore c`cnum'_`col'_i`i'
			local ttl: word `i' of `instruments'
			outreg2 using `c`cnum'', ///
			      ctitle(`ttl') $instruct2 ///
			      addstat(F stat., e(widstat)) nonotes ///
			      keep(`vars')
			local replace append
		}
	}		
}

*******************************************************************************
* Generate Table 3 Latex Output
*******************************************************************************

tempfile data
save `data'

local c_lbls Water Slope "Census regions" "Percent college"
local c_lbls `c_lbls' "Income per capita" "Percent wholesale" Traffic All
tempfile tbl
local first 1
forvalues cnum = 1/`cnum' {
	import delimited `c`cnum'', clear
	
	// add the FAS column
 	estimates restore c`cnum'
	gen v9 = "`e(fas_fmt)'" in 4
	// fix the labels
	local c_lbl: word `cnum' of `c_lbls'
	replace v1 = "`c_lbl'" in 4
	replace v1 = "" in 7
	drop in 6
	
	if `first'{
		// fix the labels
		replace v9 = "FAS" in 2
		replace v1 = "" in 2
		replace v2 = "" in 2
		replace v2 = "F stat." in 6
		save `tbl'
		local first 0
	}
	else {
		// drop the headers + repeated row labels
		drop if _n <= 3
		//merge
		replace v2 = "" in 1
		save `c`cnum'', replace
		use `tbl'
		append using `c`cnum''
		save `tbl', replace
	}
	local ++cnum
}
texsave using ../output/Table_3.tex, frag replace size(scriptsize) nonames ///
        align(C l ccc | ccc c)

use `data', clear
	
log close
