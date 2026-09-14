do "scripts/config.do"


****************************************************************************
* Plot for Strongly Connected
***************************************************************************
use "$path_sdid/dfpooled_results.dta", clear

	*1) Order data by magnitude of treatment effect for the whole period
	gsort  b_sdid company_name
	gen rank=_n
	gsort -rank
	gen rev_rank=_n
	
	*Replace Long names 
	replace company_name="Alarms" if company_name=="alarms, evacuation + public address equipment"                  
	replace company_name="GDWR"   if company_name=="GPS + Detention Equip + Evidence Storage + Report Writing"       	                                    	
	replace company_name="PPNM"   if company_name=="Personnel Mgt + Predictive Policing + Networks + Mobile Devices" 
	
	* Company name
	gsort company_name
	gen product=company_name
		gen treated_names=proper(product)
	sencode treated_names, gene(rankname) gsort(rank)
	drop if b_sdid==.


	*2) CI
	gen lower=b_sdid-1.96*se_sdid
	gen upper=b_sdid+1.96*se_sdid
	
	*3) Top performers 
	preserve
		keep if rev_rank<=19
		sum rankname
		global rmax =trim("`: display %10.0f `r(max)''")	
		global rmin =trim("`: display %10.0f `r(min)''")			
		twoway (scatter rankname b_sdid  ,mco(dknavy%70) msymbol(O) msize(large))  || /// 
		      (rbar    lower upper rankname ,horizontal barwidth(.05) color(dknavy%70)) , ///
		      graphregion(color(white)) bgcolor(white) ///
		      ytitle("") ///
		   legend(off)  ///
		   ylabel($rmin(1)$rmax,valuelabel labsize(small) angle(0)) ///
		   xlabel(-.5(.3)1.1, labsize(small)) ///
		   xtitle("Treatment Effect",size(med) col(gs3)) ///
		   xline(0,lpa(-) lcolor(gs10))  ///
		   title({bf:A. Top Performing Products},color(black) pos(1) size(med)) ///
		   legend(size(small)) legend(region(lwidth(none))) 
		graph export "$path_figures/v3_SDID_CAR_Top_pooled_Products_21days.pdf",replace
	restore
	
	*3) Botton Performers 
	preserve
		keep if rev_rank>19
		sum rankname
		global rmax =trim("`: display %10.0f `r(max)''")	
		global rmin =trim("`: display %10.0f `r(min)''")			
		twoway (scatter rankname b_sdid  ,mco(dknavy%70) msymbol(O) msize(large))  || /// 
		      (rbar    lower upper rankname ,horizontal barwidth(.05) color(dknavy%70)) , ///
		      graphregion(color(white)) bgcolor(white) ///
		      ytitle("") ///
		   legend(off)  ///
		   ylabel($rmin(1)$rmax,valuelabel labsize(small) angle(0) ) ///
		   xlabel(-.5(.3)1.1, labsize(small)) ///
		   xtitle("Treatment Effect",size(med) col(gs3)) ///
		   xline(0,lpa(-) lcolor(gs10))  ///
		   title({bf:B. Bottom Performing Products},color(black) pos(1) size(med)) ///		   
		   legend(size(small)) legend(region(lwidth(none))) 
			graph export "$path_figures/v3_SDID_CAR_Bottom_pooled_Products_21days.pdf",replace
	restore	
