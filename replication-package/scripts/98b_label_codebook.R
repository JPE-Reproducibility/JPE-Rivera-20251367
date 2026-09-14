# 98b_label_codebook.R — Add descriptions to unlabeled codebook variables
# Adds a label_source column: "stata" (from .dta), "auto" (pattern/lookup), or ""

library(data.table)

cb <- fread("codebook.csv.gz")
cb[, label_source := fifelse(label != "" & !is.na(label), "stata", "")]

# ============================================================================
# Exact match lookup
# ============================================================================
exact <- c(
  # WRDS / CRSP / Compustat identifiers
  gvkey = "Compustat firm identifier (GVKEY)",
  GVKEY = "Compustat firm identifier (GVKEY)",
  permno = "CRSP permanent security number (PERMNO)",
  cusip = "CUSIP security identifier (8-digit)",
  cusip8 = "CUSIP security identifier (8-digit)",
  cik = "SEC Central Index Key (CIK)",
  tic = "Ticker symbol",
  sic = "Standard Industrial Classification code",
  naics = "North American Industry Classification System code",
  conm = "Company name",
  sconm = "Short company name",
  conmexpo = "Company name (exposure dataset)",
  incorp = "State of incorporation",
  busdesc = "Business description text",
  datadate = "Compustat data date",

  # Stock returns and market data
  exret = "Excess return (return minus risk-free rate)",
  wexret = "Value-weighted excess return",
  netret = "Net return",
  wnetret = "Value-weighted net return",
  AR = "Abnormal return",
  CAR = "Cumulative abnormal return",
  sumAR = "Sum of abnormal returns over event window",
  sumwAR = "Sum of value-weighted abnormal returns",
  sumR = "Sum of raw returns over event window",
  sumiVol = "Sum of idiosyncratic volatility over event window",
  PsumAR = "Placebo sum of abnormal returns",
  alpha = "CAPM/factor model intercept (alpha)",
  b_mkt = "Market beta (factor loading on MKT-RF)",
  b_smb = "SMB factor loading (small minus big)",
  b_hml = "HML factor loading (high minus low)",
  b_umd = "UMD factor loading (momentum)",
  ivol = "Idiosyncratic volatility",
  tvol = "Total volatility",
  mktrf = "Market excess return (MKT-RF)",
  smb = "Small-minus-big factor return (SMB)",
  hml = "High-minus-low factor return (HML)",
  umd = "Up-minus-down momentum factor return (UMD)",
  rf = "Risk-free rate",

  # Firm fundamentals (Compustat quarterly)
  saleq = "Quarterly sales revenue",
  cogsq = "Quarterly cost of goods sold",
  revtq = "Quarterly total revenue",
  mkvaltq = "Market value (quarterly, Compustat)",
  cshoq = "Common shares outstanding (quarterly)",
  prccq = "Price close (quarterly)",
  ppentq = "Property plant and equipment net (quarterly)",
  epspiq = "Earnings per share (quarterly)",
  saleq_qtr = "Quarterly sales (indexed by fiscal quarter)",
  cogsq_qtr = "Quarterly COGS (indexed by fiscal quarter)",
  capxy = "Capital expenditures (annual)",
  capxy_qtr = "Capital expenditures (quarterly)",
  gsale = "Growth in sales (cumulative change)",
  gcogs = "Growth in cost of goods sold (cumulative change)",
  fsale = "Deflated sales (PPI-adjusted)",
  fcogs = "Deflated cost of goods sold (PPI-adjusted)",
  ratio_ppi = "Producer Price Index deflator ratio",
  earn_surp_qtr = "Earnings surprise (quarterly)",
  lag_saleq = "Lagged quarterly sales",
  lag_cogsq = "Lagged quarterly COGS",
  lag_mkvaltq = "Lagged market value (quarterly)",
  lag_cshoq = "Lagged common shares outstanding",
  lag_prccq = "Lagged price close (quarterly)",

  # Firm characteristics
  mktvalue = "Market value of equity",
  lagmktvalue = "Lagged market value",
  strong_mktval = "Market value of strongly connected firms",
  weak_mktval = "Market value of weakly connected firms",
  size_qtr = "Firm size (quarterly)",
  profitability_qtr = "Firm profitability (quarterly)",
  leverage_qtr = "Firm leverage (quarterly)",
  lsize_qtr = "Log firm size (quarterly)",
  lprofitability_qtr = "Log profitability (quarterly)",
  lleverage_qtr = "Log leverage (quarterly)",
  lsize_yr = "Log firm size (annual)",
  lprofitability_yr = "Log profitability (annual)",
  lleverage_yr = "Log leverage (annual)",

  # Police connection variables
  PD = "Police department connection indicator",
  PDstocks = "Number of police-connected stocks in same SIC/state",
  strong = "Strongly connected to police (indicator)",
  weak = "Weakly connected to police (indicator)",
  group = "Connection group (1=control, 2=weak, 3=strong)",
  group_p25 = "Connection group using 25th percentile threshold",
  group_p50 = "Connection group using 50th percentile threshold",
  tier = "Connection tier",
  public = "Publicly traded firm indicator",
  treated_company = "Treated company name (SDID)",
  anyPD = "Any police department connection",
  anyPDsic = "Any PD connection in same SIC industry",
  anyPDstate = "Any PD connection in same state",
  gvtexpo = "Government exposure indicator",
  strong_sharegvt = "Share of government clients (strong firms)",
  weak_sharegvt = "Share of government clients (weak firms)",

  # Exposure variables
  expo_crime = "Exposure to crime-related terms in 10-K",
  expo_government = "Exposure to government-related terms in 10-K",
  expo_gvt = "Exposure to government-related terms in 10-K",
  expo_police = "Exposure to police-related terms in 10-K",
  expo_policing = "Exposure to policing-related terms in 10-K",
  expo_reform = "Exposure to reform-related terms in 10-K",
  expo_privatesecurity = "Exposure to private security terms in 10-K",
  avgexpo_crime = "Average exposure to crime terms",
  avgexpo_government = "Average exposure to government terms",
  avgexpo_police = "Average exposure to police terms",
  avgexpo_policing = "Average exposure to policing terms",
  avgexpo_reform = "Average exposure to reform terms",
  avgexpo_privatesecurity = "Average exposure to private security terms",
  highexpo_crime = "High crime exposure indicator",
  highexpo_government = "High government exposure indicator",
  highexpo_reform = "High reform exposure indicator",
  q25_expo_policing = "25th percentile of policing exposure",
  q50_expo_policing = "50th percentile of policing exposure",
  q75_expo_policing = "75th percentile of policing exposure",
  q50_expo_privatesecurity = "50th percentile of private security exposure",
  q75_expo_privatesecurity = "75th percentile of private security exposure",
  lag_expo_crime = "Lagged crime exposure",
  lag_expo_government = "Lagged government exposure",
  lag_expo_police = "Lagged police exposure",
  lag_expo_reform = "Lagged reform exposure",
  lag_expo_privatesecurity = "Lagged private security exposure",
  lag_crime_terms = "Lagged crime term count",
  lag_government_terms = "Lagged government term count",
  lag_police_terms = "Lagged police term count",
  lag_reform_terms = "Lagged reform term count",
  lag_privatesecurity_terms = "Lagged private security term count",

  # Event/time variables
  t0 = "Event date (Trayvon Martin killing)",
  t1 = "Event date 1 (Michael Brown)",
  t2 = "Event date 2 (Tamir Rice)",
  t3 = "Event date 3 (Freddie Gray)",
  t4 = "Event date 4 (Alton Sterling)",
  t5 = "Event date 5 (Stephon Clark)",
  t6 = "Event date 6 (George Floyd)",
  Et = "Event time indicator",
  Ft = "Fama-French factor at time t",
  Treat = "Treatment group indicator (1=police-connected)",
  FTreat = "Interaction of factor and treatment",
  postBLM = "Post-BLM event indicator",
  anypostBLM = "Any post-BLM period indicator",
  event0 = "Event 0 window indicator",
  event1 = "Event 1 window indicator",
  event2 = "Event 2 window indicator",
  event3 = "Event 3 window indicator",
  event4 = "Event 4 window indicator",
  event5 = "Event 5 window indicator",
  event6 = "Event 6 window indicator",

  # Time variables
  mofd = "Month of date (Stata monthly date)",
  wofd = "Week of date (Stata weekly date)",
  qofd = "Quarter of date (Stata quarterly date)",
  fyear = "Fiscal year",
  fyearq = "Fiscal year-quarter",
  fqtr = "Fiscal quarter",
  year = "Calendar year",
  month = "Calendar month",
  day = "Calendar day",
  date = "Date",
  DATE = "Date",
  tw = "Trading week",
  tm = "Trading month",
  t = "Time index",
  mindate = "Minimum date in sample",
  minyear = "Minimum year in sample",
  maxyear = "Maximum year in sample",

  # CEO / minority variables
  asian_ceo = "Asian CEO indicator",
  black_ceo = "Black CEO indicator",
  hispanic_ceo = "Hispanic CEO indicator",
  anyasian_ceo = "Any Asian CEO indicator",
  anyblack_ceo = "Any Black CEO indicator",
  anyhispanic_ceo = "Any Hispanic CEO indicator",
  Asianstocks = "Asian CEO stock indicator",
  Blackstocks = "Black CEO stock indicator",
  Hispanicstocks = "Hispanic CEO stock indicator",
  Hispstocks = "Hispanic CEO stock indicator",

  # Private security
  in_isc = "In ISC exhibitor sample indicator",
  description = "Company/product description",

  # Demographics / Census
  population = "Population",
  median_income = "Median household income",
  income = "Income",
  sh_black = "Share Black population",
  sh_hispanic = "Share Hispanic population",
  black = "Black population count or share",
  hispanic = "Hispanic population count or share",
  white = "White population count or share",
  nonhispanic = "Non-Hispanic population share",
  male_15_17 = "Male population aged 15-17",
  sh_male_15_17 = "Share of male population aged 15-17",
  high_black = "High Black population share indicator",

  # Geography
  state = "State name",
  State = "State name",
  state_abb = "State abbreviation",
  city = "City name",
  City = "City name",
  Zip = "ZIP code",
  zip_code = "ZIP code",
  latitude = "Latitude",
  longitude = "Longitude",
  geoid = "Census GEOID",
  loc = "Location identifier",
  region = "Census region",
  division = "Census division",
  fips_state_code = "FIPS state code",
  fips_county_code = "FIPS county code",
  fips_place_code = "FIPS place code",
  fips_state_county_code = "FIPS state-county code",
  msa = "Metropolitan Statistical Area code",

  # LEMAS / policing technology
  any_bwc = "Agency has body-worn cameras",
  any_vid_bwc = "Agency uses body-worn camera video",
  any_vid_car = "Agency uses in-car camera video",
  any_vid_drone = "Agency uses drone video",
  any_vid_fixed = "Agency uses fixed surveillance cameras",
  any_vid_mobile = "Agency uses mobile surveillance",
  any_vid_weap = "Agency uses weapon-mounted cameras",
  any_tech_cad = "Agency uses computer-aided dispatch",
  any_tech_facerec = "Agency uses facial recognition",
  any_tech_gunshot = "Agency uses gunshot detection technology",
  any_tech_infr = "Agency uses infrared technology",
  any_tech_lpr = "Agency uses license plate readers",
  any_tech_rms = "Agency uses records management system",
  any_compl = "Agency has complaint tracking",
  any_conduct = "Agency has conduct policy",
  any_deadforc = "Agency has deadly force policy",
  any_domdisp = "Agency has domestic dispute policy",
  any_homeless = "Agency has homeless policy",
  any_juv = "Agency has juvenile policy",
  any_lesslethal = "Agency has less-lethal force policy",
  any_mentill = "Agency has mental illness policy",
  pc_vid_bwc = "Percent of officers with body-worn cameras",
  pc_vid_car = "Percent of vehicles with in-car cameras",
  pc_vid_drone = "Percent using drones",
  pc_vid_fixed = "Percent using fixed surveillance",
  pc_vid_mobile = "Percent using mobile surveillance",
  pc_vid_weap = "Percent using weapon-mounted cameras",
  pc_murder = "Per capita murder rate",
  pc_police = "Per capita police officers",
  pc_property = "Per capita property crime rate",
  pc_violent = "Per capita violent crime rate",
  tot_police = "Total police officers",
  tot_civilians = "Total civilian employees",
  tot_employees = "Total employees",
  police_dpt = "Police department indicator",
  ntot = "Total number of agencies",

  # Agency identifiers (LEOKA/UCR)
  ori = "Originating Agency Identifier (ORI, 7-char)",
  ori9 = "Originating Agency Identifier (ORI, 9-char)",
  agency_name = "Law enforcement agency name",
  agency_type = "Type of law enforcement agency",
  census_name = "Census-designated agency name",
  crosswalk_agency_name = "Crosswalk agency name",
  core_city_indication = "Core city indicator",
  covered_by = "Covered by (parent agency)",
  covered_by_ori = "ORI of covering agency",
  population_group = "UCR population group",

  # Weather / IV
  closest_station_id = "Nearest NOAA weather station ID",
  distance = "Distance to nearest weather station (km)",
  mdy = "Month-day-year date",

  # Protest / MPV
  dist_mpv = "Distance to Mapping Police Violence incident",
  dist_black_mpv = "Distance to MPV incident involving Black victim",
  dist_mpls = "Distance to Minneapolis (George Floyd)",
  ldist_mpv = "Log distance to MPV incident",
  ldist_black_mpv = "Log distance to MPV incident (Black victim)",
  ldist_mpls = "Log distance to Minneapolis",
  mpls_latitude = "Minneapolis latitude",
  mpls_longitude = "Minneapolis longitude",
  total = "Total count",
  agency_count = "Number of agencies",

  # Miscellaneous
  n = "Number of observations",
  nobs = "Number of observations",
  b = "Coefficient estimate",
  constant = "Constant term",
  i = "Index variable",
  panel = "Panel identifier",
  rec = "Record indicator",
  placebo = "Placebo indicator",
  estimation = "Estimation method identifier",
  Sentiment = "Sentiment score",
  PRisk = "Political risk measure",
  Name = "Name",
  ID_abb = "Abbreviated identifier",
  ID1 = "Primary identifier",
  ELEMENT = "Weather element type",
  VALUE = "Weather observation value",
  category = "Product/service category",
  categoryID = "Category identifier",
  long_category = "Long-form category name",
  everstrong = "Ever strongly connected indicator",
  missVar = "Missing variable indicator",
  evermissVar = "Ever had missing variable",
  ein = "Employer Identification Number",
  mdy_earncall = "Earnings call date",

  # Mailing address fields
  first_line_of_mailing_address = "First line of mailing address",
  second_line_of_mailing_address = "Second line of mailing address",
  third_line_of_mailing_address = "Third line of mailing address",
  fourth_line_of_mailing_address = "Fourth line of mailing address",
  special_mailing_address = "Special mailing address",
  special_mailing_group = "Special mailing group",
  address_name = "Address name",
  address_street_line_1 = "Street address line 1",
  address_street_line_2 = "Street address line 2",
  address_city = "City",
  address_state = "State",
  address_zip_code = "ZIP code",
  addzip = "ZIP code (alternate)",

  # UCR / reporting
  last_month_reported = "Last month data reported",
  number_of_months_missing = "Number of months with missing data",
  number_of_months_reported = "Number of months with reported data",
  date_of_last_update = "Date of last data update",
  last_update = "Last update date",
  record_indicator = "Record type indicator",
  report_indicator = "Report type indicator",
  month_included_in = "Month included in reporting",
  month_missing = "Month with missing data indicator",
  month_indicator = "Month indicator",
  followup_indication = "Follow-up indicator",
  shift_data = "Shift assignment data available",
  arson_last_month_reported = "Last month arson data reported",
  arson_number_of_months_missing = "Months missing arson data",
  juvenile_age = "Juvenile age threshold",
  no_male_female_breakdown = "No gender breakdown available",
  country_division = "Country division code",
  fbi_field_office = "FBI field office",

  # LEOKA employee counts
  male_employees_officers = "Male sworn officers",
  male_employees_civilians = "Male civilian employees",
  male_employees_total = "Total male employees",
  female_employees_officers = "Female sworn officers",
  female_employees_civilians = "Female civilian employees",
  female_employees_total = "Total female employees",
  total_employees_officers = "Total sworn officers",
  total_employees_civilians = "Total civilian employees",
  total_employees_total = "Total employees (officers + civilians)",
  officers_assaulted = "Number of officers assaulted",
  officers_killed_by_accident = "Officers killed by accident",
  officers_killed_by_felony = "Officers killed by felony",
  officers_killed_total = "Total officers killed",
  assault_injury_indicator = "Assault with injury indicator",
  assault_no_injury_indicator = "Assault without injury indicator",

  # Masten-Poirier
  exporter = "Exporter indicator (Masten-Poirier)",
  importer = "Importer indicator (Masten-Poirier)",
  tons_external = "External trade in tons",
  val_external = "External trade value",
  l_pop1970 = "Log population 1970",
  l_pop1980 = "Log population 1980",
  l_gulf_dist = "Log distance to Gulf coast",
  l_lake_dist = "Log distance to Great Lakes",
  l_ocean_dist = "Log distance to ocean",
  l_internal_distance = "Log internal distance",
  l_tons_internal = "Log internal trade tons",
  l_val_internal = "Log internal trade value",
  l_tons_internal_share2 = "Log internal trade tons share squared",
  l_val_internal_share2 = "Log internal trade value share squared"
)

