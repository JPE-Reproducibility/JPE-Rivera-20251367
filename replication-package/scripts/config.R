# Name: config
# Description: define variables used across files
# All paths relative to replication/ root

### 1. file paths

path_data <- "cleaned_data/"        # cleaned input data
path_rslt <- "cleaned_data/SDID/"   # SDID estimation outputs (intermediate — not draft-cited)
path_main_rslt <- "cleaned_data/SDID/"
path_monthly_rslt <- "cleaned_data/SDID/"

path_raw_wrds <- "raw_data/wrds/"
path_raw_rosters <- "raw_data/rosters/"
path_raw_edgar <- "raw_data/edgar/"
path_raw_fred <- "raw_data/fred/"
path_raw_bloomberg <- "raw_data/bloomberg/"
path_raw_survey <- "raw_data/categorization/"
path_raw_ibes <- "raw_data/ibes/"
path_raw_ps <- "raw_data/private_security/"
path_raw_exploration <- "raw_data/protests/"

path_figures <- "results/figures/"
path_tables <- "results/tables/"

### 2. file names

moredays_name <- "returns_moredays.csv"
moredays_name_capm <- "returns_moredays_capm.csv"
longterm_name <- "full_portfolio.csv"
category_name <- "returns_daily_category_fullV4.csv"
moredays_name_fakedate <- "returns_moredays_placebo_date.csv"
