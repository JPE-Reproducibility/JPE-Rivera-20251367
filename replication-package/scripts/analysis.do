do "scripts/config.do"

***************************************
* 1) Import and Prepare data
***************************************
use "$path_raw_exploration/final_lemas_2020.dta",clear

*Globals
global E  "stdevent"	
global X  "police_dpt income sh_black sh_male_15_17 pc_police pc_violent pc_property  ldist_mpv cumprotest"	
global Z0 "wth_tavg wth_tavg_pol2 wth_rhav wth_avgprcp wth_tornado wth_wsf2"
*  ldist_mpv"

	*Labels
	label variable event           "Protests Summer 2020"
	label variable cumprotest      "Protests 2013 - 2019"	
	label variable police_dpt      "Police Department"
	label variable income          "Median Income (X 1,000)"
	label variable sh_black        "Share of Black"
	label variable sh_male_15_17   "Share of Male 15-17 yo"
	label variable pc_police       "Police per 10,000"
	label variable pc_violent      "Violent per 10,000"
	label variable pc_property     "Property per 10,000"
	label variable ldist_mpv       "Log-Proximity to Police Killing"
	
	gen sheriff_dpt=1-police_dpt
	label variable sheriff_dpt      "Sheriff Department"
********************************************************************************
* A) Summary Statistics
********************************************************************************
global Xdescritives  "event  cumprotest police_dpt pc_police pc_violent pc_property income sh_black sh_male_15_17 ldist_mpv"
global fmt_           "%9.2f %9.2f      %9.2f     %9.2f     %9.2f        %9.2f      %9.2f    %9.2f   %9.3f    %9.3f     "

		*Descriptives
		eststo clear
		eststo: estpost sum $Xdescritives,d
		
	* Save
	esttab using "$path_exploration_results/descriptives_protests.tex" ,mtitles(" " ) ///
			nonumber label  replace nodepvars cell((mean(fmt($fmt_) label("\shortstack{(1) \\ Mean}")) sd(fmt($fmt_) label("\shortstack{(2) \\ SD }")) p50(fmt($fmt_) label("\shortstack{(3) \\ Median}"))  ))  aux(sd)
		
	esttab ,mtitles(" " )   ///
	        nonumber label  replace nodepvars cell((mean(fmt($fmt_) label("Mean")) sd(fmt($fmt_) label("SD")) p50(fmt($fmt_) label("Median"))  ))  aux(sd p50)


	
********************************************************************************
* B) Regression on BWC + Gunshot Technology Adoption
********************************************************************************
eststo clear
foreach v in any_vid_bwc any_tech_gun {
	* OLS
	eststo:	reg `v'  $E  $X               ,cluster(ori9) 
	sum `v'  
	quietly estadd local ymean   "`: display %10.2f `r(mean)''"	, replace	
	quietly estadd local control "Yes", replace		
	quietly estadd local fstage "---", replace
	quietly estadd local overid "---", replace	
	quietly estadd local spec    "OLS", replace		
	
	* IV Lasso		
	eststo:	ivlasso   `v' ($E=$Z0)  $X  ,cluster(ori9)
	sum `v'   
	quietly estadd local ymean   "`: display %10.2f `r(mean)''"	, replace		
	quietly estadd local fstage "---", replace
	quietly estadd local overid "---", replace		
	quietly estadd local control "Yes", replace	
	quietly estadd local spec    "IV-Lasso", replace		
		
	* IV			
	eststo:	ivreg2 `v' ($E=$Z0)   $X         ,cluster(ori9) first
	global ovid1 ="`: display %10.2f `e(jp)''"
	global fstage="`: display %10.2f `e(widstat)''"
	sum `v' 
	quietly estadd local ymean   "`: display %10.2f `r(mean)''"	, replace	
	quietly estadd local fstage "$fstage", replace	
	*quietly estadd local overid "$ovid1", replace	
	quietly estadd local control "Yes", replace	
	quietly estadd local spec    "2SLS", replace		
}

	*Save
	esttab ,  label se keep($E) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("BWC" "BWC" "BWC" "Gunshot Tech" "Gunshot Tech" "Gunshot Tech") ///
			stats(spec control fstage overid ymean N ,label("Specification" "Controls" "First-stage F-Stat" "Overid. p-value"  "Mean of Dep." "Observations"))  replace 

	*Save
	esttab  using "$path_exploration_results/main_bwc_gunshot_IV.tex" ,  label se keep($E) star(* 0.10 ** 0.05 *** 0.01)	///
	        nonotes mtitle("\shortstack{Body Worn \\ Camera}" ///
			                "\shortstack{Body Worn \\ Camera}" ///
							"\shortstack{Body Worn \\ Camera}" ///
							"\shortstack{Gunshot \\ Detection Tech.}" ///
							"\shortstack{Gunshot \\ Detection Tech.}" ///
							"\shortstack{Gunshot \\ Detection Tech.}") ///
			stats(spec control fstage  ymean N ,label("Specification" "Controls" "First-stage F-Stat"  "Mean of Dep." "Observations"))   replace 
	
	