for (v in names(exact)) {
  rows <- cb$variable == v & cb$label_source == ""
  if (any(rows)) {
    cb[rows, `:=`(label = exact[v], label_source = "auto")]
  }
}

# ============================================================================
# Pattern-based labels
# ============================================================================

# sumAR_event*, sumR_event*, sumiVol_event*, CAR_event*
for (prefix in c("sumAR_event", "sumR_event", "sumiVol_event", "CAR_event")) {
  desc_map <- c(sumAR_event = "Sum of abnormal returns for event ",
                sumR_event = "Sum of raw returns for event ",
                sumiVol_event = "Sum of idiosyncratic vol for event ",
                CAR_event = "Cumulative abnormal return for event ")
  rows <- cb$label_source == "" & grepl(paste0("^", prefix, "[0-9]"), cb$variable)
  if (any(rows)) {
    nums <- gsub(paste0("^", prefix), "", cb$variable[rows])
    cb[rows, `:=`(label = paste0(desc_map[prefix], nums), label_source = "auto")]
  }
}

# PsumAR_event*, APsumAR_event*, Pt*, APt*
rows <- cb$label_source == "" & grepl("^PsumAR_event", cb$variable)
if (any(rows)) cb[rows, `:=`(label = paste0("Placebo sum of abnormal returns for event ", gsub("^PsumAR_event", "", variable)), label_source = "auto")]

