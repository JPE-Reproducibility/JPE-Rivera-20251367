********************************************************************************
* master.do — Single-driver script for full replication pipeline.
*
* Paper: "Market Response to Racial Uprisings"
* Authors: Bocar A. Ba, Roman Rivera, Alexander Whitefield
*
* Prerequisites:
*   1. Run scripts/00_setup.do once (installs Stata packages)
*   2. Run Rscript scripts/00_setup.R once (installs R packages)
*   3. Ensure Stata 16+, R 4.0+, and Python 3.8+ are available
*
* Usage (from replication/ root):
*   stata-se -b do master.do
*
* Stata returns exit status 0 in batch mode even after a fatal error, so a partial
* run is indistinguishable from a complete one at the shell prompt. Check
* master.log instead: it must end with the "Pipeline complete." banner and contain
* no lines beginning "r(" (see the output check at the end of this file).
*
* Total runtime: approximately 90 hours (Stage 2 dominates). See README.md.
********************************************************************************

version 16
clear all
set more off
set maxvar 32767

timer clear
timer on 99

capture program drop run_rscript
program define run_rscript
	args script
	display as result "    [R] `script' — started `c(current_time)'"
	shell Rscript "`script'"; echo $? > _r_exitcode.tmp
	tempname fh
	file open `fh' using "_r_exitcode.tmp", read text
	file read `fh' line
	file close `fh'
	erase "_r_exitcode.tmp"
	if "`line'" != "0" {
		display as error "    [R] `script' — FAILED (exit code `line')"
		exit 1
	}
	display as result "    [R] `script' — done `c(current_time)'"
end

capture program drop run_do
program define run_do
	args script
	display as result "    [do] `script' — started `c(current_time)'"
	do "`script'"
	display as result "    [do] `script' — done `c(current_time)'"
end

display as result "============================================"
display as result "  Replication Pipeline — master.do"
display as result "  Started: `c(current_date)' `c(current_time)'"
display as result "============================================"

********************************************************************************
* STAGE 1: Clean Data (Main Pipeline)
*   ~1-2 hours
********************************************************************************
display as result _n ">>> STAGE 1: Clean Data (Main Pipeline)"

run_rscript "scripts/0_build_fuzz_match.R"
run_do "scripts/0a_clean_roster.do"
run_do "scripts/0b_clean_classification.do"
run_do "scripts/0c_clean_fundamentals.do"
run_do "scripts/0d_clean_customers.do"
run_do "scripts/1a_clean_daily.do"
run_do "scripts/1b_clean_daily_capm.do"
run_do "scripts/2a_clean_monthly.do"
run_do "scripts/2b_clean_main_portfolios.do"
run_do "scripts/2c_clean_portfolios_placebos.do"
run_do "scripts/2d_clean_portfolios.do"
run_do "scripts/3a_category_rmduplicates.do"
run_do "scripts/3b_clean_daily_categories_fullV4.do"
run_do "scripts/4_clean_fundamentals_postGF.do"
run_do "scripts/5a_clean_massshooting_smithwesson.do"
run_do "scripts/5b_clean_massshooting_virtra.do"
run_do "scripts/5c_clean_massshooting_vista.do"
run_do "scripts/6_clean_ibes.do"

display as result ">>> STAGE 1 complete."

********************************************************************************
* STAGE 1b: Clean Minority CEO & Private Security
*   ~30-60 minutes
********************************************************************************
display as result _n ">>> STAGE 1b: Clean Minority & Private Security"

* Minority CEO
run_do "scripts/clean_daily_asian.do"
run_do "scripts/clean_daily_black.do"
run_do "scripts/clean_daily_hispanic.do"
run_do "scripts/clean_daily_asian_with_placebo.do"
run_do "scripts/clean_daily_black_with_placebo.do"
run_do "scripts/clean_daily_hispanic_with_placebo.do"

* Private security (Police1 sample)
run_rscript "scripts/0_build_ps_manual_roster.R"
run_do "scripts/1a_clean_daily_privatesecurity.do"
run_rscript "scripts/1a_clean_daily_privatesecurity_refine.R"
run_do "scripts/1a_clean_daily_privatesecurity_with_placebos.do"