********************************************************************************
* C) Regression on Video Technology
********************************************************************************		
	********************************************************************************
	* C1) Estimation
	********************************************************************************		
		* OLS
		eststo clear
		foreach v in fixed mobile drone car weap  {
			eststo:	reg any_vid_`v'  $E  $X                 ,cluster(ori9) 			
			estimates store A_`v'	
			sum any_vid_`v'  
			quietly estadd local ymean   "`: display %10.2f `r(mean)''"	, replace			
			quietly estadd local control "Yes", replace		
			quietly estadd local spec    "OLS", replace							
		}
		
		* IV Lasso
		eststo clear
		foreach v in fixed mobile drone car weap  {
			eststo:	ivlasso   any_vid_`v' ($E=$Z0)  $X  ,cluster(ori9)
			estimates store B_`v'	
			sum any_vid_`v'  
			quietly estadd local ymean   "`: display %10.2f `r(mean)''"	, replace	
			quietly estadd local control "Yes", replace	
			quietly estadd local spec    "IV-Lasso", replace								
		}	
		
		* IV
		eststo clear
		foreach v in fixed mobile drone car weap  {
			eststo:	ivreg2 any_vid_`v' ($E=$Z0) $X            ,cluster(ori9) first
			global ovid1 ="`: display %10.2f `e(jp)''"
			global fstage="`: display %10.2f `e(widstat)''"			
			estimates store C_`v'	
			sum any_vid_`v'  
			quietly estadd local ymean   "`: display %10.2f `r(mean)''"	, replace	
	        quietly estadd local fstage "$fstage", replace		
	        *quietly estadd local overid "$ovid1", replace			
			quietly estadd local control "Yes", replace	
			quietly estadd local spec    "2SLS", replace								
		}		
		
			

	********************************************************************************
	* C2) Append
	********************************************************************************	
	// Panel A
	esttab A_fixed A_mobile A_drone A_car A_weap using "$path_exploration_results/main_videos_Append.tex", ///
		   posthead("\hline \\ \multicolumn{2}{c}{\textbf{Panel A) OLS}} \\\\") ///
		   b(%8.3f) se(%8.3f) label ///
		   keep($E) star(* 0.10 ** 0.05 *** 0.01) ///
		   stats(ymean N ,fmt(%9.3f %9.0f) label("Mean of Dep." "Observations")) ///
		   nonotes prefoot("\hline") ///
		   mtitles("\shortstack{Public \\  Areas}" ///
				   "\shortstack{Mobile}" ///
				   "\shortstack{Drones}" ///
				   "\shortstack{Patrol \\ Cars}" ///
				   "\shortstack{Weapons}") ///
		   replace

	// Panel B
	esttab B_fixed B_mobile B_drone B_car B_weap using "$path_exploration_results/main_videos_Append.tex", ///
		   posthead(" \\ \multicolumn{2}{c}{\textbf{Panel B) IV-Lasso}} \\\\") ///
		   b(%8.3f) se(%8.3f) label ///
		   keep($E) star(* 0.10 ** 0.05 *** 0.01) ///
		   stats(ymean N ,fmt(%9.3f %9.0f) label("Mean of Dep." "Observations")) ///
		   noline nomtitles nonumber nonotes prefoot("\hline") ///
		   append

	// Panel C
	esttab C_fixed C_mobile C_drone C_car C_weap using "$path_exploration_results/main_videos_Append.tex", ///
		   posthead(" \\ \multicolumn{2}{c}{\textbf{Panel C) 2SLS}} \\\\") ///
		   b(%8.3f) se(%8.3f) label ///
		   keep($E) star(* 0.10 ** 0.05 *** 0.01) ///
		   stats(fstage ymean N ,fmt(%9.3f %9.0f) label("First-stage F-Stat"  "Mean of Dep." "Observations")) ///
		   nomtitles nonumber nonotes prefoot("\hline") ///
		   append
	eststo clear

/********************************************************************************
* D) Regression on Other Technology
********************************************************************************		
	********************************************************************************
	* D1) Estimation
	********************************************************************************		
		* OLS
		eststo clear
		foreach v in facerec cad rms infr lpr {
			eststo:	reg any_tech_`v'  $E  $X                 ,cluster(ori9) 
			estimates store A_`v'	
			sum any_tech_`v'  
			quietly estadd local ymean   "`: display %10.2f `r(mean)''"	, replace	
			quietly estadd local control "Yes", replace		
			quietly estadd local spec    "OLS", replace							
		}
		
		* IV
		eststo clear
		foreach v in facerec cad rms infr lpr {
			eststo:	ivreg2 any_tech_`v' ($E=$Z0) $X            ,cluster(ori9) first
			estimates store B_`v'	
			sum any_tech_`v'  
			quietly estadd local ymean   "`: display %10.2f `r(mean)''"	, replace	
			quietly estadd local control "Yes", replace	
			quietly estadd local spec    "IV", replace								
		}		
		
		* IV Lasso
		eststo clear
		foreach v in facerec cad rms infr lpr {
			eststo:	ivlasso   any_tech_`v' ($E=$Z0)  $X  ,cluster(ori9)
			estimates store C_`v'	
			sum any_tech_`v'  
			quietly estadd local ymean   "`: display %10.2f `r(mean)''"	, replace	
			quietly estadd local control "Yes", replace	
			quietly estadd local spec    "IV-Lasso", replace								
		}			

		
	********************************************************************************
	* D2) Append
	********************************************************************************	
	// Panel A
	esttab A_facerec A_cad A_rms A_infr A_lpr using "$path_exploration_results/other_tech_Append.tex", ///
		   posthead("\hline \\ \multicolumn{2}{c}{\textbf{Panel A) OLS}} \\\\") ///
		   b(%8.3f) se(%8.3f) label ///
		   keep($E) star(* 0.10 ** 0.05 *** 0.01) ///
		   stats(ymean N ,fmt(%9.3f %9.0f) label("Mean of Dep." "Observations")) ///
		   nonotes prefoot("\hline") ///
		   mtitles("\shortstack{Facial \\ Recognition}" ///
		           "\shortstack{CAD}" ///
				   "\shortstack{Record \\ Mgt System}" ///
				   "\shortstack{Infrared \\ Imagers}" ///
				   "\shortstack{Licence \\ Plate \\ Readers}") ///
		   replace

	// Panel B
	esttab B_facerec B_cad B_rms B_infr B_lpr  using "$path_exploration_results/other_tech_Append.tex", ///
		   posthead(" \\ \multicolumn{2}{c}{\textbf{Panel B) IV}} \\\\") ///
		   b(%8.3f) se(%8.3f) label ///
		   keep($E) star(* 0.10 ** 0.05 *** 0.01) ///
		   stats(ymean N ,fmt(%9.3f %9.0f) label("Mean of Dep." "Observations")) ///
		   noline nomtitles nonumber nonotes prefoot("\hline") ///
		   append

	// Panel C
	esttab C_facerec C_cad C_rms C_infr C_lpr  using "$path_exploration_results/other_tech_Append.tex", ///
		   posthead(" \\ \multicolumn{2}{c}{\textbf{Panel C) IV-Lasso}} \\\\") ///
		   b(%8.3f) se(%8.3f) label ///
		   keep($E) star(* 0.10 ** 0.05 *** 0.01) ///
		   stats(ymean N ,fmt(%9.3f %9.0f) label("Mean of Dep." "Observations")) ///
		   nomtitles nonumber nonotes prefoot("\hline") ///
		   append
	eststo clear		
	