rows <- cb$label_source == "" & grepl("^APsumAR_event", cb$variable)
if (any(rows)) cb[rows, `:=`(label = paste0("ADL placebo sum of abnormal returns for event ", gsub("^APsumAR_event", "", variable)), label_source = "auto")]

rows <- cb$label_source == "" & grepl("^Pt[0-9]+$", cb$variable)
if (any(rows)) cb[rows, `:=`(label = paste0("Placebo event ", gsub("^Pt", "", variable), " indicator"), label_source = "auto")]

rows <- cb$label_source == "" & grepl("^APt[0-9]+$", cb$variable)
if (any(rows)) cb[rows, `:=`(label = paste0("ADL placebo event ", gsub("^APt", "", variable), " indicator"), label_source = "auto")]

# placebo1-11, adl_placebo1-8
rows <- cb$label_source == "" & grepl("^placebo[0-9]+$", cb$variable)
if (any(rows)) cb[rows, `:=`(label = paste0("Placebo event ", gsub("^placebo", "", variable), " date"), label_source = "auto")]

rows <- cb$label_source == "" & grepl("^adl_placebo[0-9]+$", cb$variable)
if (any(rows)) cb[rows, `:=`(label = paste0("ADL placebo event ", gsub("^adl_placebo", "", variable), " date"), label_source = "auto")]

