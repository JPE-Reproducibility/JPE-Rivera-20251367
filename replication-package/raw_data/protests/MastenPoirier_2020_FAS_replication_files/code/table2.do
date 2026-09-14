* This code replicates the results in table 2 of Masten and Poirier (2020)

*******************************************************************************
* Define macros
*******************************************************************************

quietly log using "../output/Table 2.log", text replace

local vars "l_sec_km_IH_07 l_manshare2003 $i1"  // variables to display in table
local eq_labels "Plan Railroads Exploration"  // column labels

********************************************************************************
* Table 2: Panel A
********************************************************************************

local replace replace
forvalues c = 2/3 {
	forvalues i = 1/3 {
		local instrument: word `i' of $i1
		local lbl: word `i' of `eq_labels'
		ivreg2 $depvar2a (l_sec_km_IH_07 = `instrument') ${c`c'}, ///
		       first robust
		qui outreg2 using "../output/Table_2_Panel_A.tex", ctitle(`lbl') ///
			$instruct2 addstat(First stage F stat., e(widstat)) ///
			keep(`vars') sortvar(`vars') `replace'
		local replace append
	}
}

********************************************************************************
* Table 2: Panel B
********************************************************************************

local replace replace

forvalues c = 2/3 {
	ivfas $depvar2a (l_sec_km_IH_07 = $i1) ${c`c'}, ///
		first robust store(t2pb)
	local fas `e(fas_fmt)'
	forvalues i = 1/3 {
		estimates restore t2pb_i`i'
		local instrument: word `i' of $i1
		local lbl: word `i' of `eq_labels'
		local stats: di "First-stage F Stat., " %3.1f e(widstat)
		if `i' == 2 {
			local stats `stats', FAS for this specification, `fas'
		}
		qui outreg2 using "../output/Table_2_Panel_B.tex", ctitle(`lbl') ///
			$instruct2 addtext(`stats') ///
			keep(`vars') sortvar(`vars') `replace'
		local replace append
	}
}

log close
