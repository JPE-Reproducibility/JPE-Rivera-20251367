* This code extracts the relevant sample from the original DTM2014 master data.

use "${data_path}/master_data.dta", clear
* The file master_data.dta comes directly from the DTM2014 replication files

keep exporter_fe_tons_iv_qr_05 exporter_fe_val_iv_qr_05 l_sec_km_IH_07 l_csa_hwy1947 l_csa_rail1898 ///
	l_exploration l_emp07_cbp l_mp_val_iv_qr_05_exporter l_pop1920 l_pop1950 l_pop2000 l_manshare2003 ///
	l_water l_slope division l_college_00 l_pi_00 l_wholesale l_aadt_IH_exporter

label variable l_sec_km_IH_07 "log highway km"
label variable l_emp07_cbp "log employment"
label variable l_mp_val_iv_qr_05_exporter "Market access (export)"
label variable l_pop1920 "log 1920 population"
label variable l_pop1950 "log 1950 population"
label variable l_pop2000 "log 2000 population"
label variable l_manshare2003 "log % manuf. emp."
label variable l_csa_hwy1947 "log 1947 highway km"
label variable l_exploration "log 1528-1850 exploration"
label variable l_csa_rail1898 "log 1898 railroad km"

compress
save "${data_path}/DMT2014.dta", replace