# COV_ind*_te/ti/ve/vi — industry fixed effects
rows <- cb$label_source == "" & grepl("^COV_ind[0-9]+_", cb$variable)
if (any(rows)) {
  suffix_map <- c(te = "treated, excess return", ti = "treated, idiosyncratic vol",
                  ve = "control, excess return", vi = "control, idiosyncratic vol")
  nums <- gsub("^COV_ind([0-9]+)_.*", "\\1", cb$variable[rows])
  suffixes <- gsub("^COV_ind[0-9]+_", "", cb$variable[rows])
  descs <- ifelse(suffixes %in% names(suffix_map), suffix_map[suffixes], suffixes)
  cb[rows, `:=`(label = paste0("Industry ", nums, " fixed effect (", descs, ")"), label_source = "auto")]
}

# lsize1-3, lprofitability1-3, lleverage1-3
for (base in c("lsize", "lprofitability", "lleverage")) {
  full_map <- c(lsize = "Log firm size", lprofitability = "Log profitability", lleverage = "Log leverage")
  rows <- cb$label_source == "" & grepl(paste0("^", base, "[0-9]+$"), cb$variable)
  if (any(rows)) {
    nums <- gsub(paste0("^", base), "", cb$variable[rows])
    cb[rows, `:=`(label = paste0(full_map[base], " (lag ", nums, ")"), label_source = "auto")]
  }
}