* Private security (ISC sample)
run_rscript "scripts/0_pre_clean_refine.R"
run_do "scripts/1a_clean_daily_privatesecurity_isc.do"
run_rscript "scripts/1a_clean_daily_privatesecurity_isc_refine.R"

display as result ">>> STAGE 1b complete."

********************************************************************************
* STAGE 1c: Clean Exploration Data
*   ~10-20 minutes
********************************************************************************
display as result _n ">>> STAGE 1c: Clean Exploration Data"

run_do "scripts/0a_clean_data.do"
run_do "scripts/0b_clean_weather.do"
run_do "scripts/1_clean_master.do"

display as result ">>> STAGE 1c complete."

********************************************************************************
* STAGE 2: SDID Estimation (R scripts)
*   A few days. All scripts are independent, so can run in parallel.
*   Running sequentially here for simplicity.
********************************************************************************
display as result _n ">>> STAGE 2: SDID Estimation (R — sequential)"
display as result "    NOTE: These R scripts can run in parallel for faster execution."
display as result "    See README.md for parallel instructions."

* Main SDID
run_rscript "scripts/2a_estSDID.R"
run_rscript "scripts/3a_estSDIDgvt.R"
run_rscript "scripts/4a_estSDIDcategory.R"
run_rscript "scripts/4pooled_estSDIDcategory.R"
run_rscript "scripts/5a_estSDIDlongMonthly_weighted.R"
run_rscript "scripts/5a2_estSDIDlongMonthly_unweighted.R"
run_rscript "scripts/6a_estSDIDmshootings.R"
run_rscript "scripts/6b_estSDIDadl.R"
run_rscript "scripts/11a_estSDIDfundamentals_strong.R"

* Appendix robustness
run_rscript "scripts/Appx_6a_estSDIDmshootings_smithwesson.R"
run_rscript "scripts/Appx_6b_estSDIDmshootings_virtra.R"
run_rscript "scripts/Appx_6c_estSDIDmshootings_vista.R"
run_rscript "scripts/Appx_8a_estSDIDcapm.R"
run_rscript "scripts/Appx_8b_estSDIDreturn.R"
run_rscript "scripts/Appx_p25_2a_estSDID.R"
run_rscript "scripts/Appx_p50_2a_estSDID.R"

* Private security
run_rscript "scripts/17_estSDID_ps.R"
run_rscript "scripts/17_estSDID_ps_isc.R"

* Minority CEO
run_rscript "scripts/2a_estSDID_asian_ceo.R"
run_rscript "scripts/2a_estSDID_black_ceo.R"
run_rscript "scripts/2a_estSDID_hisp_ceo.R"
run_rscript "scripts/3_estSDID_ceo_placebos.R"
run_rscript "scripts/3_estSDID_ps_placebos.R"

display as result ">>> STAGE 2 complete."

********************************************************************************
* STAGE 3: Plot & Table (Stata + R)
*   ~30-60 minutes
********************************************************************************
display as result _n ">>> STAGE 3: Plotting & Tables"

* Descriptive / Timeline
run_do "scripts/0_timeseries.do"
run_do "scripts/1_descriptives.do"

* Main SDID plots
run_do "scripts/2b_plotSDID.do"
run_do "scripts/3b_plotSDIDgvt.do"
run_do "scripts/4bpooled_plotSDIDcategory.do"
run_do "scripts/6c_plotSDIDmshootings_adl.do"

* Market value (must run before 11a_plotSDIDfundamentals which merges mktval.dta)
run_do "scripts/12_marketvalue.do"

* Long-run
run_do "scripts/5a_plotSDIDlong_strong.do"
run_do "scripts/5b_plotSDIDlong_weak.do"
run_do "scripts/10a_plotSDIDlong_unwgtstrong.do"
run_do "scripts/10a_plotSDIDlong_unwgtweak.do"
run_do "scripts/11a_plotSDIDlong_full.do"

