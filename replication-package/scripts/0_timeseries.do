do "scripts/config.do"

********************************************************************************
*1) Tweets (requires XLM_daily_tweets.csv — skip if missing)
********************************************************************************
capture confirm file "raw_data/twitter/XLM_daily_tweets.csv"
if _rc {
	di "WARNING: XLM_daily_tweets.csv not found — skipping twitter timeline"
}
else {
import delimited "raw_data/twitter/XLM_daily_tweets.csv",clear
gen edate1 = substr(end,1,10)
numdate daily mdy=edate1, pattern(YMD)
gen year=year(mdy)
keep mdy hash* year
gen mofd=mofd(mdy)
keep if year<=2020

keep mdy hash* year


foreach v in blacklivesmatter alllivesmatter bluelivesmatter whitelivesmatter{
	rename hash_`v' `v'
}

gen ltweet_blm=log(1+blacklivesmatter)
gen ltweet_alm=log(1+alllivesmatter)
gen ltweet_bluelm=log(1+bluelivesmatter)
gen ltweet_wlm=log(1+whitelivesmatter)
gen diff_blm=ltweet_blm-ltweet_blm[_n-1]
gen lagblm=blacklivesmatter[_n-1]

		
twoway (line ltweet_blm mdy   ,lco(dkgreen)  lwidth(med)) || ///
       (line ltweet_alm mdy   ,lco(pink)  lwidth(thin)) || ///
       (line ltweet_wlm mdy   ,lco(erose)  lwidth(thin)) || ///	   
       (line ltweet_bluelm mdy,lco(blue) lwidth(thin)), ///
	   tline(13jul2013,lpa(-) lcolor(red)) ///
	   tline(9aug2014 25may2020,lpa(-) lcolor(red)) ///
	   tline(26feb2012 15feb2014,lpa(-) lcolor(gs3%70)) ///
	   tline(22nov2014 5jul2016 ,lpa(-) lcolor(gs3%70)) ///
	   xtitle("Day") ///
	   ytitle("log(count+1)") ///
	   graphregion(color(white)) bgcolor(white) ///
			xlabel(#6, labsize(small)) ///
	   legend(size(small)) legend(region(lwidth(none))) ///
	   title({bf: Daily Log Tweet Count},color(black) pos(1) size(med)) ///		  
	   ttext( 4 26feb2012  "{bf:Death of Trayvon Martin (C)}",orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(gs3%70)) ///	
	   ttext(11 13jul2013 "{bf:Acquittal of George Zimmerman (C)}" "{bf:Beginning of the BLM movement}",orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(red)) ///		
	   ttext(11 15feb2014 "{bf:Mistrial in the Jordan Davis Shooting (C)}",orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(gs3%70)) ///	
	   ttext(11 9aug2014  "{bf:Death of Michael Brown (P)}",orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(red)) ///	
	   ttext(14 22nov2014 "{bf:Death of Tamir Rice (P)}"   ,margin(tiny)  orientation(vertical) size(vsmall) placement(w) color(gs3%70)) ///	
	   ttext(14 5jul2016  "{bf:Death of Alton Sterling (P)}",orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(gs3%70)) ///	
	   ttext(13 25may2020 "{bf:Death of George Floyd (P)}", orientation(vertical) margin(small)  size(vsmall) placement(w) color(red)) ///	
	   legend(pos(6) ring(1) row(1) col(4) lab(1 "Black Lives Matter (P)") lab(2 "All Lives Matter") lab(3 "White Lives Matter") lab(4 "Blue Lives Matter"))
	graph export "$path_figures/v3_timeline_twitter.pdf",replace			

gen qofd=qofd(mdy)
format qofd %tq	
gsort -diff_blm
*br mdy diff_blm
}

********************************************************************************
*2) Descriptives for RAW monthly data
********************************************************************************				
use "$path_cleaned/final_monthly.dta",clear
	*Collapse
	 collapse (mean) alpha exret ret b_* ivol tvol r2 , by(group mofd) 
	 sort group mofd
	 drop if exret==.
	 	 *Cummulative return
	 sort group mofd
	 egen fobs=tag(group)
	 gen compoundret0=1 if fobs==1
	 by group: replace compoundret0=compoundret0[_n-1]*(1+ret) if fobs!=1
	
	********************************************************************************	
	*plots Excess return
	********************************************************************************	
	twoway (line exret  mofd if group==3,lco(dknavy%70) lwidth(medthick)  lpa(solid)) || ///
		   (line exret  mofd if group==2,lco(maroon) lwidth(med)  ) || ///
		   (connected exret  mofd if group==1,lco(teal) lwidth(medthin) mco(teal)  msize(med) msymbol(x)), ///
			ytitle("Abnormal Return",size(med) col(gs3)) xtitle("Month",size(med) col(gs3)) ///
			title({bf:A. Monthly Abnormal Returns},color(black) pos(1) size(med)) ///
			ylabel(-.1(.1).3) ///
			xlabel(#6, labsize(small)) ///
			graphregion(color(white)) bgcolor(white) ///
			legend(size(small)) legend(region(lwidth(none))) ///
		    tline(2013m7 ,lwidth(thin) lpa(-) lcolor(red)) ///
	        tline(2014m8 2020m5,lpa(-) lcolor(red)) ///
	        tline(2012m2  2014m2,lpa(-) lcolor(gs3%70)) ///
	        tline(2014m11 2016m7 ,lpa(-) lcolor(gs3%70)) ///
		    ttext(.12 2012m2  "{bf:Death of Trayvon Martin (C)}",orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(gs3%70)) ///			
		    ttext(.2 2013m7  "{bf:Acquittal of George Zimmerman (C)}" "{bf:Beginning of the BLM movement}", orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(red)) ///	
		    ttext(.18 2014m2  "{bf:Mistrial in the Jordan Davis Shooting (C)}",orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(gs3%70)) ///	
	        ttext(.2  2014m8  "{bf:Death of Michael Brown (P)}",orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(red)) ///	
	        ttext(.23 2014m11 "{bf:Death of Tamir Rice (P)}"   ,margin(tiny)  orientation(vertical) size(vsmall) placement(w) color(gs3%70)) ///	
	        ttext(.23 2016m7  "{bf:Death of Alton Sterling (P)}",orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(gs3%70)) ///	
	        ttext(.23 2020m5  "{bf:Death of George Floyd (P)}", orientation(vertical) margin(vsmall)  size(vsmall) placement(w) color(red)) ///				
			legend(pos(6) ring(1) row(1) col(1) lab(1 "Strong Connection") lab(2 "Weak Connection") lab(3 "No Connection"))	   
	 graph export "$path_figures/v3_descrip_exret.pdf",replace  
 		   
********************************************************************************
*3) IBES with Strong Connection vs No Connection
********************************************************************************
*Descriptive about the consensus
use "$path_cleaned/ibes_rec_consensus_strong",clear
	*Ratio Mean/SD
	gen mean_sd=meanrec/stdev 
	
	*Collapse
	collapse (mean)mean_sd meanrec medrec stdev numrec numup numdown buypct sellpct holdpct,by(strong mofd)

	******************************
	******Difference in buying
	******************************
	sort mofd strong
	gen diffbuy=buypct -buypct[_n-1] if strong==1
	gen diffstdev=stdev-stdev[_n-1] if strong==1
	gen diffmeanrec=meanrec-meanrec[_n-1] if strong==1
	
	****************************************************************************
	* Buying + Difference
	****************************************************************************
	twoway (connected buypct mofd if strong == 1,msize(vsmall) color(dknavy%70)) || ///
		(line buypct mofd if strong == 0, color(teal)) || ///
		(area diffbuy mofd, color(blue%20) yaxis(2)) , ///
		ylabel(20(20)100) ///
		ylabel(-30(20)30, axis(2)) ///
		xlabel(#6, labsize(small)) ///
		xtitle(" ") ///
		ytitle("Buy Percent (%)") ///
		ytitle("{&Delta}Buy Percent (pp)", orientation(rvertical) axis(2)) ///
			legend(size(small)) legend(region(lwidth(none))) ///		
		legend(ring(1) pos(6) row(1) col(3) ///
			   order(1 "Strong Connection (PF)" 2 "No Connection (NC)" 3 "{&Delta}Buy Percent{sub:PF–NC}")) ///
		tline(2013m7, lwidth(thin) lpattern(dash) lcolor(red)) ///
		tline(2014m8 2020m5, lpattern(dash) lcolor(red)) ///
		tline(2012m2 2014m2, lpattern(dash) lcolor(gs3%70)) ///
		tline(2014m11 2016m7, lpattern(dash) lcolor(gs3%70)) ///
		ttext(35 2012m2 "{bf:Death of Trayvon Martin (C)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(gs3%70)) ///
		ttext(82 2013m7 "{bf:Acquittal of George Zimmerman (C)}" ///
			  "{bf:Beginning of the BLM movement}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(red)) ///
		ttext(77 2014m2 "{bf:Mistrial in the}" /// 
		                "{bf:Jordan Davis Shooting (C)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(gs3%70)) ///
		ttext(35 2014m8 "{bf:Death of Michael Brown (P)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(red)) ///
		ttext(38 2014m11 "{bf:Death of Tamir Rice (P)}", ///
			  orientation(vertical) margin(tiny) size(vsmall) placement(w) color(gs3%70)) ///
		ttext(38 2016m7 "{bf:Death of Alton Sterling (P)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(gs3%70)) ///
		ttext(38 2020m5 "{bf:Death of George Floyd (P)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(red)) ///
		title("{bf:B. Analysts' Rec. for Firms with Strong Connection}", color(black) pos(1) size(med))
		 graph export "$path_figures/IBES_buy_diff_recommendations_strong.pdf",replace  
		 
		 
********************************************************************************
*3) IBES with Weak Connection vs No Connection
********************************************************************************
*Descriptive about the consensus
use "$path_cleaned/ibes_rec_consensus_weak",clear
	*Ratio Mean/SD
	gen mean_sd=meanrec/stdev 
		
	
	*Collapse
	collapse (mean)mean_sd meanrec medrec stdev numrec numup numdown buypct sellpct holdpct,by(weak mofd)

	******************************
	******Difference in buying
	******************************
	sort mofd weak
	gen diffbuy=buypct -buypct[_n-1] if weak==1
	gen diffstdev=stdev-stdev[_n-1] if weak==1
	gen diffmeanrec=meanrec-meanrec[_n-1] if weak==1
	
	****************************************************************************
	* Buying + Difference
	****************************************************************************
	twoway (connected buypct mofd if weak == 1,msize(vsmall) color(maroon)) || ///
		(line buypct mofd if weak == 0, color(teal)) || ///
		(area diffbuy mofd, color(red%20) yaxis(2)) , ///
		ylabel(20(20)100) ///
		ylabel(-30(20)30, axis(2)) ///
		xlabel(#6, labsize(small)) ///
		xtitle(" ") ///
		ytitle("Buy Percent (%)") ///
		ytitle("{&Delta}Buy Percent (pp)", orientation(rvertical) axis(2)) ///
			legend(size(small)) legend(region(lwidth(none))) ///		
		legend(ring(1) pos(6) row(1) col(3) ///
			   order(1 "Weak Connection (PF)" 2 "No Connection (NC)" 3 "{&Delta}Buy Percent{sub:PF–NC}")) ///
		tline(2013m7, lwidth(thin) lpattern(dash) lcolor(red)) ///
		tline(2014m8 2020m5, lpattern(dash) lcolor(red)) ///
		tline(2012m2 2014m2, lpattern(dash) lcolor(gs3%70)) ///
		tline(2014m11 2016m7, lpattern(dash) lcolor(gs3%70)) ///
		ttext(35 2012m2 "{bf:Death of Trayvon Martin (C)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(gs3%70)) ///
		ttext(82 2013m7 "{bf:Acquittal of George Zimmerman (C)}" ///
			  "{bf:Beginning of the BLM movement}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(red)) ///
		ttext(77 2014m2 "{bf:Mistrial in the}" /// 
		                "{bf:Jordan Davis Shooting (C)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(gs3%70)) ///
		ttext(35 2014m8 "{bf:Death of Michael Brown (P)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(red)) ///
		ttext(38 2014m11 "{bf:Death of Tamir Rice (P)}", ///
			  orientation(vertical) margin(tiny) size(vsmall) placement(w) color(gs3%70)) ///
		ttext(38 2016m7 "{bf:Death of Alton Sterling (P)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(gs3%70)) ///
		ttext(38 2020m5 "{bf:Death of George Floyd (P)}", ///
			  orientation(vertical) margin(vsmall) size(vsmall) placement(w) color(red))
		 graph export "$path_figures/IBES_buy_diff_recommendations_weak.pdf",replace  
	* Slightly different format ///
	*	title("{bf: Analysts' Rec. for Firms with Weak Connection}", color(black) pos(1) size(med)) 				 
	 		