# anyAsianstocks*, anyBlackstocks*, anyHispanicstocks*, anyHispstocks*
for (pref in c("anyAsianstocks", "anyBlackstocks", "anyHispanicstocks", "anyHispstocks")) {
  ceo_map <- c(anyAsianstocks = "Asian CEO", anyBlackstocks = "Black CEO",
               anyHispanicstocks = "Hispanic CEO", anyHispstocks = "Hispanic CEO")
  rows <- cb$label_source == "" & grepl(paste0("^", pref), cb$variable)
  if (any(rows)) {
    suffix <- gsub(paste0("^", pref), "", cb$variable[rows])
    desc <- ifelse(suffix == "sic", " in same SIC", ifelse(suffix == "state", " in same state", ""))
    cb[rows, `:=`(label = paste0("Any ", ceo_map[pref], " stock", desc), label_source = "auto")]
  }
}

# UCR actual_*, clr_18_*, tot_clr_*, unfound_* — self-documenting from name
ucr_prefixes <- c(
  "actual_" = "UCR actual offenses: ",
  "clr_18_" = "UCR clearances (under 18): ",
  "tot_clr_" = "UCR total clearances: ",
  "unfound_" = "UCR unfounded offenses: "
)
for (pref in names(ucr_prefixes)) {
  rows <- cb$label_source == "" & grepl(paste0("^", pref), cb$variable)
  if (any(rows)) {
    crime_type <- gsub(paste0("^", pref), "", cb$variable[rows])
    crime_type <- gsub("_", " ", crime_type)
    cb[rows, `:=`(label = paste0(ucr_prefixes[pref], crime_type), label_source = "auto")]
  }
}