* Fundamentals & post-George Floyd
run_do "scripts/11a_plotSDIDfundamentals_strong.do"
run_do "scripts/11b_GF_plotSDIDcategory.do"

* Appendix plots
run_do "scripts/Appx_6d_plodSDIDmshootings.do"
run_do "scripts/Appx_7_eventstudy.do"
run_do "scripts/Appx_7_eventstudy_massshooting_Firearm.do"
run_do "scripts/Appx_8c_plotSDIDcapm_return.do"
run_do "scripts/Appx_cuttoff_2b_plotSDID.do"

* Minority & private security
run_do "scripts/Appx_descriptives_minority_ps.do"
run_do "scripts/2b_plotSDID_full.do"
run_do "scripts/17_plotSDID_ps.do"
run_do "scripts/17_plotSDID_ps_isc.do"

* Placebos comparison
run_do "scripts/all_placebos_compared.do"

* all_placebos_compared.do issues `clear all`, which drops user programs.
* Redefine run_rscript / run_do before the remaining R calls.
capture program drop run_rscript
program define run_rscript
	args script
	display as result "    [R] `script' — started `c(current_time)'"
	shell Rscript "`script'"; echo $? > _r_exitcode.tmp
	tempname fh
	file open `fh' using "_r_exitcode.tmp", read text
	file read `fh' line
	file close `fh'
	erase "_r_exitcode.tmp"
	if "`line'" != "0" {
		display as error "    [R] `script' — FAILED (exit code `line')"
		exit 1
	}
	display as result "    [R] `script' — done `c(current_time)'"
end

capture program drop run_do
program define run_do
	args script
	display as result "    [do] `script' — started `c(current_time)'"
	do "`script'"
	display as result "    [do] `script' — done `c(current_time)'"
end

* R-based tables and figures
run_rscript "scripts/company_detail_table.R"
run_rscript "scripts/company_detail_table_isc.R"
run_rscript "scripts/10k_word_dev.R"
run_rscript "scripts/10k_word_dev_weak.R"

display as result ">>> STAGE 3 complete."

********************************************************************************
* STAGE 4: Exploration Analysis
*   ~10-20 minutes
********************************************************************************
display as result _n ">>> STAGE 4: Exploration Analysis"

run_do "scripts/analysis.do"
run_do "scripts/analysis_fas.do"

display as result ">>> STAGE 4 complete."

********************************************************************************
* STAGE 5: Convert all .dta and .xlsx to .csv.gz (JPE compliance)
********************************************************************************
display as result _n ">>> STAGE 5: Converting data to non-proprietary format (.csv.gz)"
run_rscript "scripts/99_convert_to_csv.R"
display as result ">>> STAGE 5 complete."

********************************************************************************
* OUTPUT CHECK: confirm every manuscript exhibit was actually written.
*
* Stata returns exit status 0 in batch mode even after a fatal error, so a
* partial run is not detectable from the exit status. This block verifies the
* expected files exist and prints a loud banner if any are missing.
********************************************************************************
display as result _n ">>> Verifying expected outputs"

do "scripts/config.do"

local missing ""

* --- Main text figures ---
foreach f in v3_timeline_twitter v3_descrip_exret ///
             IBES_buy_diff_recommendations_strong IBES_buy_diff_recommendations_weak ///
             v3_SDID_CAR_event7_21days_full_short v3_SDID_CAR_event_21days_ByEvents ///
             v3_strong_gvt_event_21days_ByEvents v3_weak_gvt_event_21days_ByEvents ///
             v3_SDID_CAR_Top_pooled_Products_21days v3_SDID_CAR_Bottom_pooled_Products_21days ///
             SDID_CAR_MassShooting_21days SDID_CAR_adl_21days ///
             v3_SDID_CAR_long_strong v3_SDID_CAR_long_weak ///
             v3_SDID_CAR_Top_postGF_Products_21days v3_SDID_CAR_Bottom_postGF_Products_21days ///
             v3_SC_gsale v3_SC_gcogs ///
             v3_SDID_capm_ff4_return_strong v3_SDID_capm_ff4_return_weak ///
             connected_cutoff v3_SDID_cutoff_return_strong v3_SDID_cutoff_return_weak ///
             v3_SDID_CAR_long_equally_strong v3_SDID_CAR_long_equally_weak ///
             v3_SDID_CAR_longterm_SDIDvsSC v3_SDID_gsale v3_SDID_gcogs ///
             all_placebos_compared ///
             SDID_CAR_MassShooting_SW_21days SDID_CAR_MassShooting_Virtra_21days ///
             SDID_CAR_MassShooting_Vista_21days {
	capture confirm file "$path_figures/`f'.pdf"
	if _rc local missing `"`missing' $path_figures/`f'.pdf"'
}

