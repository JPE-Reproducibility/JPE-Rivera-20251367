do "scripts/config.do"

 ********************************************************************************
*1) Import Bloomberg Customer
********************************************************************************
import excel "$path_raw_bloomberg/bloomberg_customers.xlsx", sheet("bloomberg_client_Part2") firstrow clear
	*keep relevant
	drop if gvkey==.
	*Reshape
	reshape long client, i(gvkey) j(j)
	drop if client==""
	duplicates drop
	drop j

	*Number of customer
	gen rec=1
	bys gvkey: egen tot_client=sum(rec)
	drop rec

	*Drop No bloomberg data
	drop if regexm(client,"splc")

	*Government
	replace client=lower(client)
		gen gvt_client=0
	replace gvt_client=1 if regexm(client,"dod|dhs|doj|dea|cia")
	replace gvt_client=1 if regexm(client,"public|uk|united states|united kingdom|australia|canada|japan|republic of|canadian|french republic|france|israel|spain|italy|mexican|mexico|singapore|kingdom of saudi")
	replace gvt_client=1 if regexm(client,"city|baltimore|chicago|new york")
	replace gvt_client=1 if regexm(client,"universtiy of cali|washington|district of columbia")
	replace gvt_client=1 if regexm(client,"state of|county|ministry|department of|commonwealth")
	replace gvt_client=1 if regexm(client,"police|law enforcement|sheriff|trooper")
	replace gvt_client=1 if regexm(client,"army|armed force")

	*Police
		gen police_client=0
	replace police_client=1 if regexm(client,"police|law enforcement|sheriff|trooper")


	collapse (max) anygvt_client=gvt_client anypolice_client=police_client ///
	         (mean) sharegvt_client=gvt_client sharepolice_client=police_client ,by(conm gvkey group)

	*Government Intensive
	gen high_gvt=sharegvt_client>0.5
	label variable high_gvt "Share of Government Client>0.5"
	label variable sharegvt_client "Share Government Clients"

*Save
sort gvkey
*Save roster
save "$path_cleaned/gvt_client.dta",replace
