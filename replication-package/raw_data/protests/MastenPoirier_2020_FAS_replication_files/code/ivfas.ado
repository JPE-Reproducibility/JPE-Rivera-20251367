program define ivfas, eclass

	syntax anything, [fmin(real 10) store(string) showeach *]
	tempname beta fas
	
	if "`showeach'" == ""{
		local show qui
	}
	else {
		local show 
	}
	
	ivparse `anything'
	local y `s(depname)'
	local x `s(endo)'
	local inexog `s(inexog)'
	local exexog `s(exexog)'
	local znum 1
	
	foreach z in `exexog' {
		local w : list exexog - z
		local w : list w | inexog
		// want to make sure first is in there
		`show' ivreg2 `y' (`x' = `z') `w', `options'
		if "`store'" != "" {
			estimates store `store'_i`znum'
			local znum = `znum' + 1
		}
		scalar F = e(first)["F", 1]
		if F > `fmin'{
			matrix `beta' = (nullmat(`beta'), e(b)[1, "`x'"])
		}
	}
	mata: beta = st_matrix("`beta'")
	mata: st_matrix("`fas'", rowminmax(beta))
	matrix rownames `fas' = `x'
	matrix colnames `fas' = min max
	*local fas_fmt: di "[" %3.2f `fas'[1, 1] "; " %3.2f `fas'[1, 2] "]"
	local fas_fmt: di "[" %3.2f `fas'[1, 1] "; " %3.2f `fas'[1, 2] "]"
	ivreg2 `anything', `options'
	di "Falsification Adaptive Set: " as result "`fas_fmt'"
	ereturn matrix fas = `fas'
	ereturn local fas_fmt `fas_fmt'
	
end

// NOTE: These programs are taken from the ivreg2.ado file, so it should
//       parse exactly as ivreg2 does 
program define ivparse, sclass
	version 11.2
	syntax [anything(name=0)]


	// TS and FV opts based on option varlists
	local tsops		= ("`s(tsops)'"=="true")
	local fvops		= ("`s(fvops)'"=="true")
	// useful boolean
	local cons		=("`noconstant'"=="")

	local n 0
	gettoken lhs 0 : 0, parse(" ,[") match(paren)
	//di "`lhs'"
	IsStop `lhs'
	while `s(stop)' == 0 {
		if "`paren'" == "(" {
			local ++n
			if `n'>1 { 
				di as err `"syntax is "(all instrumented variables = instrument variables)""'
				exit 198
			}
			gettoken p lhs : lhs, parse(" =")
			while "`p'"!="=" {
				if "`p'"=="" {
					di as err `"syntax is "(all instrumented variables = instrument variables)""'
					di as er `"the equal sign "=" is required"'
					exit 198
				}
				local endo `endo' `p'
				gettoken p lhs : lhs, parse(" =")
			}
			local exexog `lhs'
		}
		else {
			local inexog `inexog' `lhs'
		}
		gettoken lhs 0 : 0, parse(" ,[") match(paren)
		IsStop `lhs'
	}
	// lhs attached to front of inexog
	gettoken lhs inexog	: inexog
	local endo		: list retokenize endo
	local inexog		: list retokenize inexog
	local exexog		: list retokenize exexog
	// If depname not provided (default) name is lhs variable
	local depname `lhs'
	
	sreturn local depname	`depname'
	sreturn local endo	`endo'
	sreturn local inexog	`inexog'
	sreturn local exexog 	`exexog'

end

program define IsStop, sclass
				/* sic, must do tests one-at-a-time, 
				 * 0, may be very large */
	version 11.2
	if `"`0'"' == "[" {		
		sret local stop 1
		exit
	}
	if `"`0'"' == "," {
		sret local stop 1
		exit
	}
	if `"`0'"' == "if" {
		sret local stop 1
		exit
	}
* per official ivreg 5.1.3
	if substr(`"`0'"',1,3) == "if(" {
		sret local stop 1
		exit
	}
	if `"`0'"' == "in" {
		sret local stop 1
		exit
	}
	if `"`0'"' == "" {
		sret local stop 1
		exit
	}
	else	sret local stop 0
end