# LEOKA assault categories: *_assault_*, *_detective_*, *_one_man_*, etc.
leoka_situations <- c(
  "ambush", "burglary", "deranged", "disturbance", "oth_arrest",
  "prisoner", "riot", "robbery", "susp_pers", "traffic",
  "all_other", "total"
)
for (sit in leoka_situations) {
  rows <- cb$label_source == "" & grepl(paste0("^", sit, "_"), cb$variable)
  if (any(rows)) {
    detail <- gsub(paste0("^", sit, "_"), "", cb$variable[rows])
    detail <- gsub("_", " ", detail)
    sit_clean <- gsub("_", " ", sit)
    cb[rows, `:=`(label = paste0("LEOKA ", sit_clean, ": ", detail), label_source = "auto")]
  }
}

# LEOKA shift patterns
shift_pats <- c("one_man_foot_", "one_man_veh_", "two_man_foot_", "two_man_veh_",
                "other_patrols_", "total_patrols_")
for (pat in shift_pats) {
  rows <- cb$label_source == "" & grepl(paste0("^", pat), cb$variable)
  if (any(rows)) {
    detail <- gsub(paste0("^", pat), "", cb$variable[rows])
    pat_clean <- gsub("_$", "", gsub("_", " ", pat))
    cb[rows, `:=`(label = paste0("LEOKA patrol: ", pat_clean, " ", gsub("_", " ", detail)), label_source = "auto")]
  }
}

