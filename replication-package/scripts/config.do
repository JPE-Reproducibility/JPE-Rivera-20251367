********************************************************************************
* Master config for Stata scripts
* All paths relative to replication/ root (run scripts from there)
* Requires packages from scripts/00_setup.do — run that once before anything else.
********************************************************************************

* Raw data
global path_raw_wrds       "raw_data/wrds"
global path_raw_rosters    "raw_data/rosters"
global path_raw_edgar      "raw_data/edgar"
global path_raw_fred       "raw_data/fred"
global path_raw_bloomberg  "raw_data/bloomberg"
global path_raw_survey     "raw_data/categorization"
global path_raw_ibes       "raw_data/ibes"
global path_raw_ps         "raw_data/private_security"
global path_raw_exploration "raw_data/protests"

* Cleaned / intermediate data (read-write)
global path_cleaned        "cleaned_data"

* SDID estimation outputs (intermediate R→Stata handoff, NOT draft-cited)
global path_sdid           "cleaned_data/SDID"

* Final draft outputs (results/ layout mirrors draft/resultsV2/)
global path_figures        "results/figures"
global path_tables         "results/tables"
global path_exploration_results "results/exploration"
