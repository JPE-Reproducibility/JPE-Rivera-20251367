## Code Quality

### Python

[ADVISORY] `pd.merge()` or `.merge()` called without explicit `how=` argument — defaults to inner join, which may silently drop rows. (s0_get_station.py, line 103)
  → gdf = gdf.merge(

### R

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (17_estSDID_ps.R, line 50)
  → df <- df %>% filter(permno %notin% policing_firms )

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_estSDID_ps_placebos.R, line 40)
  → filter(placebo>=0) %>%

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_estSDID_ps_placebos.R, line 41)
  → filter(group==1|group==3)

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (helper_funcs.R, line 321)
  → filter(countN==median(countN))

[ADVISORY] `merge()` called without explicit `all=`, `all.x=`, or `all.y=` argument — defaults to inner join, which may silently drop rows. (0_build_fuzz_match.R, line 57)
  → ties <- merge(ties, as.data.table(iacp_short), by = c("ID1", "sname"))

[ADVISORY] `merge()` called without explicit `all=`, `all.x=`, or `all.y=` argument — defaults to inner join, which may silently drop rows. (0_build_fuzz_match.R, line 58)
  → ties <- merge(ties, as.data.table(wrds_short), by = c("GVKEY", "sconm"))

### Stata

[CRITICAL] Hardcoded absolute path detected — the package will not run on another machine. (main.do, line 12)
  → cd "/Users/matt/Desktop/MastenPoirier_2020_FAS_replication_files"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0_timeseries.do, line 17)
  → keep if year<=2020

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0_timeseries.do, line 71)
  → drop if exret==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 29)
  → drop if cr_`v'==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 63)
  → drop if tot_civilians==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 64)
  → drop if tot_police==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 65)
  → drop if tot_employees!=tot_civilians+tot_police

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 88)
  → drop if ori9==""

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 89)
  → drop if ori9=="-1"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 122)
  → keep if mdy>=mdy(5,25,2020)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 123)
  → keep if mdy<=mdy(7,31,2020)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 128)
  → drop if latitude==.|longitude==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 152)
  → keep if mdy>=mdy(5,25,2020)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 153)
  → keep if mdy<=mdy(7,31,2020)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 158)
  → keep if r_black==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 163)
  → drop if latitude==.|longitude==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_data.do, line 200)
  → drop if year<2020

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_roster.do, line 27)
  → drop if ein ==""

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_roster.do, line 51)
  → keep if dup==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_roster.do, line 63)
  → drop if cik==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_roster.do, line 72)
  → keep if everpd==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_roster.do, line 76)
  → keep if everpublic==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_roster.do, line 81)
  → drop if ein==""

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_roster.do, line 109)
  → drop if ein==""

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_roster.do, line 168)
  → drop if ein==""

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0a_clean_roster.do, line 169)
  → keep if loc=="USA"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0b_clean_classification.do, line 43)
  → keep if year<=2021

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0b_clean_classification.do, line 66)
  → keep if year>=minyear

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0b_clean_classification.do, line 93)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0b_clean_weather.do, line 37)
  → keep if mdy>=mdy(5,25,2020)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0b_clean_weather.do, line 38)
  → keep if mdy<=mdy(7,31,2020)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0b_clean_weather.do, line 109)
  → drop if closest_station_id==""

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0b_clean_weather.do, line 152)
  → keep if mdy>=mdy(5,25,2020)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0b_clean_weather.do, line 153)
  → keep if mdy<=mdy(7,31,2020)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0c_clean_fundamentals.do, line 92)
  → drop if evergap_t==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0c_clean_fundamentals.do, line 139)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0c_clean_fundamentals.do, line 145)
  → keep if _merge==3|_merge==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (0c_clean_fundamentals.do, line 155)
  → drop if evergap_t==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (10a_plotSDIDlong_unwgtstrong.do, line 10)
  → keep if year<2021

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (10a_plotSDIDlong_unwgtstrong.do, line 61)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (10a_plotSDIDlong_unwgtstrong.do, line 71)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (10a_plotSDIDlong_unwgtweak.do, line 10)
  → keep if year<2021

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (10a_plotSDIDlong_unwgtweak.do, line 61)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (10a_plotSDIDlong_unwgtweak.do, line 71)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (11a_plotSDIDfundamentals_strong.do, line 187)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (11b_GF_plotSDIDcategory.do, line 25)
  → drop if b_sdid==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_marketvalue.do, line 5)
  → drop if group==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_marketvalue.do, line 6)
  → keep if Et==-62

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1_clean_master.do, line 23)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1_clean_master.do, line 29)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1_clean_master.do, line 40)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1_clean_master.do, line 46)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1_clean_master.do, line 52)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1_clean_master.do, line 58)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1_clean_master.do, line 64)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1_clean_master.do, line 70)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1_descriptives.do, line 64)
  → keep if Et==-1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 70)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 87)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 93)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 99)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 147)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 297)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 303)
  → drop if q75_expo_policing==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 309)
  → drop if q50_expo_policing==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 327)
  → keep if _merge!=2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 368)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 457)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 463)
  → drop if q75_expo_policing==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 469)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 545)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 551)
  → drop if q75_expo_policing==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily.do, line 557)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 54)
  → keep if year<=2021

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 72)
  → keep if year>=minyear

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 97)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 116)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 129)
  → keep if anyPDsic==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 192)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 209)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 215)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 221)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 244)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 368)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 374)
  → drop if q75_expo_privatesecurity==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 380)
  → drop if q50_expo_privatesecurity==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity.do, line 385)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 53)
  → keep if year<=2021

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 71)
  → keep if year>=minyear

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 96)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 115)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 128)
  → keep if anyPDsic==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 191)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 208)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 214)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 220)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 243)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 367)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 373)
  → drop if q75_expo_privatesecurity==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 379)
  → drop if q50_expo_privatesecurity==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_isc.do, line 384)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 54)
  → keep if year<=2021

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 72)
  → keep if year>=minyear

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 97)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 116)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 129)
  → keep if anyPDsic==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 192)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 209)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 215)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 221)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 268)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 414)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 420)
  → drop if q75_expo_privatesecurity==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 426)
  → drop if q50_expo_privatesecurity==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 431)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 514)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 520)
  → drop if q75_expo_privatesecurity==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 526)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 602)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 608)
  → drop if q75_expo_privatesecurity==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1a_clean_daily_privatesecurity_with_placebos.do, line 614)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1b_clean_daily_capm.do, line 69)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1b_clean_daily_capm.do, line 86)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1b_clean_daily_capm.do, line 92)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1b_clean_daily_capm.do, line 98)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1b_clean_daily_capm.do, line 134)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1b_clean_daily_capm.do, line 265)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1b_clean_daily_capm.do, line 271)
  → drop if q75_expo_policing==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (1b_clean_daily_capm.do, line 335)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2a_clean_monthly.do, line 108)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2a_clean_monthly.do, line 114)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2a_clean_monthly.do, line 120)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2b_clean_main_portfolios.do, line 71)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2b_clean_main_portfolios.do, line 91)
  → keep if year>=2010

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2b_clean_main_portfolios.do, line 108)
  → drop if sumR==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2b_clean_main_portfolios.do, line 109)
  → drop if sumAR==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2b_clean_main_portfolios.do, line 152)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2b_clean_main_portfolios.do, line 172)
  → keep if year>=2010

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2b_clean_main_portfolios.do, line 189)
  → drop if sumR==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2b_clean_main_portfolios.do, line 190)
  → drop if sumAR==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 56)
  → keep if anystrong==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 86)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 106)
  → keep if year>=2010

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 136)
  → drop if sumR==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 137)
  → drop if sumAR==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 164)
  → keep if anyweak==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 194)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 214)
  → keep if year>=2010

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 244)
  → drop if sumR==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2c_clean_portfolios_placebos.do, line 245)
  → drop if sumAR==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3a_category_rmduplicates.do, line 22)
  → keep if group==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3a_category_rmduplicates.do, line 32)
  → drop if nfreq<2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3a_category_rmduplicates.do, line 80)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3b_clean_daily_categories_fullV4.do, line 50)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3b_clean_daily_categories_fullV4.do, line 53)
  → drop if group==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (4_clean_fundamentals_postGF.do, line 68)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (4_clean_fundamentals_postGF.do, line 74)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (4_clean_fundamentals_postGF.do, line 81)
  → drop if everstrong==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (4_clean_fundamentals_postGF.do, line 91)
  → drop if qofd<`r(max)'

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (4_clean_fundamentals_postGF.do, line 102)
  → keep if ntot==14

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (4bpooled_plotSDIDcategory.do, line 25)
  → drop if b_sdid==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5a_clean_massshooting_smithwesson.do, line 76)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5a_clean_massshooting_smithwesson.do, line 82)
  → drop if q75_expo_policing==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5a_clean_massshooting_smithwesson.do, line 88)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5a_clean_massshooting_smithwesson.do, line 97)
  → keep if anyPDsic==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5a_plotSDIDlong_strong.do, line 10)
  → keep if year<2021

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5a_plotSDIDlong_strong.do, line 61)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5a_plotSDIDlong_strong.do, line 71)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5b_clean_massshooting_virtra.do, line 76)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5b_clean_massshooting_virtra.do, line 82)
  → drop if q75_expo_policing==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5b_clean_massshooting_virtra.do, line 88)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5b_clean_massshooting_virtra.do, line 97)
  → keep if anyPDsic==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5b_plotSDIDlong_weak.do, line 10)
  → keep if year<2021

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5b_plotSDIDlong_weak.do, line 63)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5b_plotSDIDlong_weak.do, line 73)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5c_clean_massshooting_vista.do, line 76)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5c_clean_massshooting_vista.do, line 82)
  → drop if q75_expo_policing==1 & PD==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5c_clean_massshooting_vista.do, line 88)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5c_clean_massshooting_vista.do, line 97)
  → keep if anyPDsic==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (6_clean_ibes.do, line 33)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (6_clean_ibes.do, line 55)
  → keep if usfirm==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (6_clean_ibes.do, line 93)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (6_clean_ibes.do, line 115)
  → keep if usfirm==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Appx_cuttoff_2b_plotSDID.do, line 179)
  → keep if Et==-1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian.do, line 127)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian.do, line 144)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian.do, line 150)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian.do, line 172)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian.do, line 277)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian.do, line 285)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 127)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 148)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 154)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 202)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 331)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 339)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 430)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 435)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 521)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_asian_with_placebo.do, line 526)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black.do, line 126)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black.do, line 143)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black.do, line 149)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black.do, line 171)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black.do, line 276)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black.do, line 284)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 127)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 148)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 154)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 202)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 331)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 339)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 430)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 435)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 521)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_black_with_placebo.do, line 526)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic.do, line 127)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic.do, line 144)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic.do, line 150)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic.do, line 172)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic.do, line 277)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic.do, line 285)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 127)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 148)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 154)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 202)
  → keep if anypostBLM==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 331)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 339)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 430)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 435)
  → drop if nobs!=84

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 521)
  → drop if evermissVar==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (clean_daily_hispanic_with_placebo.do, line 526)
  → drop if nobs!=84