# LEOKA assaults_with/without_injury
rows <- cb$label_source == "" & grepl("^assaults_", cb$variable)
if (any(rows)) {
  detail <- gsub("_", " ", cb$variable[rows])
  cb[rows, `:=`(label = paste0("LEOKA ", detail), label_source = "auto")]
}

# Masten-Poirier l_mp*
rows <- cb$label_source == "" & grepl("^l_mp[0-9]+_", cb$variable)
if (any(rows)) {
  cb[rows, `:=`(label = paste0("Masten-Poirier IV: ", gsub("_", " ", variable)), label_source = "auto")]
}

# UCR card_ variables
rows <- cb$label_source == "" & grepl("^card_", cb$variable)
if (any(rows)) {
  detail <- gsub("^card_", "", cb$variable[rows])
  detail <- gsub("_", " ", detail)
  cb[rows, `:=`(label = paste0("UCR return card: ", detail), label_source = "auto")]
}

# time_of_assault_*
rows <- cb$label_source == "" & grepl("^time_of_assault_", cb$variable)
if (any(rows)) {
  hours <- gsub("^time_of_assault_", "", cb$variable[rows])
  hours <- gsub("_to_", " to ", hours)
  cb[rows, `:=`(label = paste0("LEOKA assaults during hours ", hours), label_source = "auto")]
}

# population_1/2/3 and county variants
rows <- cb$label_source == "" & grepl("^population_[0-9]", cb$variable)
if (any(rows)) {
  is_county <- grepl("county", cb$variable[rows])
  nums <- gsub("^population_([0-9]+).*", "\\1", cb$variable[rows])
  cb[rows, `:=`(label = paste0("Population group ", nums, fifelse(is_county, " (county)", "")), label_source = "auto")]
}

# ============================================================================
# Summary
# ============================================================================
cat("Label coverage:\n")
cat("  stata:", cb[label_source == "stata", .N], "\n")
cat("  auto:", cb[label_source == "auto", .N], "\n")
cat("  unlabeled:", cb[label_source == "", .N], "\n")
cat("  total:", nrow(cb), "\n")
cat("\nUnique unlabeled remaining:", cb[label_source == "", uniqueN(variable)], "\n")

fwrite(cb, "codebook.csv.gz")
cat("\nWrote codebook.csv.gz\n")

# Regenerate markdown
md <- character()
md <- c(md, "# Variable Codebook", "",
        paste0("Generated: ", Sys.time()), "",
        paste0("Total datasets: ", cb[, uniqueN(dataset)]),
        paste0("Total variables: ", nrow(cb)),
        paste0("Variables with descriptions: ", nrow(cb[label != ""])),
        "",
        "Label sources: **stata** = embedded Stata label, **auto** = auto-generated from variable name/pattern", "")

datasets <- cb[, unique(dataset)]
for (ds in datasets) {
  sub <- cb[dataset == ds]
  md <- c(md, paste0("## `", ds, "`"), "",
          "| Variable | Type | Description | Source |",
          "|----------|------|-------------|--------|")
  for (j in seq_len(nrow(sub))) {
    desc <- sub$label[j]; if (is.na(desc)) desc <- ""
    src <- sub$label_source[j]; if (is.na(src)) src <- ""
    md <- c(md, paste0("| `", sub$variable[j], "` | ", sub$type[j], " | ", desc, " | ", src, " |"))
  }
  md <- c(md, "")
}

writeLines(md, "CODEBOOK.md")
cat("Wrote CODEBOOK.md\n")
'