* --- 10-K word heatmaps (PNG) ---
foreach f in police_words_norm_heatmap_strong police_words_norm_heatmap_weak {
	capture confirm file "$path_figures/`f'.png"
	if _rc local missing `"`missing' $path_figures/`f'.png"'
}

* --- Appendix Figures A.4 / A.5: seven event panels each ---
forvalues e = 0/6 {
	foreach stub in v3_SDID_CAR_event`e'_21days_full v3_SC_CAR_event`e'_21days_full {
		capture confirm file "$path_figures/`stub'.pdf"
		if _rc local missing `"`missing' $path_figures/`stub'.pdf"'
	}
}

* --- Minority CEO figures ---
capture confirm file "$path_figures/minority/SDID_minority_21days_ByEvents.pdf"
if _rc local missing `"`missing' $path_figures/minority/SDID_minority_21days_ByEvents.pdf"'
forvalues e = 0/7 {
	capture confirm file "$path_figures/minority/SDID_minority_event`e'_21days.pdf"
	if _rc local missing `"`missing' $path_figures/minority/SDID_minority_event`e'_21days.pdf"'
}

* --- Private security figures ---
foreach f in SDID_ps_CAR_event SDID_ps_isc_CAR_event {
	capture confirm file "$path_figures/private_security/`f'.pdf"
	if _rc local missing `"`missing' $path_figures/private_security/`f'.pdf"'
}
forvalues e = 0/7 {
	foreach stub in SDID_private_security_`e' SDID_private_security_isc_`e' {
		capture confirm file "$path_figures/private_security/`stub'.pdf"
		if _rc local missing `"`missing' $path_figures/private_security/`stub'.pdf"'
	}
}

* --- Tables ---
foreach f in v3_summary v3_table_CAR v3_table_CAR_massshooting_smithwesson ///
             v3_table_CAR_massshooting_virtra v3_table_CAR_massshooting_vista ///
             summary_minority_ps private_security_descriptions ///
             private_security_desciptions_sample2 {
	capture confirm file "$path_tables/`f'.tex"
	if _rc local missing `"`missing' $path_tables/`f'.tex"'
}

* --- Exploration outputs ---
foreach f in descriptives_protests main_bwc_gunshot_IV main_videos_Append {
	capture confirm file "$path_exploration_results/`f'.tex"
	if _rc local missing `"`missing' $path_exploration_results/`f'.tex"'
}
capture confirm file "$path_exploration_results/fas_IV.pdf"
if _rc local missing `"`missing' $path_exploration_results/fas_IV.pdf"'

if `"`missing'"' != "" {
	display as error _n "********************************************************"
	display as error "  PIPELINE INCOMPLETE — the following outputs are missing:"
	foreach f of local missing {
		display as error "    `f'"
	}
	display as error "********************************************************"
}
else {
	display as result "  ALL EXPECTED OUTPUTS PRESENT."
}

********************************************************************************
* Done
********************************************************************************
timer off 99
display as result _n "============================================"
display as result "  Pipeline complete."
display as result "  Finished: `c(current_date)' `c(current_time)'"
timer list 99
display as result "  Outputs saved to: results/figures/, results/tables/, and results/exploration/"
display as result "============================================"
display as result _n "  Hand-curated tables (not produced by this script):"
display as result "    results/manual_tables/category_firmsV1.tex"
display as result "    results/manual_tables/category_firmsV2.tex"
display as result "    results/manual_tables/product_by_reform_crime_fighting_category.tex"
