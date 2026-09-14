* This code replicates the results in table 1 of Masten and Poirier (2020)

*******************************************************************************
* Panel A: Baseline 2SLS results                                     
*******************************************************************************
quietly log using "../output/Table 1.log", text replace

* Outcome variable
local ttla "weight" // Exporter (tons)"
local note "66 observations per column, All specifications include a constant." 

* Columns 1-4
local replace replace
forvalues i = 0/3 {
	ivfas $depvar2a (l_sec_km_IH_07 = $i1) ${c`i'}, first robust
	local fas: di "[" %3.2f e(fas)[1, 1] "; " %3.2f e(fas)[1, 2] "]"
	local stats: di "Overid. p-value, " %3.2f e(jp)
	local stats: di "`stats', First-stage Stat., " %3.1f e(widstat)
	local stats `stats', FAS, `fas'
	qui outreg2 using "../output/Table_1_panel_A.tex", ctitle(`ttla') ///
		$instruct2 addtext(`stats') addnote(`note') `replace'
	local replace append
}

*******************************************************************************
* Panel B: Baseline 2SLS results, controlling for railroads
*******************************************************************************

local display_vars l_sec_km_IH_07 l_csa_rail1898
local replace replace
forvalues i = 0/3 {
	ivfas $depvar2a (l_sec_km_IH_07 = l_csa_hwy1947 l_exploration) ///
		l_csa_rail1898 ${c`i'}, first robust
	local stats: di "Overid. p-value, " %3.2f e(jp)
	local stats: di "`stats', First-stage Stat., " %3.1f e(widstat)
	qui outreg2 using "../output/Table_1_panel_B.tex", ctitle(`ttla') ///
		$instruct2 addtext(`stats') keep(`display_vars') ///
		addnote(`note') `replace'
	local replace append
}

log close
