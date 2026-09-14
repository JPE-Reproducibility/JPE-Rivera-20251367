# Variable Codebook

Generated: 2026-04-30

Total datasets: 247
Total variables: 10293
Variables with descriptions: 10287

Label sources: **stata** = embedded Stata label, **auto** = auto-generated from variable name/pattern

## `cleaned_data/clean_categoryV4.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | Compustat firm identifier (GVKEY) | auto |
| `categoryID` | character | Category identifier | auto |
| `category` | character | Product/service category | auto |

## `cleaned_data/exposure_10K.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `year` | numeric | Calendar year | auto |
| `total_terms` | numeric | Total words | stata |
| `crime_terms` | numeric | (sum) crime_terms | stata |
| `government_terms` | numeric | Exposure to Government | stata |
| `police_terms` | numeric | Exposure to Policing | stata |
| `reform_terms` | numeric | (sum) reform_terms | stata |
| `minyear` | numeric | (last) minyear | stata |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_policing` | numeric | Exposure to policing-related terms in 10-K | auto |
| `expo_crime` | numeric | Exposure to crime-related terms in 10-K | auto |
| `expo_reform` | numeric | Exposure to reform-related terms in 10-K | auto |
| `expo_police` | numeric | Exposure to police-related terms in 10-K | auto |
| `expo_government` | numeric | Exposure to government-related terms in 10-K | auto |
| `lag_expo_crime` | numeric | Lagged crime exposure | auto |
| `lag_expo_reform` | numeric | Lagged reform exposure | auto |
| `lag_expo_police` | numeric | Lagged police exposure | auto |
| `lag_expo_government` | numeric | Lagged government exposure | auto |
| `lag_crime_terms` | numeric | Lagged crime term count | auto |
| `lag_reform_terms` | numeric | Lagged reform term count | auto |
| `lag_police_terms` | numeric | Lagged police term count | auto |
| `lag_government_terms` | numeric | Lagged government term count | auto |
| `PD` | numeric | Police department connection indicator | auto |
| `gvkey` | numeric | GVKEY | stata |
| `conm` | character | Company name | auto |

## `cleaned_data/final_monthly_RAW.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `ret` | numeric | RET | stata |
| `year` | numeric | Calendar year | auto |
| `fyear` | numeric | Fiscal year | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `qofd` | numeric | Quarter of date (Stata quarterly date) | auto |
| `mktvalue` | numeric | Market value of equity | auto |
| `lagmktvalue` | numeric | Lagged market value | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `group_p50` | numeric | Connection group using 50th percentile threshold | auto |

## `cleaned_data/final_monthly.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `date` | numeric | DATE | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `ticker` | character | TICKER | stata |
| `mdy` | Date | daily date from date | stata |
| `year` | numeric | Calendar year | auto |
| `fyear` | numeric | Fiscal year | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `qofd` | numeric | Quarter of date (Stata quarterly date) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `group_p50` | numeric | Connection group using 50th percentile threshold | auto |
| `minyear` | numeric | Minimum year in sample | auto |
| `maxyear` | numeric | Maximum year in sample | auto |
| `cogsq_qtr` | numeric | Quarterly COGS (indexed by fiscal quarter) | auto |
| `cshoq` | numeric | Common shares outstanding (quarterly) | auto |
| `revtq` | numeric | Quarterly total revenue | auto |
| `saleq_qtr` | numeric | Quarterly sales (indexed by fiscal quarter) | auto |
| `capxy_qtr` | numeric | Capital expenditures (quarterly) | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `prccq` | numeric | Price close (quarterly) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `wgr_saleq_qtr` | numeric | gr_saleq, Winsorized fraction .01 | stata |
| `wgr_cogsq_qtr` | numeric | gr_cogsq, Winsorized fraction .01 | stata |
| `wgr_capxy_qtr` | numeric | gr_capxy, Winsorized fraction .01 | stata |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `lag_cshoq` | numeric | Lagged common shares outstanding | auto |
| `lag_prccq` | numeric | Lagged price close (quarterly) | auto |
| `w_I_perK_qtr` | numeric | I_perK, Winsorized fraction .01 | stata |
| `earn_surp_qtr` | numeric | Earnings surprise (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `emp_yr` | numeric | (mean) emp | stata |
| `sale_yr` | numeric | (mean) sale | stata |
| `cogs_yr` | numeric | (mean) cogs | stata |
| `capx_yr` | numeric | (mean) capx | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `incorp` | character | (first) incorp | stata |
| `loc` | character | (first) loc | stata |
| `naics` | numeric | (first) naics | stata |
| `state` | character | (first) state | stata |
| `wgr_emp_yr` | numeric | gr_emp, Winsorized fraction .01 | stata |
| `wgr_sale_yr` | numeric | gr_sale, Winsorized fraction .01 | stata |
| `wgr_cogs_yr` | numeric | gr_cogs, Winsorized fraction .01 | stata |
| `wgr_capx_yr` | numeric | gr_capx, Winsorized fraction .01 | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `total_terms` | numeric | Total words | stata |
| `crime_terms` | numeric | (sum) crime_terms | stata |
| `government_terms` | numeric | Exposure to Government | stata |
| `police_terms` | numeric | Exposure to Policing | stata |
| `reform_terms` | numeric | (sum) reform_terms | stata |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_policing` | numeric | Exposure to policing-related terms in 10-K | auto |
| `expo_crime` | numeric | Exposure to crime-related terms in 10-K | auto |
| `expo_reform` | numeric | Exposure to reform-related terms in 10-K | auto |
| `expo_police` | numeric | Exposure to police-related terms in 10-K | auto |
| `expo_government` | numeric | Exposure to government-related terms in 10-K | auto |
| `lag_expo_crime` | numeric | Lagged crime exposure | auto |
| `lag_expo_reform` | numeric | Lagged reform exposure | auto |
| `lag_expo_police` | numeric | Lagged police exposure | auto |
| `lag_expo_government` | numeric | Lagged government exposure | auto |
| `lag_crime_terms` | numeric | Lagged crime term count | auto |
| `lag_reform_terms` | numeric | Lagged reform term count | auto |
| `lag_police_terms` | numeric | Lagged police term count | auto |
| `lag_government_terms` | numeric | Lagged government term count | auto |
| `PD` | numeric | Police department connection indicator | auto |

## `cleaned_data/full_portfolio.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `ret` | numeric | (mean) ret | stata |
| `nfirm_type3` | numeric | (sum) rec | stata |
| `wgtret` | numeric | (sum) wgtret | stata |
| `year` | numeric | (last) year | stata |
| `portofolio` | numeric |  |  |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `mktrf` | numeric | Market excess return (MKT-RF) | auto |
| `smb` | numeric | Small-minus-big factor return (SMB) | auto |
| `hml` | numeric | High-minus-low factor return (HML) | auto |
| `rf` | numeric | Risk-free rate | auto |
| `umd` | numeric | Up-minus-down momentum factor return (UMD) | auto |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `wexret` | numeric | Value-weighted excess return | auto |
| `netret` | numeric | Net return | auto |
| `wnetret` | numeric | Value-weighted net return | auto |
| `n` | numeric | Number of observations | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumwAR` | numeric | Sum of value-weighted abnormal returns | auto |
| `Et` | numeric | Event time indicator | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `estimation` | numeric | Estimation method identifier | auto |
| `nfirm_type2` | numeric | (sum) rec | stata |

## `cleaned_data/fundamentals_PostSummer2020.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | GVKEY | stata |
| `permno` | numeric | LPERMNO | stata |
| `fyearq` | numeric | Fiscal year-quarter | auto |
| `fqtr` | numeric | Fiscal quarter | auto |
| `conm` | character | Company name | auto |
| `cogsq` | numeric | Quarterly cost of goods sold | auto |
| `epspiq` | numeric | Earnings per share (quarterly) | auto |
| `ppentq` | numeric | Property plant and equipment net (quarterly) | auto |
| `revtq` | numeric | Quarterly total revenue | auto |
| `saleq` | numeric | Quarterly sales revenue | auto |
| `capxy` | numeric | Capital expenditures (annual) | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `prccq` | numeric | Price close (quarterly) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `qofd` | numeric | quarterly date from datafqtr | stata |
| `ppi` | numeric | (mean) ppi | stata |
| `ratio_ppi` | numeric | Producer Price Index deflator ratio | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `strong` | numeric | Strongly connected to police (indicator) | auto |
| `everstrong` | numeric | Ever strongly connected indicator | auto |
| `mindate` | numeric | Minimum date in sample | auto |
| `lag_saleq` | numeric | Lagged quarterly sales | auto |
| `lag_cogsq` | numeric | Lagged quarterly COGS | auto |
| `rec` | numeric | Record indicator | auto |
| `ntot` | numeric | Total number of agencies | auto |
| `fobs` | numeric | tag(gvkey) | stata |
| `fsale` | numeric | Deflated sales (PPI-adjusted) | auto |
| `fcogs` | numeric | Deflated cost of goods sold (PPI-adjusted) | auto |
| `gsale` | numeric | Growth in sales (cumulative change) | auto |
| `gcogs` | numeric | Growth in cost of goods sold (cumulative change) | auto |
| `Et` | numeric | Event time indicator | auto |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `panel` | numeric | Panel identifier | auto |
| `idnum` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |

## `cleaned_data/fundamentals_quarterly.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | GVKEY | stata |
| `permno` | numeric | LPERMNO | stata |
| `cogsq_qtr` | numeric | Quarterly COGS (indexed by fiscal quarter) | auto |
| `cshoq` | numeric | Common shares outstanding (quarterly) | auto |
| `revtq` | numeric | Quarterly total revenue | auto |
| `saleq_qtr` | numeric | Quarterly sales (indexed by fiscal quarter) | auto |
| `capxy_qtr` | numeric | Capital expenditures (quarterly) | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `prccq` | numeric | Price close (quarterly) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `qofd` | numeric | quarterly date from datafqtr | stata |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `wgr_saleq_qtr` | numeric | gr_saleq, Winsorized fraction .01 | stata |
| `wgr_cogsq_qtr` | numeric | gr_cogsq, Winsorized fraction .01 | stata |
| `wgr_capxy_qtr` | numeric | gr_capxy, Winsorized fraction .01 | stata |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `lag_cshoq` | numeric | Lagged common shares outstanding | auto |
| `lag_prccq` | numeric | Lagged price close (quarterly) | auto |
| `w_I_perK_qtr` | numeric | I_perK, Winsorized fraction .01 | stata |
| `earn_surp_qtr` | numeric | Earnings surprise (quarterly) | auto |

## `cleaned_data/fundamentals_yearly.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | GVKEY | stata |
| `permno` | numeric | LPERMNO | stata |
| `fyear` | numeric | Fiscal year | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `emp_yr` | numeric | (mean) emp | stata |
| `sale_yr` | numeric | (mean) sale | stata |
| `cogs_yr` | numeric | (mean) cogs | stata |
| `capx_yr` | numeric | (mean) capx | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `incorp` | character | (first) incorp | stata |
| `loc` | character | (first) loc | stata |
| `naics` | numeric | (first) naics | stata |
| `state` | character | (first) state | stata |
| `wgr_emp_yr` | numeric | gr_emp, Winsorized fraction .01 | stata |
| `wgr_sale_yr` | numeric | gr_sale, Winsorized fraction .01 | stata |
| `wgr_cogs_yr` | numeric | gr_cogs, Winsorized fraction .01 | stata |
| `wgr_capx_yr` | numeric | gr_capx, Winsorized fraction .01 | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |

## `cleaned_data/gvt_client.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | gvkey | stata |
| `conm` | character | conm | stata |
| `group` | numeric | group | stata |
| `anygvt_client` | numeric | (max) gvt_client | stata |
| `anypolice_client` | numeric | (max) police_client | stata |
| `sharegvt_client` | numeric | Share Government Clients | stata |
| `sharepolice_client` | numeric | (mean) police_client | stata |
| `high_gvt` | numeric | Share of Government Client>0.5 | stata |

## `cleaned_data/ibes_rec_consensus_strong.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ticker` | character | TICKER | stata |
| `cusip8` | character | CUSIP | stata |
| `oftic` | character | OFTIC | stata |
| `cname` | character | CNAME | stata |
| `statpers` | character | STATPERS | stata |
| `meanrec` | numeric | MEANREC | stata |
| `medrec` | numeric | MEDREC | stata |
| `stdev` | numeric | STDEV | stata |
| `numrec` | numeric | NUMREC | stata |
| `numup` | numeric | NUMUP | stata |
| `numdown` | numeric | NUMDOWN | stata |
| `buypct` | numeric | BUYPCT | stata |
| `sellpct` | numeric | SELLPCT | stata |
| `holdpct` | numeric | HOLDPCT | stata |
| `usfirm` | numeric | USFIRM | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `state` | character | (first) state | stata |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `strong` | numeric | Strongly connected to police (indicator) | auto |
| `year` | numeric | Calendar year | auto |
| `month` | numeric | Calendar month | auto |
| `day` | numeric | Calendar day | auto |
| `mdy` | Date | Month-day-year date | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `wofd` | numeric | Week of date (Stata weekly date) | auto |
| `t` | numeric | Time index | auto |
| `tm` | numeric | Trading month | auto |
| `tw` | numeric | Trading week | auto |

## `cleaned_data/ibes_rec_consensus_weak.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ticker` | character | TICKER | stata |
| `cusip8` | character | CUSIP | stata |
| `oftic` | character | OFTIC | stata |
| `cname` | character | CNAME | stata |
| `statpers` | character | STATPERS | stata |
| `meanrec` | numeric | MEANREC | stata |
| `medrec` | numeric | MEDREC | stata |
| `stdev` | numeric | STDEV | stata |
| `numrec` | numeric | NUMREC | stata |
| `numup` | numeric | NUMUP | stata |
| `numdown` | numeric | NUMDOWN | stata |
| `buypct` | numeric | BUYPCT | stata |
| `sellpct` | numeric | SELLPCT | stata |
| `holdpct` | numeric | HOLDPCT | stata |
| `usfirm` | numeric | USFIRM | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `state` | character | (first) state | stata |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `weak` | numeric | Weakly connected to police (indicator) | auto |
| `year` | numeric | Calendar year | auto |
| `month` | numeric | Calendar month | auto |
| `day` | numeric | Calendar day | auto |
| `mdy` | Date | Month-day-year date | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `wofd` | numeric | Week of date (Stata weekly date) | auto |
| `t` | numeric | Time index | auto |
| `tm` | numeric | Trading month | auto |
| `tw` | numeric | Trading week | auto |

## `cleaned_data/intermediate_daily_AsianCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `date` | numeric | DATE | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `ticker` | character | TICKER | stata |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `year` | numeric | Calendar year | auto |
| `fyear` | numeric | Fiscal year | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `qofd` | numeric | Quarter of date (Stata quarterly date) | auto |
| `minyear` | numeric | Minimum year in sample | auto |
| `maxyear` | numeric | Maximum year in sample | auto |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `asian_ceo` | numeric | Asian CEO indicator | auto |
| `anyasian_ceo` | numeric | Any Asian CEO indicator | auto |
| `Asianstocks` | numeric | Asian CEO stock indicator | auto |
| `cogsq_qtr` | numeric | Quarterly COGS (indexed by fiscal quarter) | auto |
| `cshoq` | numeric | Common shares outstanding (quarterly) | auto |
| `revtq` | numeric | Quarterly total revenue | auto |
| `saleq_qtr` | numeric | Quarterly sales (indexed by fiscal quarter) | auto |
| `capxy_qtr` | numeric | Capital expenditures (quarterly) | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `prccq` | numeric | Price close (quarterly) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `wgr_saleq_qtr` | numeric | gr_saleq, Winsorized fraction .01 | stata |
| `wgr_cogsq_qtr` | numeric | gr_cogsq, Winsorized fraction .01 | stata |
| `wgr_capxy_qtr` | numeric | gr_capxy, Winsorized fraction .01 | stata |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `lag_cshoq` | numeric | Lagged common shares outstanding | auto |
| `lag_prccq` | numeric | Lagged price close (quarterly) | auto |
| `w_I_perK_qtr` | numeric | I_perK, Winsorized fraction .01 | stata |
| `earn_surp_qtr` | numeric | Earnings surprise (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `emp_yr` | numeric | (mean) emp | stata |
| `sale_yr` | numeric | (mean) sale | stata |
| `cogs_yr` | numeric | (mean) cogs | stata |
| `capx_yr` | numeric | (mean) capx | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `wgr_emp_yr` | numeric | gr_emp, Winsorized fraction .01 | stata |
| `wgr_sale_yr` | numeric | gr_sale, Winsorized fraction .01 | stata |
| `wgr_cogs_yr` | numeric | gr_cogs, Winsorized fraction .01 | stata |
| `wgr_capx_yr` | numeric | gr_capx, Winsorized fraction .01 | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `event2` | numeric | Event 2 window indicator | auto |
| `event3` | numeric | Event 3 window indicator | auto |
| `event4` | numeric | Event 4 window indicator | auto |
| `event5` | numeric | Event 5 window indicator | auto |
| `event6` | numeric | Event 6 window indicator | auto |
| `placebo1` | numeric | Placebo event 1 date | auto |
| `placebo2` | numeric | Placebo event 2 date | auto |
| `placebo3` | numeric | Placebo event 3 date | auto |
| `placebo4` | numeric | Placebo event 4 date | auto |
| `placebo5` | numeric | Placebo event 5 date | auto |
| `placebo6` | numeric | Placebo event 6 date | auto |
| `placebo7` | numeric | Placebo event 7 date | auto |
| `placebo8` | numeric | Placebo event 8 date | auto |
| `placebo9` | numeric | Placebo event 9 date | auto |
| `placebo10` | numeric | Placebo event 10 date | auto |
| `placebo11` | numeric | Placebo event 11 date | auto |
| `adl_placebo1` | numeric | ADL placebo event 1 date | auto |
| `adl_placebo2` | numeric | ADL placebo event 2 date | auto |
| `adl_placebo3` | numeric | ADL placebo event 3 date | auto |
| `adl_placebo4` | numeric | ADL placebo event 4 date | auto |
| `adl_placebo5` | numeric | ADL placebo event 5 date | auto |
| `adl_placebo6` | numeric | ADL placebo event 6 date | auto |
| `adl_placebo7` | numeric | ADL placebo event 7 date | auto |
| `adl_placebo8` | numeric | ADL placebo event 8 date | auto |
| `postBLM` | numeric | Post-BLM event indicator | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `day` | numeric | group(mdy) | stata |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `t1` | numeric | Event date 1 (Michael Brown) | auto |
| `t2` | numeric | Event date 2 (Tamir Rice) | auto |
| `t3` | numeric | Event date 3 (Freddie Gray) | auto |
| `t4` | numeric | Event date 4 (Alton Sterling) | auto |
| `t5` | numeric | Event date 5 (Stephon Clark) | auto |
| `t6` | numeric | Event date 6 (George Floyd) | auto |
| `Pt1` | numeric | Placebo event 1 indicator | auto |
| `Pt2` | numeric | Placebo event 2 indicator | auto |
| `Pt3` | numeric | Placebo event 3 indicator | auto |
| `Pt4` | numeric | Placebo event 4 indicator | auto |
| `Pt5` | numeric | Placebo event 5 indicator | auto |
| `Pt6` | numeric | Placebo event 6 indicator | auto |
| `Pt7` | numeric | Placebo event 7 indicator | auto |
| `Pt8` | numeric | Placebo event 8 indicator | auto |
| `Pt9` | numeric | Placebo event 9 indicator | auto |
| `Pt10` | numeric | Placebo event 10 indicator | auto |
| `Pt11` | numeric | Placebo event 11 indicator | auto |
| `APt1` | numeric | ADL placebo event 1 indicator | auto |
| `APt2` | numeric | ADL placebo event 2 indicator | auto |
| `APt3` | numeric | ADL placebo event 3 indicator | auto |
| `APt4` | numeric | ADL placebo event 4 indicator | auto |
| `APt5` | numeric | ADL placebo event 5 indicator | auto |
| `APt6` | numeric | ADL placebo event 6 indicator | auto |
| `APt7` | numeric | ADL placebo event 7 indicator | auto |
| `APt8` | numeric | ADL placebo event 8 indicator | auto |
| `AR` | numeric | Abnormal return | auto |
| `CAR_event0` | numeric | Cumulative abnormal return for event 0 | auto |
| `sumR_event0` | numeric | Sum of raw returns for event 0 | auto |
| `sumAR_event0` | numeric | Sum of abnormal returns for event 0 | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `CAR_event1` | numeric | Cumulative abnormal return for event 1 | auto |
| `sumR_event1` | numeric | Sum of raw returns for event 1 | auto |
| `sumAR_event1` | numeric | Sum of abnormal returns for event 1 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `CAR_event2` | numeric | Cumulative abnormal return for event 2 | auto |
| `sumR_event2` | numeric | Sum of raw returns for event 2 | auto |
| `sumAR_event2` | numeric | Sum of abnormal returns for event 2 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `CAR_event3` | numeric | Cumulative abnormal return for event 3 | auto |
| `sumR_event3` | numeric | Sum of raw returns for event 3 | auto |
| `sumAR_event3` | numeric | Sum of abnormal returns for event 3 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `CAR_event4` | numeric | Cumulative abnormal return for event 4 | auto |
| `sumR_event4` | numeric | Sum of raw returns for event 4 | auto |
| `sumAR_event4` | numeric | Sum of abnormal returns for event 4 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `CAR_event5` | numeric | Cumulative abnormal return for event 5 | auto |
| `sumR_event5` | numeric | Sum of raw returns for event 5 | auto |
| `sumAR_event5` | numeric | Sum of abnormal returns for event 5 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `CAR_event6` | numeric | Cumulative abnormal return for event 6 | auto |
| `sumR_event6` | numeric | Sum of raw returns for event 6 | auto |
| `sumAR_event6` | numeric | Sum of abnormal returns for event 6 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `PsumAR_event1` | numeric | Placebo sum of abnormal returns for event 1 | auto |
| `PsumAR_event2` | numeric | Placebo sum of abnormal returns for event 2 | auto |
| `PsumAR_event3` | numeric | Placebo sum of abnormal returns for event 3 | auto |
| `PsumAR_event4` | numeric | Placebo sum of abnormal returns for event 4 | auto |
| `PsumAR_event5` | numeric | Placebo sum of abnormal returns for event 5 | auto |
| `PsumAR_event6` | numeric | Placebo sum of abnormal returns for event 6 | auto |
| `PsumAR_event7` | numeric | Placebo sum of abnormal returns for event 7 | auto |
| `PsumAR_event8` | numeric | Placebo sum of abnormal returns for event 8 | auto |
| `PsumAR_event9` | numeric | Placebo sum of abnormal returns for event 9 | auto |
| `PsumAR_event10` | numeric | Placebo sum of abnormal returns for event 10 | auto |
| `PsumAR_event11` | numeric | Placebo sum of abnormal returns for event 11 | auto |
| `APsumAR_event1` | numeric | ADL placebo sum of abnormal returns for event 1 | auto |
| `APsumAR_event2` | numeric | ADL placebo sum of abnormal returns for event 2 | auto |
| `APsumAR_event3` | numeric | ADL placebo sum of abnormal returns for event 3 | auto |
| `APsumAR_event4` | numeric | ADL placebo sum of abnormal returns for event 4 | auto |
| `APsumAR_event5` | numeric | ADL placebo sum of abnormal returns for event 5 | auto |
| `APsumAR_event6` | numeric | ADL placebo sum of abnormal returns for event 6 | auto |
| `APsumAR_event7` | numeric | ADL placebo sum of abnormal returns for event 7 | auto |
| `APsumAR_event8` | numeric | ADL placebo sum of abnormal returns for event 8 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |

## `cleaned_data/intermediate_daily_BlackCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `date` | numeric | DATE | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `ticker` | character | TICKER | stata |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `year` | numeric | Calendar year | auto |
| `fyear` | numeric | Fiscal year | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `qofd` | numeric | Quarter of date (Stata quarterly date) | auto |
| `minyear` | numeric | Minimum year in sample | auto |
| `maxyear` | numeric | Maximum year in sample | auto |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `black_ceo` | numeric | Black CEO indicator | auto |
| `anyblack_ceo` | numeric | Any Black CEO indicator | auto |
| `Blackstocks` | numeric | Black CEO stock indicator | auto |
| `cogsq_qtr` | numeric | Quarterly COGS (indexed by fiscal quarter) | auto |
| `cshoq` | numeric | Common shares outstanding (quarterly) | auto |
| `revtq` | numeric | Quarterly total revenue | auto |
| `saleq_qtr` | numeric | Quarterly sales (indexed by fiscal quarter) | auto |
| `capxy_qtr` | numeric | Capital expenditures (quarterly) | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `prccq` | numeric | Price close (quarterly) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `wgr_saleq_qtr` | numeric | gr_saleq, Winsorized fraction .01 | stata |
| `wgr_cogsq_qtr` | numeric | gr_cogsq, Winsorized fraction .01 | stata |
| `wgr_capxy_qtr` | numeric | gr_capxy, Winsorized fraction .01 | stata |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `lag_cshoq` | numeric | Lagged common shares outstanding | auto |
| `lag_prccq` | numeric | Lagged price close (quarterly) | auto |
| `w_I_perK_qtr` | numeric | I_perK, Winsorized fraction .01 | stata |
| `earn_surp_qtr` | numeric | Earnings surprise (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `emp_yr` | numeric | (mean) emp | stata |
| `sale_yr` | numeric | (mean) sale | stata |
| `cogs_yr` | numeric | (mean) cogs | stata |
| `capx_yr` | numeric | (mean) capx | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `wgr_emp_yr` | numeric | gr_emp, Winsorized fraction .01 | stata |
| `wgr_sale_yr` | numeric | gr_sale, Winsorized fraction .01 | stata |
| `wgr_cogs_yr` | numeric | gr_cogs, Winsorized fraction .01 | stata |
| `wgr_capx_yr` | numeric | gr_capx, Winsorized fraction .01 | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `event2` | numeric | Event 2 window indicator | auto |
| `event3` | numeric | Event 3 window indicator | auto |
| `event4` | numeric | Event 4 window indicator | auto |
| `event5` | numeric | Event 5 window indicator | auto |
| `event6` | numeric | Event 6 window indicator | auto |
| `placebo1` | numeric | Placebo event 1 date | auto |
| `placebo2` | numeric | Placebo event 2 date | auto |
| `placebo3` | numeric | Placebo event 3 date | auto |
| `placebo4` | numeric | Placebo event 4 date | auto |
| `placebo5` | numeric | Placebo event 5 date | auto |
| `placebo6` | numeric | Placebo event 6 date | auto |
| `placebo7` | numeric | Placebo event 7 date | auto |
| `placebo8` | numeric | Placebo event 8 date | auto |
| `placebo9` | numeric | Placebo event 9 date | auto |
| `placebo10` | numeric | Placebo event 10 date | auto |
| `placebo11` | numeric | Placebo event 11 date | auto |
| `adl_placebo1` | numeric | ADL placebo event 1 date | auto |
| `adl_placebo2` | numeric | ADL placebo event 2 date | auto |
| `adl_placebo3` | numeric | ADL placebo event 3 date | auto |
| `adl_placebo4` | numeric | ADL placebo event 4 date | auto |
| `adl_placebo5` | numeric | ADL placebo event 5 date | auto |
| `adl_placebo6` | numeric | ADL placebo event 6 date | auto |
| `adl_placebo7` | numeric | ADL placebo event 7 date | auto |
| `adl_placebo8` | numeric | ADL placebo event 8 date | auto |
| `postBLM` | numeric | Post-BLM event indicator | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `day` | numeric | group(mdy) | stata |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `t1` | numeric | Event date 1 (Michael Brown) | auto |
| `t2` | numeric | Event date 2 (Tamir Rice) | auto |
| `t3` | numeric | Event date 3 (Freddie Gray) | auto |
| `t4` | numeric | Event date 4 (Alton Sterling) | auto |
| `t5` | numeric | Event date 5 (Stephon Clark) | auto |
| `t6` | numeric | Event date 6 (George Floyd) | auto |
| `Pt1` | numeric | Placebo event 1 indicator | auto |
| `Pt2` | numeric | Placebo event 2 indicator | auto |
| `Pt3` | numeric | Placebo event 3 indicator | auto |
| `Pt4` | numeric | Placebo event 4 indicator | auto |
| `Pt5` | numeric | Placebo event 5 indicator | auto |
| `Pt6` | numeric | Placebo event 6 indicator | auto |
| `Pt7` | numeric | Placebo event 7 indicator | auto |
| `Pt8` | numeric | Placebo event 8 indicator | auto |
| `Pt9` | numeric | Placebo event 9 indicator | auto |
| `Pt10` | numeric | Placebo event 10 indicator | auto |
| `Pt11` | numeric | Placebo event 11 indicator | auto |
| `APt1` | numeric | ADL placebo event 1 indicator | auto |
| `APt2` | numeric | ADL placebo event 2 indicator | auto |
| `APt3` | numeric | ADL placebo event 3 indicator | auto |
| `APt4` | numeric | ADL placebo event 4 indicator | auto |
| `APt5` | numeric | ADL placebo event 5 indicator | auto |
| `APt6` | numeric | ADL placebo event 6 indicator | auto |
| `APt7` | numeric | ADL placebo event 7 indicator | auto |
| `APt8` | numeric | ADL placebo event 8 indicator | auto |
| `AR` | numeric | Abnormal return | auto |
| `CAR_event0` | numeric | Cumulative abnormal return for event 0 | auto |
| `sumR_event0` | numeric | Sum of raw returns for event 0 | auto |
| `sumAR_event0` | numeric | Sum of abnormal returns for event 0 | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `CAR_event1` | numeric | Cumulative abnormal return for event 1 | auto |
| `sumR_event1` | numeric | Sum of raw returns for event 1 | auto |
| `sumAR_event1` | numeric | Sum of abnormal returns for event 1 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `CAR_event2` | numeric | Cumulative abnormal return for event 2 | auto |
| `sumR_event2` | numeric | Sum of raw returns for event 2 | auto |
| `sumAR_event2` | numeric | Sum of abnormal returns for event 2 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `CAR_event3` | numeric | Cumulative abnormal return for event 3 | auto |
| `sumR_event3` | numeric | Sum of raw returns for event 3 | auto |
| `sumAR_event3` | numeric | Sum of abnormal returns for event 3 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `CAR_event4` | numeric | Cumulative abnormal return for event 4 | auto |
| `sumR_event4` | numeric | Sum of raw returns for event 4 | auto |
| `sumAR_event4` | numeric | Sum of abnormal returns for event 4 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `CAR_event5` | numeric | Cumulative abnormal return for event 5 | auto |
| `sumR_event5` | numeric | Sum of raw returns for event 5 | auto |
| `sumAR_event5` | numeric | Sum of abnormal returns for event 5 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `CAR_event6` | numeric | Cumulative abnormal return for event 6 | auto |
| `sumR_event6` | numeric | Sum of raw returns for event 6 | auto |
| `sumAR_event6` | numeric | Sum of abnormal returns for event 6 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `PsumAR_event1` | numeric | Placebo sum of abnormal returns for event 1 | auto |
| `PsumAR_event2` | numeric | Placebo sum of abnormal returns for event 2 | auto |
| `PsumAR_event3` | numeric | Placebo sum of abnormal returns for event 3 | auto |
| `PsumAR_event4` | numeric | Placebo sum of abnormal returns for event 4 | auto |
| `PsumAR_event5` | numeric | Placebo sum of abnormal returns for event 5 | auto |
| `PsumAR_event6` | numeric | Placebo sum of abnormal returns for event 6 | auto |
| `PsumAR_event7` | numeric | Placebo sum of abnormal returns for event 7 | auto |
| `PsumAR_event8` | numeric | Placebo sum of abnormal returns for event 8 | auto |
| `PsumAR_event9` | numeric | Placebo sum of abnormal returns for event 9 | auto |
| `PsumAR_event10` | numeric | Placebo sum of abnormal returns for event 10 | auto |
| `PsumAR_event11` | numeric | Placebo sum of abnormal returns for event 11 | auto |
| `APsumAR_event1` | numeric | ADL placebo sum of abnormal returns for event 1 | auto |
| `APsumAR_event2` | numeric | ADL placebo sum of abnormal returns for event 2 | auto |
| `APsumAR_event3` | numeric | ADL placebo sum of abnormal returns for event 3 | auto |
| `APsumAR_event4` | numeric | ADL placebo sum of abnormal returns for event 4 | auto |
| `APsumAR_event5` | numeric | ADL placebo sum of abnormal returns for event 5 | auto |
| `APsumAR_event6` | numeric | ADL placebo sum of abnormal returns for event 6 | auto |
| `APsumAR_event7` | numeric | ADL placebo sum of abnormal returns for event 7 | auto |
| `APsumAR_event8` | numeric | ADL placebo sum of abnormal returns for event 8 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |

## `cleaned_data/intermediate_daily_capm.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `date` | numeric | DATE | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `ticker` | character | TICKER | stata |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `year` | numeric | Calendar year | auto |
| `fyear` | numeric | Fiscal year | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `qofd` | numeric | Quarter of date (Stata quarterly date) | auto |
| `minyear` | numeric | Minimum year in sample | auto |
| `maxyear` | numeric | Maximum year in sample | auto |
| `PD` | numeric | Police department connection indicator | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `cogsq_qtr` | numeric | Quarterly COGS (indexed by fiscal quarter) | auto |
| `cshoq` | numeric | Common shares outstanding (quarterly) | auto |
| `revtq` | numeric | Quarterly total revenue | auto |
| `saleq_qtr` | numeric | Quarterly sales (indexed by fiscal quarter) | auto |
| `capxy_qtr` | numeric | Capital expenditures (quarterly) | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `prccq` | numeric | Price close (quarterly) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `wgr_saleq_qtr` | numeric | gr_saleq, Winsorized fraction .01 | stata |
| `wgr_cogsq_qtr` | numeric | gr_cogsq, Winsorized fraction .01 | stata |
| `wgr_capxy_qtr` | numeric | gr_capxy, Winsorized fraction .01 | stata |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `lag_cshoq` | numeric | Lagged common shares outstanding | auto |
| `lag_prccq` | numeric | Lagged price close (quarterly) | auto |
| `w_I_perK_qtr` | numeric | I_perK, Winsorized fraction .01 | stata |
| `earn_surp_qtr` | numeric | Earnings surprise (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `emp_yr` | numeric | (mean) emp | stata |
| `sale_yr` | numeric | (mean) sale | stata |
| `cogs_yr` | numeric | (mean) cogs | stata |
| `capx_yr` | numeric | (mean) capx | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `incorp` | character | (first) incorp | stata |
| `loc` | character | (first) loc | stata |
| `naics` | numeric | (first) naics | stata |
| `state` | character | (first) state | stata |
| `wgr_emp_yr` | numeric | gr_emp, Winsorized fraction .01 | stata |
| `wgr_sale_yr` | numeric | gr_sale, Winsorized fraction .01 | stata |
| `wgr_cogs_yr` | numeric | gr_cogs, Winsorized fraction .01 | stata |
| `wgr_capx_yr` | numeric | gr_capx, Winsorized fraction .01 | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `total_terms` | numeric | Total words | stata |
| `crime_terms` | numeric | (sum) crime_terms | stata |
| `government_terms` | numeric | Exposure to Government | stata |
| `police_terms` | numeric | Exposure to Policing | stata |
| `reform_terms` | numeric | (sum) reform_terms | stata |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_policing` | numeric | Exposure to policing-related terms in 10-K | auto |
| `expo_crime` | numeric | Exposure to crime-related terms in 10-K | auto |
| `expo_reform` | numeric | Exposure to reform-related terms in 10-K | auto |
| `expo_police` | numeric | Exposure to police-related terms in 10-K | auto |
| `expo_government` | numeric | Exposure to government-related terms in 10-K | auto |
| `lag_expo_crime` | numeric | Lagged crime exposure | auto |
| `lag_expo_reform` | numeric | Lagged reform exposure | auto |
| `lag_expo_police` | numeric | Lagged police exposure | auto |
| `lag_expo_government` | numeric | Lagged government exposure | auto |
| `lag_crime_terms` | numeric | Lagged crime term count | auto |
| `lag_reform_terms` | numeric | Lagged reform term count | auto |
| `lag_police_terms` | numeric | Lagged police term count | auto |
| `lag_government_terms` | numeric | Lagged government term count | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `event2` | numeric | Event 2 window indicator | auto |
| `event3` | numeric | Event 3 window indicator | auto |
| `event4` | numeric | Event 4 window indicator | auto |
| `event5` | numeric | Event 5 window indicator | auto |
| `event6` | numeric | Event 6 window indicator | auto |
| `placebo1` | numeric | Placebo event 1 date | auto |
| `placebo2` | numeric | Placebo event 2 date | auto |
| `placebo3` | numeric | Placebo event 3 date | auto |
| `placebo4` | numeric | Placebo event 4 date | auto |
| `placebo5` | numeric | Placebo event 5 date | auto |
| `placebo6` | numeric | Placebo event 6 date | auto |
| `placebo7` | numeric | Placebo event 7 date | auto |
| `placebo8` | numeric | Placebo event 8 date | auto |
| `placebo9` | numeric | Placebo event 9 date | auto |
| `placebo10` | numeric | Placebo event 10 date | auto |
| `placebo11` | numeric | Placebo event 11 date | auto |
| `postBLM` | numeric | Post-BLM event indicator | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `avgexpo_policing` | numeric | Average exposure to policing terms | auto |
| `day` | numeric | group(mdy) | stata |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `t1` | numeric | Event date 1 (Michael Brown) | auto |
| `t2` | numeric | Event date 2 (Tamir Rice) | auto |
| `t3` | numeric | Event date 3 (Freddie Gray) | auto |
| `t4` | numeric | Event date 4 (Alton Sterling) | auto |
| `t5` | numeric | Event date 5 (Stephon Clark) | auto |
| `t6` | numeric | Event date 6 (George Floyd) | auto |
| `Pt1` | numeric | Placebo event 1 indicator | auto |
| `Pt2` | numeric | Placebo event 2 indicator | auto |
| `Pt3` | numeric | Placebo event 3 indicator | auto |
| `Pt4` | numeric | Placebo event 4 indicator | auto |
| `Pt5` | numeric | Placebo event 5 indicator | auto |
| `Pt6` | numeric | Placebo event 6 indicator | auto |
| `Pt7` | numeric | Placebo event 7 indicator | auto |
| `Pt8` | numeric | Placebo event 8 indicator | auto |
| `Pt9` | numeric | Placebo event 9 indicator | auto |
| `Pt10` | numeric | Placebo event 10 indicator | auto |
| `Pt11` | numeric | Placebo event 11 indicator | auto |
| `AR` | numeric | Abnormal return | auto |
| `CAR_event0` | numeric | Cumulative abnormal return for event 0 | auto |
| `sumAR_event0` | numeric | Sum of abnormal returns for event 0 | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `CAR_event1` | numeric | Cumulative abnormal return for event 1 | auto |
| `sumAR_event1` | numeric | Sum of abnormal returns for event 1 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `CAR_event2` | numeric | Cumulative abnormal return for event 2 | auto |
| `sumAR_event2` | numeric | Sum of abnormal returns for event 2 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `CAR_event3` | numeric | Cumulative abnormal return for event 3 | auto |
| `sumAR_event3` | numeric | Sum of abnormal returns for event 3 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `CAR_event4` | numeric | Cumulative abnormal return for event 4 | auto |
| `sumAR_event4` | numeric | Sum of abnormal returns for event 4 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `CAR_event5` | numeric | Cumulative abnormal return for event 5 | auto |
| `sumAR_event5` | numeric | Sum of abnormal returns for event 5 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `CAR_event6` | numeric | Cumulative abnormal return for event 6 | auto |
| `sumAR_event6` | numeric | Sum of abnormal returns for event 6 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `PsumAR_event1` | numeric | Placebo sum of abnormal returns for event 1 | auto |
| `PsumAR_event2` | numeric | Placebo sum of abnormal returns for event 2 | auto |
| `PsumAR_event3` | numeric | Placebo sum of abnormal returns for event 3 | auto |
| `PsumAR_event4` | numeric | Placebo sum of abnormal returns for event 4 | auto |
| `PsumAR_event5` | numeric | Placebo sum of abnormal returns for event 5 | auto |
| `PsumAR_event6` | numeric | Placebo sum of abnormal returns for event 6 | auto |
| `PsumAR_event7` | numeric | Placebo sum of abnormal returns for event 7 | auto |
| `PsumAR_event8` | numeric | Placebo sum of abnormal returns for event 8 | auto |
| `PsumAR_event9` | numeric | Placebo sum of abnormal returns for event 9 | auto |
| `PsumAR_event10` | numeric | Placebo sum of abnormal returns for event 10 | auto |
| `PsumAR_event11` | numeric | Placebo sum of abnormal returns for event 11 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `fgvkey` | numeric | tag(gvkey) | stata |
| `q75_expo_policing` | numeric | 75th percentile of policing exposure | auto |

## `cleaned_data/intermediate_daily_HispanicCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `date` | numeric | DATE | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `ticker` | character | TICKER | stata |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `year` | numeric | Calendar year | auto |
| `fyear` | numeric | Fiscal year | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `qofd` | numeric | Quarter of date (Stata quarterly date) | auto |
| `minyear` | numeric | Minimum year in sample | auto |
| `maxyear` | numeric | Maximum year in sample | auto |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `hispanic_ceo` | numeric | Hispanic CEO indicator | auto |
| `anyhispanic_ceo` | numeric | Any Hispanic CEO indicator | auto |
| `Hispanicstocks` | numeric | Hispanic CEO stock indicator | auto |
| `cogsq_qtr` | numeric | Quarterly COGS (indexed by fiscal quarter) | auto |
| `cshoq` | numeric | Common shares outstanding (quarterly) | auto |
| `revtq` | numeric | Quarterly total revenue | auto |
| `saleq_qtr` | numeric | Quarterly sales (indexed by fiscal quarter) | auto |
| `capxy_qtr` | numeric | Capital expenditures (quarterly) | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `prccq` | numeric | Price close (quarterly) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `wgr_saleq_qtr` | numeric | gr_saleq, Winsorized fraction .01 | stata |
| `wgr_cogsq_qtr` | numeric | gr_cogsq, Winsorized fraction .01 | stata |
| `wgr_capxy_qtr` | numeric | gr_capxy, Winsorized fraction .01 | stata |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `lag_cshoq` | numeric | Lagged common shares outstanding | auto |
| `lag_prccq` | numeric | Lagged price close (quarterly) | auto |
| `w_I_perK_qtr` | numeric | I_perK, Winsorized fraction .01 | stata |
| `earn_surp_qtr` | numeric | Earnings surprise (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `emp_yr` | numeric | (mean) emp | stata |
| `sale_yr` | numeric | (mean) sale | stata |
| `cogs_yr` | numeric | (mean) cogs | stata |
| `capx_yr` | numeric | (mean) capx | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `wgr_emp_yr` | numeric | gr_emp, Winsorized fraction .01 | stata |
| `wgr_sale_yr` | numeric | gr_sale, Winsorized fraction .01 | stata |
| `wgr_cogs_yr` | numeric | gr_cogs, Winsorized fraction .01 | stata |
| `wgr_capx_yr` | numeric | gr_capx, Winsorized fraction .01 | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `event2` | numeric | Event 2 window indicator | auto |
| `event3` | numeric | Event 3 window indicator | auto |
| `event4` | numeric | Event 4 window indicator | auto |
| `event5` | numeric | Event 5 window indicator | auto |
| `event6` | numeric | Event 6 window indicator | auto |
| `placebo1` | numeric | Placebo event 1 date | auto |
| `placebo2` | numeric | Placebo event 2 date | auto |
| `placebo3` | numeric | Placebo event 3 date | auto |
| `placebo4` | numeric | Placebo event 4 date | auto |
| `placebo5` | numeric | Placebo event 5 date | auto |
| `placebo6` | numeric | Placebo event 6 date | auto |
| `placebo7` | numeric | Placebo event 7 date | auto |
| `placebo8` | numeric | Placebo event 8 date | auto |
| `placebo9` | numeric | Placebo event 9 date | auto |
| `placebo10` | numeric | Placebo event 10 date | auto |
| `placebo11` | numeric | Placebo event 11 date | auto |
| `adl_placebo1` | numeric | ADL placebo event 1 date | auto |
| `adl_placebo2` | numeric | ADL placebo event 2 date | auto |
| `adl_placebo3` | numeric | ADL placebo event 3 date | auto |
| `adl_placebo4` | numeric | ADL placebo event 4 date | auto |
| `adl_placebo5` | numeric | ADL placebo event 5 date | auto |
| `adl_placebo6` | numeric | ADL placebo event 6 date | auto |
| `adl_placebo7` | numeric | ADL placebo event 7 date | auto |
| `adl_placebo8` | numeric | ADL placebo event 8 date | auto |
| `postBLM` | numeric | Post-BLM event indicator | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `day` | numeric | group(mdy) | stata |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `t1` | numeric | Event date 1 (Michael Brown) | auto |
| `t2` | numeric | Event date 2 (Tamir Rice) | auto |
| `t3` | numeric | Event date 3 (Freddie Gray) | auto |
| `t4` | numeric | Event date 4 (Alton Sterling) | auto |
| `t5` | numeric | Event date 5 (Stephon Clark) | auto |
| `t6` | numeric | Event date 6 (George Floyd) | auto |
| `Pt1` | numeric | Placebo event 1 indicator | auto |
| `Pt2` | numeric | Placebo event 2 indicator | auto |
| `Pt3` | numeric | Placebo event 3 indicator | auto |
| `Pt4` | numeric | Placebo event 4 indicator | auto |
| `Pt5` | numeric | Placebo event 5 indicator | auto |
| `Pt6` | numeric | Placebo event 6 indicator | auto |
| `Pt7` | numeric | Placebo event 7 indicator | auto |
| `Pt8` | numeric | Placebo event 8 indicator | auto |
| `Pt9` | numeric | Placebo event 9 indicator | auto |
| `Pt10` | numeric | Placebo event 10 indicator | auto |
| `Pt11` | numeric | Placebo event 11 indicator | auto |
| `APt1` | numeric | ADL placebo event 1 indicator | auto |
| `APt2` | numeric | ADL placebo event 2 indicator | auto |
| `APt3` | numeric | ADL placebo event 3 indicator | auto |
| `APt4` | numeric | ADL placebo event 4 indicator | auto |
| `APt5` | numeric | ADL placebo event 5 indicator | auto |
| `APt6` | numeric | ADL placebo event 6 indicator | auto |
| `APt7` | numeric | ADL placebo event 7 indicator | auto |
| `APt8` | numeric | ADL placebo event 8 indicator | auto |
| `AR` | numeric | Abnormal return | auto |
| `CAR_event0` | numeric | Cumulative abnormal return for event 0 | auto |
| `sumR_event0` | numeric | Sum of raw returns for event 0 | auto |
| `sumAR_event0` | numeric | Sum of abnormal returns for event 0 | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `CAR_event1` | numeric | Cumulative abnormal return for event 1 | auto |
| `sumR_event1` | numeric | Sum of raw returns for event 1 | auto |
| `sumAR_event1` | numeric | Sum of abnormal returns for event 1 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `CAR_event2` | numeric | Cumulative abnormal return for event 2 | auto |
| `sumR_event2` | numeric | Sum of raw returns for event 2 | auto |
| `sumAR_event2` | numeric | Sum of abnormal returns for event 2 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `CAR_event3` | numeric | Cumulative abnormal return for event 3 | auto |
| `sumR_event3` | numeric | Sum of raw returns for event 3 | auto |
| `sumAR_event3` | numeric | Sum of abnormal returns for event 3 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `CAR_event4` | numeric | Cumulative abnormal return for event 4 | auto |
| `sumR_event4` | numeric | Sum of raw returns for event 4 | auto |
| `sumAR_event4` | numeric | Sum of abnormal returns for event 4 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `CAR_event5` | numeric | Cumulative abnormal return for event 5 | auto |
| `sumR_event5` | numeric | Sum of raw returns for event 5 | auto |
| `sumAR_event5` | numeric | Sum of abnormal returns for event 5 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `CAR_event6` | numeric | Cumulative abnormal return for event 6 | auto |
| `sumR_event6` | numeric | Sum of raw returns for event 6 | auto |
| `sumAR_event6` | numeric | Sum of abnormal returns for event 6 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `PsumAR_event1` | numeric | Placebo sum of abnormal returns for event 1 | auto |
| `PsumAR_event2` | numeric | Placebo sum of abnormal returns for event 2 | auto |
| `PsumAR_event3` | numeric | Placebo sum of abnormal returns for event 3 | auto |
| `PsumAR_event4` | numeric | Placebo sum of abnormal returns for event 4 | auto |
| `PsumAR_event5` | numeric | Placebo sum of abnormal returns for event 5 | auto |
| `PsumAR_event6` | numeric | Placebo sum of abnormal returns for event 6 | auto |
| `PsumAR_event7` | numeric | Placebo sum of abnormal returns for event 7 | auto |
| `PsumAR_event8` | numeric | Placebo sum of abnormal returns for event 8 | auto |
| `PsumAR_event9` | numeric | Placebo sum of abnormal returns for event 9 | auto |
| `PsumAR_event10` | numeric | Placebo sum of abnormal returns for event 10 | auto |
| `PsumAR_event11` | numeric | Placebo sum of abnormal returns for event 11 | auto |
| `APsumAR_event1` | numeric | ADL placebo sum of abnormal returns for event 1 | auto |
| `APsumAR_event2` | numeric | ADL placebo sum of abnormal returns for event 2 | auto |
| `APsumAR_event3` | numeric | ADL placebo sum of abnormal returns for event 3 | auto |
| `APsumAR_event4` | numeric | ADL placebo sum of abnormal returns for event 4 | auto |
| `APsumAR_event5` | numeric | ADL placebo sum of abnormal returns for event 5 | auto |
| `APsumAR_event6` | numeric | ADL placebo sum of abnormal returns for event 6 | auto |
| `APsumAR_event7` | numeric | ADL placebo sum of abnormal returns for event 7 | auto |
| `APsumAR_event8` | numeric | ADL placebo sum of abnormal returns for event 8 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |

## `cleaned_data/intermediate_daily_HispCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `date` | numeric | DATE | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `ticker` | character | TICKER | stata |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `year` | numeric | Calendar year | auto |
| `fyear` | numeric | Fiscal year | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `qofd` | numeric | Quarter of date (Stata quarterly date) | auto |
| `minyear` | numeric | Minimum year in sample | auto |
| `maxyear` | numeric | Maximum year in sample | auto |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `hispanic_ceo` | numeric | Hispanic CEO indicator | auto |
| `anyhispanic_ceo` | numeric | Any Hispanic CEO indicator | auto |
| `Hispstocks` | numeric | Hispanic CEO stock indicator | auto |
| `cogsq_qtr` | numeric | Quarterly COGS (indexed by fiscal quarter) | auto |
| `cshoq` | numeric | Common shares outstanding (quarterly) | auto |
| `revtq` | numeric | Quarterly total revenue | auto |
| `saleq_qtr` | numeric | Quarterly sales (indexed by fiscal quarter) | auto |
| `capxy_qtr` | numeric | Capital expenditures (quarterly) | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `prccq` | numeric | Price close (quarterly) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `wgr_saleq_qtr` | numeric | gr_saleq, Winsorized fraction .01 | stata |
| `wgr_cogsq_qtr` | numeric | gr_cogsq, Winsorized fraction .01 | stata |
| `wgr_capxy_qtr` | numeric | gr_capxy, Winsorized fraction .01 | stata |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `lag_cshoq` | numeric | Lagged common shares outstanding | auto |
| `lag_prccq` | numeric | Lagged price close (quarterly) | auto |
| `w_I_perK_qtr` | numeric | I_perK, Winsorized fraction .01 | stata |
| `earn_surp_qtr` | numeric | Earnings surprise (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `emp_yr` | numeric | (mean) emp | stata |
| `sale_yr` | numeric | (mean) sale | stata |
| `cogs_yr` | numeric | (mean) cogs | stata |
| `capx_yr` | numeric | (mean) capx | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `wgr_emp_yr` | numeric | gr_emp, Winsorized fraction .01 | stata |
| `wgr_sale_yr` | numeric | gr_sale, Winsorized fraction .01 | stata |
| `wgr_cogs_yr` | numeric | gr_cogs, Winsorized fraction .01 | stata |
| `wgr_capx_yr` | numeric | gr_capx, Winsorized fraction .01 | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `event2` | numeric | Event 2 window indicator | auto |
| `event3` | numeric | Event 3 window indicator | auto |
| `event4` | numeric | Event 4 window indicator | auto |
| `event5` | numeric | Event 5 window indicator | auto |
| `event6` | numeric | Event 6 window indicator | auto |
| `postBLM` | numeric | Post-BLM event indicator | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `day` | numeric | group(mdy) | stata |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `t1` | numeric | Event date 1 (Michael Brown) | auto |
| `t2` | numeric | Event date 2 (Tamir Rice) | auto |
| `t3` | numeric | Event date 3 (Freddie Gray) | auto |
| `t4` | numeric | Event date 4 (Alton Sterling) | auto |
| `t5` | numeric | Event date 5 (Stephon Clark) | auto |
| `t6` | numeric | Event date 6 (George Floyd) | auto |
| `AR` | numeric | Abnormal return | auto |
| `CAR_event0` | numeric | Cumulative abnormal return for event 0 | auto |
| `sumR_event0` | numeric | Sum of raw returns for event 0 | auto |
| `sumAR_event0` | numeric | Sum of abnormal returns for event 0 | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `CAR_event1` | numeric | Cumulative abnormal return for event 1 | auto |
| `sumR_event1` | numeric | Sum of raw returns for event 1 | auto |
| `sumAR_event1` | numeric | Sum of abnormal returns for event 1 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `CAR_event2` | numeric | Cumulative abnormal return for event 2 | auto |
| `sumR_event2` | numeric | Sum of raw returns for event 2 | auto |
| `sumAR_event2` | numeric | Sum of abnormal returns for event 2 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `CAR_event3` | numeric | Cumulative abnormal return for event 3 | auto |
| `sumR_event3` | numeric | Sum of raw returns for event 3 | auto |
| `sumAR_event3` | numeric | Sum of abnormal returns for event 3 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `CAR_event4` | numeric | Cumulative abnormal return for event 4 | auto |
| `sumR_event4` | numeric | Sum of raw returns for event 4 | auto |
| `sumAR_event4` | numeric | Sum of abnormal returns for event 4 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `CAR_event5` | numeric | Cumulative abnormal return for event 5 | auto |
| `sumR_event5` | numeric | Sum of raw returns for event 5 | auto |
| `sumAR_event5` | numeric | Sum of abnormal returns for event 5 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `CAR_event6` | numeric | Cumulative abnormal return for event 6 | auto |
| `sumR_event6` | numeric | Sum of raw returns for event 6 | auto |
| `sumAR_event6` | numeric | Sum of abnormal returns for event 6 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |

## `cleaned_data/intermediate_daily.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `date` | numeric | DATE | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `ticker` | character | TICKER | stata |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `year` | numeric | Calendar year | auto |
| `fyear` | numeric | Fiscal year | auto |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `qofd` | numeric | Quarter of date (Stata quarterly date) | auto |
| `minyear` | numeric | Minimum year in sample | auto |
| `maxyear` | numeric | Maximum year in sample | auto |
| `PD` | numeric | Police department connection indicator | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `cogsq_qtr` | numeric | Quarterly COGS (indexed by fiscal quarter) | auto |
| `cshoq` | numeric | Common shares outstanding (quarterly) | auto |
| `revtq` | numeric | Quarterly total revenue | auto |
| `saleq_qtr` | numeric | Quarterly sales (indexed by fiscal quarter) | auto |
| `capxy_qtr` | numeric | Capital expenditures (quarterly) | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `prccq` | numeric | Price close (quarterly) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `wgr_saleq_qtr` | numeric | gr_saleq, Winsorized fraction .01 | stata |
| `wgr_cogsq_qtr` | numeric | gr_cogsq, Winsorized fraction .01 | stata |
| `wgr_capxy_qtr` | numeric | gr_capxy, Winsorized fraction .01 | stata |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `lag_cshoq` | numeric | Lagged common shares outstanding | auto |
| `lag_prccq` | numeric | Lagged price close (quarterly) | auto |
| `w_I_perK_qtr` | numeric | I_perK, Winsorized fraction .01 | stata |
| `earn_surp_qtr` | numeric | Earnings surprise (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `emp_yr` | numeric | (mean) emp | stata |
| `sale_yr` | numeric | (mean) sale | stata |
| `cogs_yr` | numeric | (mean) cogs | stata |
| `capx_yr` | numeric | (mean) capx | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `incorp` | character | (first) incorp | stata |
| `loc` | character | (first) loc | stata |
| `naics` | numeric | (first) naics | stata |
| `state` | character | (first) state | stata |
| `wgr_emp_yr` | numeric | gr_emp, Winsorized fraction .01 | stata |
| `wgr_sale_yr` | numeric | gr_sale, Winsorized fraction .01 | stata |
| `wgr_cogs_yr` | numeric | gr_cogs, Winsorized fraction .01 | stata |
| `wgr_capx_yr` | numeric | gr_capx, Winsorized fraction .01 | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `total_terms` | numeric | Total words | stata |
| `crime_terms` | numeric | (sum) crime_terms | stata |
| `government_terms` | numeric | Exposure to Government | stata |
| `police_terms` | numeric | Exposure to Policing | stata |
| `reform_terms` | numeric | (sum) reform_terms | stata |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_policing` | numeric | Exposure to policing-related terms in 10-K | auto |
| `expo_crime` | numeric | Exposure to crime-related terms in 10-K | auto |
| `expo_reform` | numeric | Exposure to reform-related terms in 10-K | auto |
| `expo_police` | numeric | Exposure to police-related terms in 10-K | auto |
| `expo_government` | numeric | Exposure to government-related terms in 10-K | auto |
| `lag_expo_crime` | numeric | Lagged crime exposure | auto |
| `lag_expo_reform` | numeric | Lagged reform exposure | auto |
| `lag_expo_police` | numeric | Lagged police exposure | auto |
| `lag_expo_government` | numeric | Lagged government exposure | auto |
| `lag_crime_terms` | numeric | Lagged crime term count | auto |
| `lag_reform_terms` | numeric | Lagged reform term count | auto |
| `lag_police_terms` | numeric | Lagged police term count | auto |
| `lag_government_terms` | numeric | Lagged government term count | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `event2` | numeric | Event 2 window indicator | auto |
| `event3` | numeric | Event 3 window indicator | auto |
| `event4` | numeric | Event 4 window indicator | auto |
| `event5` | numeric | Event 5 window indicator | auto |
| `event6` | numeric | Event 6 window indicator | auto |
| `placebo1` | numeric | Placebo event 1 date | auto |
| `placebo2` | numeric | Placebo event 2 date | auto |
| `placebo3` | numeric | Placebo event 3 date | auto |
| `placebo4` | numeric | Placebo event 4 date | auto |
| `placebo5` | numeric | Placebo event 5 date | auto |
| `placebo6` | numeric | Placebo event 6 date | auto |
| `placebo7` | numeric | Placebo event 7 date | auto |
| `placebo8` | numeric | Placebo event 8 date | auto |
| `placebo9` | numeric | Placebo event 9 date | auto |
| `placebo10` | numeric | Placebo event 10 date | auto |
| `placebo11` | numeric | Placebo event 11 date | auto |
| `adl_placebo1` | numeric | ADL placebo event 1 date | auto |
| `adl_placebo2` | numeric | ADL placebo event 2 date | auto |
| `adl_placebo3` | numeric | ADL placebo event 3 date | auto |
| `adl_placebo4` | numeric | ADL placebo event 4 date | auto |
| `adl_placebo5` | numeric | ADL placebo event 5 date | auto |
| `adl_placebo6` | numeric | ADL placebo event 6 date | auto |
| `adl_placebo7` | numeric | ADL placebo event 7 date | auto |
| `adl_placebo8` | numeric | ADL placebo event 8 date | auto |
| `postBLM` | numeric | Post-BLM event indicator | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `avgexpo_policing` | numeric | Average exposure to policing terms | auto |
| `day` | numeric | group(mdy) | stata |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `t1` | numeric | Event date 1 (Michael Brown) | auto |
| `t2` | numeric | Event date 2 (Tamir Rice) | auto |
| `t3` | numeric | Event date 3 (Freddie Gray) | auto |
| `t4` | numeric | Event date 4 (Alton Sterling) | auto |
| `t5` | numeric | Event date 5 (Stephon Clark) | auto |
| `t6` | numeric | Event date 6 (George Floyd) | auto |
| `Pt1` | numeric | Placebo event 1 indicator | auto |
| `Pt2` | numeric | Placebo event 2 indicator | auto |
| `Pt3` | numeric | Placebo event 3 indicator | auto |
| `Pt4` | numeric | Placebo event 4 indicator | auto |
| `Pt5` | numeric | Placebo event 5 indicator | auto |
| `Pt6` | numeric | Placebo event 6 indicator | auto |
| `Pt7` | numeric | Placebo event 7 indicator | auto |
| `Pt8` | numeric | Placebo event 8 indicator | auto |
| `Pt9` | numeric | Placebo event 9 indicator | auto |
| `Pt10` | numeric | Placebo event 10 indicator | auto |
| `Pt11` | numeric | Placebo event 11 indicator | auto |
| `APt1` | numeric | ADL placebo event 1 indicator | auto |
| `APt2` | numeric | ADL placebo event 2 indicator | auto |
| `APt3` | numeric | ADL placebo event 3 indicator | auto |
| `APt4` | numeric | ADL placebo event 4 indicator | auto |
| `APt5` | numeric | ADL placebo event 5 indicator | auto |
| `APt6` | numeric | ADL placebo event 6 indicator | auto |
| `APt7` | numeric | ADL placebo event 7 indicator | auto |
| `APt8` | numeric | ADL placebo event 8 indicator | auto |
| `AR` | numeric | Abnormal return | auto |
| `CAR_event0` | numeric | Cumulative abnormal return for event 0 | auto |
| `sumR_event0` | numeric | Sum of raw returns for event 0 | auto |
| `sumAR_event0` | numeric | Sum of abnormal returns for event 0 | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `CAR_event1` | numeric | Cumulative abnormal return for event 1 | auto |
| `sumR_event1` | numeric | Sum of raw returns for event 1 | auto |
| `sumAR_event1` | numeric | Sum of abnormal returns for event 1 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `CAR_event2` | numeric | Cumulative abnormal return for event 2 | auto |
| `sumR_event2` | numeric | Sum of raw returns for event 2 | auto |
| `sumAR_event2` | numeric | Sum of abnormal returns for event 2 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `CAR_event3` | numeric | Cumulative abnormal return for event 3 | auto |
| `sumR_event3` | numeric | Sum of raw returns for event 3 | auto |
| `sumAR_event3` | numeric | Sum of abnormal returns for event 3 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `CAR_event4` | numeric | Cumulative abnormal return for event 4 | auto |
| `sumR_event4` | numeric | Sum of raw returns for event 4 | auto |
| `sumAR_event4` | numeric | Sum of abnormal returns for event 4 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `CAR_event5` | numeric | Cumulative abnormal return for event 5 | auto |
| `sumR_event5` | numeric | Sum of raw returns for event 5 | auto |
| `sumAR_event5` | numeric | Sum of abnormal returns for event 5 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `CAR_event6` | numeric | Cumulative abnormal return for event 6 | auto |
| `sumR_event6` | numeric | Sum of raw returns for event 6 | auto |
| `sumAR_event6` | numeric | Sum of abnormal returns for event 6 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `PsumAR_event1` | numeric | Placebo sum of abnormal returns for event 1 | auto |
| `PsumAR_event2` | numeric | Placebo sum of abnormal returns for event 2 | auto |
| `PsumAR_event3` | numeric | Placebo sum of abnormal returns for event 3 | auto |
| `PsumAR_event4` | numeric | Placebo sum of abnormal returns for event 4 | auto |
| `PsumAR_event5` | numeric | Placebo sum of abnormal returns for event 5 | auto |
| `PsumAR_event6` | numeric | Placebo sum of abnormal returns for event 6 | auto |
| `PsumAR_event7` | numeric | Placebo sum of abnormal returns for event 7 | auto |
| `PsumAR_event8` | numeric | Placebo sum of abnormal returns for event 8 | auto |
| `PsumAR_event9` | numeric | Placebo sum of abnormal returns for event 9 | auto |
| `PsumAR_event10` | numeric | Placebo sum of abnormal returns for event 10 | auto |
| `PsumAR_event11` | numeric | Placebo sum of abnormal returns for event 11 | auto |
| `APsumAR_event1` | numeric | ADL placebo sum of abnormal returns for event 1 | auto |
| `APsumAR_event2` | numeric | ADL placebo sum of abnormal returns for event 2 | auto |
| `APsumAR_event3` | numeric | ADL placebo sum of abnormal returns for event 3 | auto |
| `APsumAR_event4` | numeric | ADL placebo sum of abnormal returns for event 4 | auto |
| `APsumAR_event5` | numeric | ADL placebo sum of abnormal returns for event 5 | auto |
| `APsumAR_event6` | numeric | ADL placebo sum of abnormal returns for event 6 | auto |
| `APsumAR_event7` | numeric | ADL placebo sum of abnormal returns for event 7 | auto |
| `APsumAR_event8` | numeric | ADL placebo sum of abnormal returns for event 8 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `fgvkey` | numeric | tag(gvkey) | stata |
| `q75_expo_policing` | numeric | 75th percentile of policing exposure | auto |
| `q50_expo_policing` | numeric | 50th percentile of policing exposure | auto |
| `q25_expo_policing` | numeric | 25th percentile of policing exposure | auto |

## `cleaned_data/long_category.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `category` | character | Product/service category | auto |
| `categoryID` | character | Category identifier | auto |
| `long_category` | character | Long-form category name | auto |

## `cleaned_data/mktval.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `panel` | numeric | Panel identifier | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `mktval` | numeric | (mean) mkvaltq | stata |
| `sharegvt_client` | numeric | (mean) sharegvt_client | stata |
| `weak_mktval` | numeric | Market value of weakly connected firms | auto |
| `strong_mktval` | numeric | Market value of strongly connected firms | auto |
| `weak_sharegvt` | numeric | Share of government clients (weak firms) | auto |
| `strong_sharegvt` | numeric | Share of government clients (strong firms) | auto |

## `cleaned_data/placebos_strong_portfolio.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `ret` | numeric | (mean) ret | stata |
| `nfirm_type3` | numeric | (sum) rec | stata |
| `wgtret` | numeric | (sum) wgtret | stata |
| `year` | numeric | (last) year | stata |
| `portofolio` | numeric |  |  |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `mktrf` | numeric | Market excess return (MKT-RF) | auto |
| `smb` | numeric | Small-minus-big factor return (SMB) | auto |
| `hml` | numeric | High-minus-low factor return (HML) | auto |
| `rf` | numeric | Risk-free rate | auto |
| `umd` | numeric | Up-minus-down momentum factor return (UMD) | auto |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `wexret` | numeric | Value-weighted excess return | auto |
| `netret` | numeric | Net return | auto |
| `wnetret` | numeric | Value-weighted net return | auto |
| `n` | numeric | Number of observations | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumwAR` | numeric | Sum of value-weighted abnormal returns | auto |
| `Et` | numeric | Event time indicator | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `estimation` | numeric | Estimation method identifier | auto |

## `cleaned_data/placebos_weak_portfolio.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `ret` | numeric | (mean) ret | stata |
| `nfirm_type2` | numeric | (sum) rec | stata |
| `wgtret` | numeric | (sum) wgtret | stata |
| `year` | numeric | (last) year | stata |
| `portofolio` | numeric |  |  |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `mktrf` | numeric | Market excess return (MKT-RF) | auto |
| `smb` | numeric | Small-minus-big factor return (SMB) | auto |
| `hml` | numeric | High-minus-low factor return (HML) | auto |
| `rf` | numeric | Risk-free rate | auto |
| `umd` | numeric | Up-minus-down momentum factor return (UMD) | auto |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `wexret` | numeric | Value-weighted excess return | auto |
| `netret` | numeric | Net return | auto |
| `wnetret` | numeric | Value-weighted net return | auto |
| `n` | numeric | Number of observations | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumwAR` | numeric | Sum of value-weighted abnormal returns | auto |
| `Et` | numeric | Event time indicator | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `estimation` | numeric | Estimation method identifier | auto |

## `cleaned_data/privatsesecurity_exposure_10K.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `year` | numeric | Calendar year | auto |
| `total_terms` | numeric | Total words | stata |
| `privatesecurity_terms` | numeric | Private Security-related words | stata |
| `minyear` | numeric | (last) minyear | stata |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_privatesecurity` | numeric | Exposure to private security terms in 10-K | auto |
| `lag_expo_privatesecurity` | numeric | Lagged private security exposure | auto |
| `lag_privatesecurity_terms` | numeric | Lagged private security term count | auto |
| `gvkey` | numeric | GVKEY | stata |
| `conm` | character | Company name | auto |

## `cleaned_data/returns_moredays_AsianCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `asian_ceo` | numeric | Asian CEO indicator | auto |
| `anyasian_ceo` | numeric | Any Asian CEO indicator | auto |
| `Asianstocks` | numeric | Asian CEO stock indicator | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `panel` | numeric | Panel identifier | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumiVol` | numeric | Sum of idiosyncratic volatility over event window | auto |
| `Ft` | numeric | Fama-French factor at time t | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID panel permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `FTreat` | numeric | Interaction of factor and treatment | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyAsianstocksstate` | numeric | Any Asian CEO stock in same state | auto |
| `anyAsianstockssic` | numeric | Any Asian CEO stock in same SIC | auto |
| `treated_company` | character | Treated company name (SDID) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |

## `cleaned_data/returns_moredays_BlackCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `black_ceo` | numeric | Black CEO indicator | auto |
| `anyblack_ceo` | numeric | Any Black CEO indicator | auto |
| `Blackstocks` | numeric | Black CEO stock indicator | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `panel` | numeric | Panel identifier | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumiVol` | numeric | Sum of idiosyncratic volatility over event window | auto |
| `Ft` | numeric | Fama-French factor at time t | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID panel permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `FTreat` | numeric | Interaction of factor and treatment | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyBlackstocksstate` | numeric | Any Black CEO stock in same state | auto |
| `anyBlackstockssic` | numeric | Any Black CEO stock in same SIC | auto |
| `treated_company` | character | Treated company name (SDID) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |

## `cleaned_data/returns_moredays_HispanicCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `hispanic_ceo` | numeric | Hispanic CEO indicator | auto |
| `anyhispanic_ceo` | numeric | Any Hispanic CEO indicator | auto |
| `Hispanicstocks` | numeric | Hispanic CEO stock indicator | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `panel` | numeric | Panel identifier | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumiVol` | numeric | Sum of idiosyncratic volatility over event window | auto |
| `Ft` | numeric | Fama-French factor at time t | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID panel permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `FTreat` | numeric | Interaction of factor and treatment | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyHispanicstocksstate` | numeric | Any Hispanic CEO stock in same state | auto |
| `anyHispanicstockssic` | numeric | Any Hispanic CEO stock in same SIC | auto |
| `treated_company` | character | Treated company name (SDID) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |

## `cleaned_data/returns_moredays_HispCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `hispanic_ceo` | numeric | Hispanic CEO indicator | auto |
| `anyhispanic_ceo` | numeric | Any Hispanic CEO indicator | auto |
| `Hispstocks` | numeric | Hispanic CEO stock indicator | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `panel` | numeric | Panel identifier | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumiVol` | numeric | Sum of idiosyncratic volatility over event window | auto |
| `Ft` | numeric | Fama-French factor at time t | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID panel permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `FTreat` | numeric | Interaction of factor and treatment | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyHispstocksstate` | numeric | Any Hispanic CEO stock in same state | auto |
| `anyHispstockssic` | numeric | Any Hispanic CEO stock in same SIC | auto |
| `treated_company` | character | Treated company name (SDID) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |

## `cleaned_data/returns_moredays_massshooting_smithwesson.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_policing` | numeric | Exposure to policing-related terms in 10-K | auto |
| `expo_crime` | numeric | Exposure to crime-related terms in 10-K | auto |
| `expo_reform` | numeric | Exposure to reform-related terms in 10-K | auto |
| `expo_police` | numeric | Exposure to police-related terms in 10-K | auto |
| `expo_government` | numeric | Exposure to government-related terms in 10-K | auto |
| `lag_expo_crime` | numeric | Lagged crime exposure | auto |
| `lag_expo_reform` | numeric | Lagged reform exposure | auto |
| `lag_expo_police` | numeric | Lagged police exposure | auto |
| `lag_expo_government` | numeric | Lagged government exposure | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `avgexpo_policing` | numeric | Average exposure to policing terms | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `q75_expo_policing` | numeric | 75th percentile of policing exposure | auto |
| `q50_expo_policing` | numeric | 50th percentile of policing exposure | auto |
| `q25_expo_policing` | numeric | 25th percentile of policing exposure | auto |
| `placebo` | numeric | Placebo indicator | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `PsumAR` | numeric | Placebo sum of abnormal returns | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID placebo permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyPDstate` | numeric | Any PD connection in same state | auto |
| `anyPDsic` | numeric | Any PD connection in same SIC industry | auto |

## `cleaned_data/returns_moredays_massshooting_virtra.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_policing` | numeric | Exposure to policing-related terms in 10-K | auto |
| `expo_crime` | numeric | Exposure to crime-related terms in 10-K | auto |
| `expo_reform` | numeric | Exposure to reform-related terms in 10-K | auto |
| `expo_police` | numeric | Exposure to police-related terms in 10-K | auto |
| `expo_government` | numeric | Exposure to government-related terms in 10-K | auto |
| `lag_expo_crime` | numeric | Lagged crime exposure | auto |
| `lag_expo_reform` | numeric | Lagged reform exposure | auto |
| `lag_expo_police` | numeric | Lagged police exposure | auto |
| `lag_expo_government` | numeric | Lagged government exposure | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `avgexpo_policing` | numeric | Average exposure to policing terms | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `q75_expo_policing` | numeric | 75th percentile of policing exposure | auto |
| `q50_expo_policing` | numeric | 50th percentile of policing exposure | auto |
| `placebo` | numeric | Placebo indicator | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `PsumAR` | numeric | Placebo sum of abnormal returns | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID placebo permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyPDstate` | numeric | Any PD connection in same state | auto |
| `anyPDsic` | numeric | Any PD connection in same SIC industry | auto |

## `cleaned_data/returns_moredays_massshooting_vista.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `lag_mkvaltq` | numeric | Lagged market value (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_policing` | numeric | Exposure to policing-related terms in 10-K | auto |
| `expo_crime` | numeric | Exposure to crime-related terms in 10-K | auto |
| `expo_reform` | numeric | Exposure to reform-related terms in 10-K | auto |
| `expo_police` | numeric | Exposure to police-related terms in 10-K | auto |
| `expo_government` | numeric | Exposure to government-related terms in 10-K | auto |
| `lag_expo_crime` | numeric | Lagged crime exposure | auto |
| `lag_expo_reform` | numeric | Lagged reform exposure | auto |
| `lag_expo_police` | numeric | Lagged police exposure | auto |
| `lag_expo_government` | numeric | Lagged government exposure | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `avgexpo_policing` | numeric | Average exposure to policing terms | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `q75_expo_policing` | numeric | 75th percentile of policing exposure | auto |
| `q50_expo_policing` | numeric | 50th percentile of policing exposure | auto |
| `placebo` | numeric | Placebo indicator | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `PsumAR` | numeric | Placebo sum of abnormal returns | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID placebo permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyPDstate` | numeric | Any PD connection in same state | auto |
| `anyPDsic` | numeric | Any PD connection in same SIC industry | auto |

## `cleaned_data/returns_moredays_privatesecurity_isc.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_privatesecurity` | numeric | Exposure to private security terms in 10-K | auto |
| `lag_expo_privatesecurity` | numeric | Lagged private security exposure | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `avgexpo_privatesecurity` | numeric | Average exposure to private security terms | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `q75_expo_privatesecurity` | numeric | 75th percentile of private security exposure | auto |
| `q50_expo_privatesecurity` | numeric | 50th percentile of private security exposure | auto |
| `panel` | numeric | Panel identifier | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumiVol` | numeric | Sum of idiosyncratic volatility over event window | auto |
| `Ft` | numeric | Fama-French factor at time t | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID panel permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `FTreat` | numeric | Interaction of factor and treatment | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `group_p50` | numeric | Connection group using 50th percentile threshold | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyPDstate` | numeric | Any PD connection in same state | auto |
| `anyPDsic` | numeric | Any PD connection in same SIC industry | auto |
| `treated_company` | character | Treated company name (SDID) | auto |

## `cleaned_data/returns_moredays_privatesecurity.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_privatesecurity` | numeric | Exposure to private security terms in 10-K | auto |
| `lag_expo_privatesecurity` | numeric | Lagged private security exposure | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `avgexpo_privatesecurity` | numeric | Average exposure to private security terms | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `q75_expo_privatesecurity` | numeric | 75th percentile of private security exposure | auto |
| `q50_expo_privatesecurity` | numeric | 50th percentile of private security exposure | auto |
| `panel` | numeric | Panel identifier | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumiVol` | numeric | Sum of idiosyncratic volatility over event window | auto |
| `Ft` | numeric | Fama-French factor at time t | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID panel permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `FTreat` | numeric | Interaction of factor and treatment | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `group_p50` | numeric | Connection group using 50th percentile threshold | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyPDstate` | numeric | Any PD connection in same state | auto |
| `anyPDsic` | numeric | Any PD connection in same SIC industry | auto |
| `treated_company` | character | Treated company name (SDID) | auto |

## `cleaned_data/returns_moredays.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `permno` | numeric | PERMNO | stata |
| `n` | numeric | Number of observations | auto |
| `ret` | numeric | RET | stata |
| `alpha` | numeric | CAPM/factor model intercept (alpha) | auto |
| `b_mkt` | numeric | Market beta (factor loading on MKT-RF) | auto |
| `b_smb` | numeric | SMB factor loading (small minus big) | auto |
| `b_hml` | numeric | HML factor loading (high minus low) | auto |
| `b_umd` | numeric | UMD factor loading (momentum) | auto |
| `ivol` | numeric | Idiosyncratic volatility | auto |
| `tvol` | numeric | Total volatility | auto |
| `r2` | numeric | R2 | stata |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `gvkey` | numeric | GVKEY | stata |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `busdesc` | character | Business description text | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `mdy` | Date | daily date from date | stata |
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `mkvaltq` | numeric | Market value (quarterly, Compustat) | auto |
| `size_qtr` | numeric | Firm size (quarterly) | auto |
| `profitability_qtr` | numeric | Firm profitability (quarterly) | auto |
| `leverage_qtr` | numeric | Firm leverage (quarterly) | auto |
| `PRisk` | numeric | Political risk measure | auto |
| `Sentiment` | numeric | Sentiment score | auto |
| `mdy_earncall` | Date | Earnings call date | auto |
| `lsize_qtr` | numeric | Log firm size (quarterly) | auto |
| `lprofitability_qtr` | numeric | Log profitability (quarterly) | auto |
| `lleverage_qtr` | numeric | Log leverage (quarterly) | auto |
| `size` | numeric | (mean) size | stata |
| `profitability` | numeric | (mean) profitability | stata |
| `leverage` | numeric | (mean) leverage | stata |
| `mkvalt` | numeric | (mean) mkvalt | stata |
| `state` | character | (first) state | stata |
| `lsize_yr` | numeric | Log firm size (annual) | auto |
| `lprofitability_yr` | numeric | Log profitability (annual) | auto |
| `lleverage_yr` | numeric | Log leverage (annual) | auto |
| `expo_gvt` | numeric | Exposure to government-related terms in 10-K | auto |
| `expo_policing` | numeric | Exposure to policing-related terms in 10-K | auto |
| `expo_crime` | numeric | Exposure to crime-related terms in 10-K | auto |
| `expo_reform` | numeric | Exposure to reform-related terms in 10-K | auto |
| `expo_police` | numeric | Exposure to police-related terms in 10-K | auto |
| `expo_government` | numeric | Exposure to government-related terms in 10-K | auto |
| `lag_expo_crime` | numeric | Lagged crime exposure | auto |
| `lag_expo_reform` | numeric | Lagged reform exposure | auto |
| `lag_expo_police` | numeric | Lagged police exposure | auto |
| `lag_expo_government` | numeric | Lagged government exposure | auto |
| `anypostBLM` | numeric | Any post-BLM period indicator | auto |
| `avgexpo_policing` | numeric | Average exposure to policing terms | auto |
| `AR` | numeric | Abnormal return | auto |
| `sumiVol_event0` | numeric | Sum of idiosyncratic vol for event 0 | auto |
| `sumiVol_event1` | numeric | Sum of idiosyncratic vol for event 1 | auto |
| `sumiVol_event2` | numeric | Sum of idiosyncratic vol for event 2 | auto |
| `sumiVol_event3` | numeric | Sum of idiosyncratic vol for event 3 | auto |
| `sumiVol_event4` | numeric | Sum of idiosyncratic vol for event 4 | auto |
| `sumiVol_event5` | numeric | Sum of idiosyncratic vol for event 5 | auto |
| `sumiVol_event6` | numeric | Sum of idiosyncratic vol for event 6 | auto |
| `lsize1` | numeric | Log firm size (lag 1) | auto |
| `lprofitability1` | numeric | Log profitability (lag 1) | auto |
| `lleverage1` | numeric | Log leverage (lag 1) | auto |
| `lsize2` | numeric | Log firm size (lag 2) | auto |
| `lprofitability2` | numeric | Log profitability (lag 2) | auto |
| `lleverage2` | numeric | Log leverage (lag 2) | auto |
| `lsize3` | numeric | Log firm size (lag 3) | auto |
| `lprofitability3` | numeric | Log profitability (lag 3) | auto |
| `lleverage3` | numeric | Log leverage (lag 3) | auto |
| `q75_expo_policing` | numeric | 75th percentile of policing exposure | auto |
| `q50_expo_policing` | numeric | 50th percentile of policing exposure | auto |
| `q25_expo_policing` | numeric | 25th percentile of policing exposure | auto |
| `panel` | numeric | Panel identifier | auto |
| `description` | character | Company/product description | auto |
| `Et` | numeric | Event time indicator | auto |
| `CAR` | numeric | Cumulative abnormal return | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumiVol` | numeric | Sum of idiosyncratic volatility over event window | auto |
| `Ft` | numeric | Fama-French factor at time t | auto |
| `ID` | numeric | group(permno) | stata |
| `ID_abb` | character | Abbreviated identifier | auto |
| `idnum` | numeric | group(ID panel permno) | stata |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `FTreat` | numeric | Interaction of factor and treatment | auto |
| `missVar` | numeric | Missing variable indicator | auto |
| `evermissVar` | numeric | Ever had missing variable | auto |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `group_p50` | numeric | Connection group using 50th percentile threshold | auto |
| `group_p25` | numeric | Connection group using 25th percentile threshold | auto |
| `avgexpo_government` | numeric | Average exposure to government terms | auto |
| `avgexpo_police` | numeric | Average exposure to police terms | auto |
| `avgexpo_crime` | numeric | Average exposure to crime terms | auto |
| `avgexpo_reform` | numeric | Average exposure to reform terms | auto |
| `highexpo_government` | numeric | High government exposure indicator | auto |
| `highexpo_crime` | numeric | High crime exposure indicator | auto |
| `highexpo_reform` | numeric | High reform exposure indicator | auto |
| `anygvt_client` | numeric | (max) gvt_client | stata |
| `anypolice_client` | numeric | (max) police_client | stata |
| `sharegvt_client` | numeric | Share of Government Client | stata |
| `sharepolice_client` | numeric | (mean) police_client | stata |
| `high_gvt` | numeric | Share of Government Client>0.5 | stata |
| `conmexpo` | character | Company name (exposure dataset) | auto |
| `gvtexpo` | character | Government exposure indicator | auto |
| `rec` | numeric | Record indicator | auto |
| `nobs` | numeric | Number of observations | auto |
| `anyPDstate` | numeric | Any PD connection in same state | auto |
| `anyPDsic` | numeric | Any PD connection in same SIC industry | auto |
| `treated_company` | character | Treated company name (SDID) | auto |

## `cleaned_data/roster_AsianCEO_ctrl.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | GVKEY | stata |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `asian_ceo` | numeric | Asian CEO indicator | auto |
| `anyasian_ceo` | numeric | Any Asian CEO indicator | auto |

## `cleaned_data/roster_BlackCEO_ctrl.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | GVKEY | stata |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `black_ceo` | numeric | Black CEO indicator | auto |
| `anyblack_ceo` | numeric | Any Black CEO indicator | auto |

## `cleaned_data/roster_HispanicCEO_ctrl.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | GVKEY | stata |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `hispanic_ceo` | numeric | Hispanic CEO indicator | auto |
| `anyhispanic_ceo` | numeric | Any Hispanic CEO indicator | auto |

## `cleaned_data/roster_HispCEO_ctrl.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | GVKEY | stata |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `hispanic_ceo` | numeric | Hispanic CEO indicator | auto |
| `anyhispanic_ceo` | numeric | Any Hispanic CEO indicator | auto |

## `cleaned_data/roster.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ein` | character | Employer Identification Number | auto |
| `PD` | numeric | Police department connection indicator | auto |
| `gvkey` | numeric | GVKEY | stata |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `busdesc` | character | Business description text | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `public` | numeric | Publicly traded firm indicator | auto |
| `anyPD` | numeric | Any police department connection | auto |

## `cleaned_data/rosters_cusip8_strong.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `state` | character | (first) state | stata |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `strong` | numeric | Strongly connected to police (indicator) | auto |
| `cusip8` | character | CUSIP security identifier (8-digit) | auto |

## `cleaned_data/rosters_cusip8_weak.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `state` | character | (first) state | stata |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `weak` | numeric | Weakly connected to police (indicator) | auto |
| `cusip8` | character | CUSIP security identifier (8-digit) | auto |

## `cleaned_data/SDID/0.330628362754954.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/11a_6_strong_gcogs.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/11a_6_strong_gsale.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_0_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_0_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_1_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_1_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_2_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_2_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_3_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_3_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_4_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_4_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_5_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_5_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_6_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_6_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_pooled_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/2a_pooled_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/4a_strong_NA_weak_sumwAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/4a_unweighted_strong_NA_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/4a_unweighted_weak_NA_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/4a_weak_NA_weak_sumwAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a0_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a0_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a1_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a1_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a2_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a2_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a3_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a3_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a4_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a4_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a5_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a5_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a6_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8a6_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8apooled_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8apooled_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_0_strong_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_0_weak_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_1_strong_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_1_weak_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_2_strong_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_2_weak_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_3_strong_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_3_weak_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_4_strong_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_4_weak_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_5_strong_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_5_weak_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_6_strong_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_6_weak_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_pooled_strong_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/8b_pooled_weak_sumR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_0_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_0_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_1_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_1_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_2_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_2_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_3_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_3_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_4_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_4_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_5_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_5_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_6_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_6_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_pooled_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p25_2a_pooled_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_0_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_0_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_1_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_1_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_2_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_2_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_3_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_3_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_4_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_4_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_5_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_5_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_6_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_6_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_pooled_strong_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/Appx_p50_2a_pooled_weak_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/AsianCEO_0_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/AsianCEO_1_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/AsianCEO_2_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/AsianCEO_3_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/AsianCEO_4_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/AsianCEO_5_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/AsianCEO_6_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/AsianCEO_pooled_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339, -0.00149310260737168, -0.00647681605614684, -0.00363795080013364, 0.0161651724624587, 0.0658226789471225, 0.215415834276575, 0.26803470059354, 0.075552432566638, 0.0207259868266524).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339, -0.00149310260737168, -0.00647681605614684, -0.00363795080013364, 0.0161651724624587, 0.0658226789471225, 0.215415834276575, 0.26803470059354, 0.075552432566638).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339, -0.00149310260737168, -0.00647681605614684, -0.00363795080013364, 0.0161651724624587, 0.0658226789471225, 0.215415834276575, 0.26803470059354).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339, -0.00149310260737168, -0.00647681605614684, -0.00363795080013364, 0.0161651724624587, 0.0658226789471225, 0.215415834276575).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339, -0.00149310260737168, -0.00647681605614684, -0.00363795080013364, 0.0161651724624587, 0.0658226789471225).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339, -0.00149310260737168, -0.00647681605614684, -0.00363795080013364, 0.0161651724624587).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339, -0.00149310260737168, -0.00647681605614684, -0.00363795080013364).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339, -0.00149310260737168, -0.00647681605614684).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339, -0.00149310260737168).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727, 0.032576983384339).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/c(0.330628362754954, 0.0262099193698727).dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/category_res_0.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/category_res_1.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/category_res_2.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/category_res_3.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/category_res_4.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/category_res_5.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/category_res_6.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/dfpooled_results.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/gvt_dfpooled.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/gvt_res_0.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/gvt_res_1.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/gvt_res_2.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/gvt_res_3.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/gvt_res_4.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/gvt_res_5.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/gvt_res_6.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `company_name` | character | Firm name | stata |

## `cleaned_data/SDID/HispCEO_0_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/HispCEO_1_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/HispCEO_2_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/HispCEO_3_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/HispCEO_4_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/HispCEO_5_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/HispCEO_6_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/HispCEO_pooled_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/long_equally_strong_effect.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Yraw` | numeric | Raw outcome for treated unit | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `PID` | numeric | Portfolio ID (0 = treated, >0 = placebos) | stata |
| `Ysdid` | numeric | Synthetic control outcome for treated unit | stata |
| `mofd` | numeric | Month of date (Stata monthly date format) | stata |
| `year` | numeric | (last) year | stata |
| `portofolio` | numeric | Portfolio identifier (same as PID) | stata |
| `Yraw0` | numeric | Raw outcome at event date (t=0 baseline) | stata |
| `Ysdid0` | numeric | Synthetic control outcome at event date (t=0 baseline) | stata |
| `effect` | numeric | Treatment effect: (Yraw - Yraw0) - (Ysdid - Ysdid0) | stata |

## `cleaned_data/SDID/long_equally_weak_effect.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Yraw` | numeric | Raw outcome for treated unit | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `PID` | numeric | Portfolio ID (0 = treated, >0 = placebos) | stata |
| `Ysdid` | numeric | Synthetic control outcome for treated unit | stata |
| `mofd` | numeric | Month of date (Stata monthly date format) | stata |
| `year` | numeric | (last) year | stata |
| `portofolio` | numeric | Portfolio identifier (same as PID) | stata |
| `Yraw0` | numeric | Raw outcome at event date (t=0 baseline) | stata |
| `Ysdid0` | numeric | Synthetic control outcome at event date (t=0 baseline) | stata |
| `effect` | numeric | Treatment effect: (Yraw - Yraw0) - (Ysdid - Ysdid0) | stata |

## `cleaned_data/SDID/long_strong_effect.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Yraw` | numeric | Raw outcome for treated unit | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `PID` | numeric | Portfolio ID (0 = treated, >0 = placebos) | stata |
| `Ysdid` | numeric | Synthetic control outcome for treated unit | stata |
| `mofd` | numeric | Month of date (Stata monthly date format) | stata |
| `year` | numeric | (last) year | stata |
| `portofolio` | numeric | Portfolio identifier (same as PID) | stata |
| `Yraw0` | numeric | Raw outcome at event date (t=0 baseline) | stata |
| `Ysdid0` | numeric | Synthetic control outcome at event date (t=0 baseline) | stata |
| `effect` | numeric | Treatment effect: (Yraw - Yraw0) - (Ysdid - Ysdid0) | stata |

## `cleaned_data/SDID/long_weak_effect.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Yraw` | numeric | Raw outcome for treated unit | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `PID` | numeric | Portfolio ID (0 = treated, >0 = placebos) | stata |
| `Ysdid` | numeric | Synthetic control outcome for treated unit | stata |
| `mofd` | numeric | Month of date (Stata monthly date format) | stata |
| `year` | numeric | (last) year | stata |
| `portofolio` | numeric | Portfolio identifier (same as PID) | stata |
| `Yraw0` | numeric | Raw outcome at event date (t=0 baseline) | stata |
| `Ysdid0` | numeric | Synthetic control outcome at event date (t=0 baseline) | stata |
| `effect` | numeric | Treatment effect: (Yraw - Yraw0) - (Ysdid - Ysdid0) | stata |

## `cleaned_data/SDID/minority_0_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/minority_1_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/minority_2_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/minority_3_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/minority_4_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/minority_5_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/minority_6_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/minority_pooled_sumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/monthly_totalstrong_dt.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |
| `PID` | numeric | Portfolio ID (0 = treated, >0 = placebos) | stata |

## `cleaned_data/SDID/monthly_totalweak_dt.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |
| `PID` | numeric | Portfolio ID (0 = treated, >0 = placebos) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_panel_-1.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_panel_0.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_panel_1.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_panel_2.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_panel_3.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_panel_4.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_panel_5.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_panel_6.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_refined_isc_panel_-1.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_refined_isc_panel_0.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_refined_isc_panel_1.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_refined_isc_panel_2.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_refined_isc_panel_3.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_refined_isc_panel_4.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_refined_isc_panel_5.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_privatesecurity_refined_isc_panel_6.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_strong_placebo_CAR_ADL_placebo.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_strong_placebo_CAR_placebo.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_strong_placebo_CAR_smithwesson.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_strong_placebo_CAR_virtra.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_strong_placebo_CAR_vista.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_weak_placebo_CAR_ADL_placebo.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDID_weak_placebo_CAR_placebo.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDIDstrong_dfpooled_ADL_placebo_APsumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDIDstrong_dfpooled_placebo_PsumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDIDstrong_dfpooled_placebo_smithwesson_PsumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDIDstrong_dfpooled_placebo_virtra_PsumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDIDstrong_dfpooled_placebo_vista_PsumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDIDweak_dfpooled_ADL_placebo_APsumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/SDIDweak_dfpooled_placebo_PsumAR.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/sumAR_ADL_placebo_AsianCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/sumAR_ADL_placebo_BlackCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/sumAR_ADL_placebo_HispanicCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/sumAR_ADL_placebo_privatesecurity.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/sumAR_placebo_AsianCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/sumAR_placebo_BlackCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/sumAR_placebo_HispanicCEO.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/sumAR_placebo_privatesecurity.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `se_sdid` | numeric | Standard error of SDID estimate | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `se_sc` | numeric | Standard error of SC estimate | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |

## `cleaned_data/SDID/unweighted_monthly_totalstrong_dt.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |
| `PID` | numeric | Portfolio ID (0 = treated, >0 = placebos) | stata |

## `cleaned_data/SDID/unweighted_monthly_totalweak_dt.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `Y_sdid` | numeric | Outcome variable (cumulative abnormal return) for SDID | stata |
| `type_sdid` | character | Unit type: treated or synthetic control (SDID) | stata |
| `x_sdid` | numeric | Time-to-event index for SDID (0 = event date) | stata |
| `b_sdid` | numeric | SDID point estimate of treatment effect | stata |
| `issc_sdid` | numeric | Indicator for synthetic control unit (SDID) | stata |
| `Y_sc` | numeric | Outcome variable (cumulative abnormal return) for SC | stata |
| `type_sc` | character | Unit type: treated or synthetic control (SC) | stata |
| `x_sc` | numeric | Time-to-event index for SC (0 = event date) | stata |
| `b_sc` | numeric | SC point estimate of treatment effect | stata |
| `issc_sv` | numeric | Indicator for synthetic control unit (SC) | stata |
| `PID` | numeric | Portfolio ID (0 = treated, >0 = placebos) | stata |

## `cleaned_data/strong_portfolio.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `ret` | numeric | (mean) ret | stata |
| `nfirm_type3` | numeric | (sum) rec | stata |
| `wgtret` | numeric | (sum) wgtret | stata |
| `year` | numeric | (last) year | stata |
| `portofolio` | numeric |  |  |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `mktrf` | numeric | Market excess return (MKT-RF) | auto |
| `smb` | numeric | Small-minus-big factor return (SMB) | auto |
| `hml` | numeric | High-minus-low factor return (HML) | auto |
| `rf` | numeric | Risk-free rate | auto |
| `umd` | numeric | Up-minus-down momentum factor return (UMD) | auto |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `wexret` | numeric | Value-weighted excess return | auto |
| `netret` | numeric | Net return | auto |
| `wnetret` | numeric | Value-weighted net return | auto |
| `n` | numeric | Number of observations | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumwAR` | numeric | Sum of value-weighted abnormal returns | auto |
| `Et` | numeric | Event time indicator | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `estimation` | numeric | Estimation method identifier | auto |

## `cleaned_data/weak_portfolio.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `mofd` | numeric | Month of date (Stata monthly date) | auto |
| `ret` | numeric | (mean) ret | stata |
| `nfirm_type2` | numeric | (sum) rec | stata |
| `wgtret` | numeric | (sum) wgtret | stata |
| `year` | numeric | (last) year | stata |
| `portofolio` | numeric |  |  |
| `group` | numeric | Connection group (1=control, 2=weak, 3=strong) | auto |
| `mktrf` | numeric | Market excess return (MKT-RF) | auto |
| `smb` | numeric | Small-minus-big factor return (SMB) | auto |
| `hml` | numeric | High-minus-low factor return (HML) | auto |
| `rf` | numeric | Risk-free rate | auto |
| `umd` | numeric | Up-minus-down momentum factor return (UMD) | auto |
| `exret` | numeric | Excess return (return minus risk-free rate) | auto |
| `wexret` | numeric | Value-weighted excess return | auto |
| `netret` | numeric | Net return | auto |
| `wnetret` | numeric | Value-weighted net return | auto |
| `n` | numeric | Number of observations | auto |
| `event0` | numeric | Event 0 window indicator | auto |
| `event1` | numeric | Event 1 window indicator | auto |
| `t0` | numeric | Event date (Trayvon Martin killing) | auto |
| `sumR` | numeric | Sum of raw returns over event window | auto |
| `sumAR` | numeric | Sum of abnormal returns over event window | auto |
| `sumwAR` | numeric | Sum of value-weighted abnormal returns | auto |
| `Et` | numeric | Event time indicator | auto |
| `PDstocks` | numeric | Number of police-connected stocks in same SIC/state | auto |
| `Treat` | numeric | Treatment group indicator (1=police-connected) | auto |
| `estimation` | numeric | Estimation method identifier | auto |

## `raw_data/protests/38651-0001-Data.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `AGENCYID` | numeric | AgencyID - Agency Identifier (LEAR), Numeric format | stata |
| `AGENCYNAME` | character | agencyName - Agency Name | stata |
| `SUBMIT_DATE` | character | SUBMIT_DATE - Survey submission date | stata |
| `ORI9` | character | 9-digit Originating Agency Identifier (ORI) number | stata |
| `ORI7` | character | 7-digit Originating Agency Identifier (ORI) number | stata |
| `CITY` | character | City - Agency City | stata |
| `STATE` | character | State - Agency State | stata |
| `ZIP` | character | ZIP - Agency ZIP Code | stata |
| `AGENCYSAMPTYPE` | vctrs_vctr,double | agencySampType - Agency Sample Type | stata |
| `STRATA` | vctrs_vctr,double | Strata - Strata | stata |
| `SAMPLINGWEIGHT` | vctrs_vctr,double | SamplingWeight - Sampling Weight | stata |
| `FTSWORN_2019` | vctrs_vctr,double | FTSWORN_2019 - Number of sworn personnel with general arrest powers  ACTUAL Full | stata |
| `PTSWORN_2019` | vctrs_vctr,double | PTSWORN_2019 - Number of sworn personnel with general arrest powers  ACTUAL Part | stata |
| `FTLIM_2019` | vctrs_vctr,double | FTLIM_2019 - Number of full-time officers/deputies with limited or no arrest pow | stata |
| `PTLIM_2019` | vctrs_vctr,double | PTLIM_2019 - Number of part-time officers/deputies with limited or no arrest pow | stata |
| `FTNON_2019` | vctrs_vctr,double | FTNON_2019 - Number of non-sworn employees ACTUAL Full-time paid agency employee | stata |
| `PTNON_2019` | vctrs_vctr,double | PTNON_2019 - Number of non-sworn employees  ACTUAL Part-time paid agency employe | stata |
| `TOTFTEMP_2019` | vctrs_vctr,double | TOTFTEMP_2019 - Total number of full-time paid agency employees in 2019 | stata |
| `TOTPTEMP_2019` | vctrs_vctr,double | TOTPTEMP_2019 - Total number of part-time paid agency employees in 2019 | stata |
| `FTSWORN` | vctrs_vctr,double | FTSWORN - Number of full-time sworn personnel with general arrest powers in 2020 | stata |
| `PTSWORN` | vctrs_vctr,double | PTSWORN - Number of part-time sworn personnel with general arrest powers in 2020 | stata |
| `FTLIM` | vctrs_vctr,double | Number of full-time deputies with limited or no arrest powers (e.g., jail or cou | stata |
| `PTLIM` | vctrs_vctr,double | Number of part-time deputies with limited or no arrest powers (e.g., jail or cou | stata |
| `FTNON` | vctrs_vctr,double | FTNON - Number of full-time non-sworn employees in 2020 | stata |
| `PTNON` | vctrs_vctr,double | PTNON - Number of part-time non-sworn employees in 2020 | stata |
| `TOTFTEMP` | vctrs_vctr,double | TOTFTEMP - Total number of full-time paid agency employees in 2020 | stata |
| `TOTPTEMP` | vctrs_vctr,double | TOTPTEMP - Total number of part-time paid agency employees in 2020 | stata |
| `FTVAC_2019` | vctrs_vctr,double | FTVAC_2019 - Number of full-time sworn officer vacancies for 2019 | stata |
| `FTVAC` | vctrs_vctr,double | FTVAC - Number of full-time sworn officer/deputy vacancies for 2020 | stata |
| `ADMIN_SWN` | vctrs_vctr,double | ADMIN_SWN - Number of administration personnel: Sworn with general arrest power | stata |
| `ADMIN_LIM` | vctrs_vctr,double | ADMIN_LIM - Number of administration personnel: Officers/deputies with limited o | stata |
| `ADMIN_NON` | vctrs_vctr,double | ADMIN_NON - Number of administration personnel: Non-sworn/civilian personnel | stata |
| `OP_TOTAL_SWN` | vctrs_vctr,double | OP_TOTAL_SWN - Total number of operations staff: Sworn with general arrest power | stata |
| `OP_TOTAL_LIM` | vctrs_vctr,double | OP_TOTAL_LIM - Total number of operations staff: Deputies with limited or no arr | stata |
| `OP_TOTAL_NON` | vctrs_vctr,double | OP_TOTAL_NON - Total number of operations staff: Non-sworn/civilian personnel | stata |
| `OP_SWN_OFF` | vctrs_vctr,double | OP_SWN_OFF - Number of officers/deputies only: Sworn with general arrest powers | stata |
| `OP_LIM_OFF` | vctrs_vctr,double | OP_LIM_OFF - Number of deputies only: deputies with limited or no arrest powers | stata |
| `OP_NON_OFF` | vctrs_vctr,double | OP_NON_OFF - Number of officers/deputies only: Non-sworn/civilian personnel | stata |
| `DET_SWN` | vctrs_vctr,double | DET_SWN - Number of detectives/investigators only: Sworn with general arrest pow | stata |
| `DET_LIM` | vctrs_vctr,double | DET_LIM - Number of detectives/investigators only: deputies with limited or no a | stata |
| `DET_NON` | vctrs_vctr,double | DET_NON - Number of detectives/investigators only: Non-sworn | stata |
| `OP_SWN_OTH` | vctrs_vctr,double | OP_SWN_OTH - Number of other operations personnel only: Sworn with general arres | stata |
| `OP_LIM_OTH` | vctrs_vctr,double | OP_LIM_OTH - Number of operations personnel only: Deputies with limited or no ar | stata |
| `OP_NON_OTH` | vctrs_vctr,double | OP_NON_OTH - Number of other operations personnel only: Non-sworn/civilian perso | stata |
| `JAIL_SWN` | vctrs_vctr,double | JAIL_SWN - Number of jail-related duty personnel: Sworn with general arrest powe | stata |
| `JAIL_LIM` | vctrs_vctr,double | JAIL_LIM - Number of jail-related duty personnel: Deputies with limited or no ar | stata |
| `JAIL_NON` | vctrs_vctr,double | JAIL_NON - Number of jail-related duty personnel: Non-sworn/civilian personnel ( | stata |
| `COURT_SWN` | vctrs_vctr,double | COURT_SWN - Number of court related duties personnel: Sworn with general arrest | stata |
| `COURT_LIM` | vctrs_vctr,double | COURT_LIM - Number of court related duties personnel: Deputies with limited or n | stata |
| `COURT_NON` | vctrs_vctr,double | COURT_NON - Number of court related duties personnel: Non-sworn/civilian personn | stata |
| `CIVIL_SWN` | vctrs_vctr,double | CIVIL_SWN - Number of civil process duty personnel: Sworn with general arrest po | stata |
| `CIVIL_LIM` | vctrs_vctr,double | CIVIL_LIM - Number of civil process duty personnel: Deputies with limited or no | stata |
| `CIVIL_NON` | vctrs_vctr,double | CIVIL_NON - Number of civil process duty personnel: Non-sworn/civilian personnel | stata |
| `SUP_TOTAL_SWN` | vctrs_vctr,double | SUP_TOTAL_SWN - Total support personnel: Sworn officers/deputies with general ar | stata |
| `SUP_TOTAL_LIM` | vctrs_vctr,double | SUP_TOTAL_LIM - Total support personnel: Deputies with limited or no arrest powe | stata |
| `SUP_TOTAL_NON` | vctrs_vctr,double | SUP_TOTAL_NON - Total support personnel: Non-sworn/civilian personnel | stata |
| `SUP_DIS_SWN` | vctrs_vctr,double | SUP_DIS_SWN - Number of dispatchers only: Sworn officers/deputies with general a | stata |
| `SUP_DIS_LIM` | vctrs_vctr,double | SUP_DIS_LIM - Number of dispatchers only: Deputies with limited or no arrest pow | stata |
| `SUP_DIS_NON` | vctrs_vctr,double | SUP_DIS_NON - Number of dispatchers only: Non-sworn/civilian personnel | stata |
| `SUP_OTH_SWN` | vctrs_vctr,double | SUP_OTH_SWN - Number of non-dispatcher support personnel only: Sworn officers/de | stata |
| `SUP_OTH_LIM` | vctrs_vctr,double | SUP_OTH_LIM - Number of non-dispatcher support personnel only: Deputies with lim | stata |
| `SUP_OTH_NON` | vctrs_vctr,double | SUP_OTH_NON - Number of non-dispatcher support personnel only: Non-sworn/civilia | stata |
| `OTHER_SWN` | vctrs_vctr,double | OTHER_SWN - Number of other personnel: Sworn with general arrest powers | stata |
| `OTHER_LIM` | vctrs_vctr,double | OTHER_LIM - Number of other personnel: Deputies with limited or no arrest powers | stata |
| `OTHER_NON` | vctrs_vctr,double | OTHER_NON - Number of other personnel: Non-sworn/civilian personnel | stata |
| `PERS_WHITE_MALE` | vctrs_vctr,double | PERS_WHITE_MALE - Number of Full-time Sworn Officers/Deputies: White, non-Hispan | stata |
| `PERS_WHITE_FEM` | vctrs_vctr,double | PERS_WHITE_FEM - Number of Full-time Sworn Officers/Deputies: White, non-Hispani | stata |
| `PERS_BLACK_MALE` | vctrs_vctr,double | PERS_BLACK_MALE - Number of Full-time Sworn Officers/Deputies: Black or African | stata |
| `PERS_BLACK_FEM` | vctrs_vctr,double | PERS_BLACK_FEM - Number of Full-time Sworn Officers/Deputies: Black or African A | stata |
| `PERS_HISP_MALE` | vctrs_vctr,double | PERS_HISP_MALE - Number of Full-time Sworn Officers/Deputies: Hispanic or Latino | stata |
| `PERS_HISP_FEM` | vctrs_vctr,double | PERS_HISP_FEM - Number of Full-time Sworn Officers/Deputies: Hispanic or Latino, | stata |
| `PERS_AMIND_MALE` | vctrs_vctr,double | PERS_AMIND_MALE - Number of Full-time Sworn Officers/Deputies: American Indian o | stata |
| `PERS_AMIND_FEM` | vctrs_vctr,double | PERS_AMIND_FEM - Number of Full-time Sworn Officers/Deputies: American Indian or | stata |
| `PERS_ASIAN_MALE` | vctrs_vctr,double | PERS_ASIAN_MALE - Number of Full-time Sworn Officers/Deputies: Asian, non-Hispan | stata |
| `PERS_ASIAN_FEM` | vctrs_vctr,double | PERS_ASIAN_FEM - Number of Full-time Sworn Officers/Deputies: Asian, non-Hispani | stata |
| `PERS_HAWPI_MALE` | vctrs_vctr,double | PERS_HAWPI_MALE - Number of Full-time Sworn Officers/Deputies: Native Hawaiian o | stata |
| `PERS_HAWPI_FEM` | vctrs_vctr,double | PERS_HAWPI_FEM - Number of Full-time Sworn Officers/Deputies: Native Hawaiian or | stata |
| `PERS_MULTI_MALE` | vctrs_vctr,double | PERS_MULTI_MALE - Number of Full-time Sworn Officers/Deputies: Two or more races | stata |
| `PERS_MULTI_FEM` | vctrs_vctr,double | PERS_MULTI_FEM - Number of Full-time Sworn Officers/Deputies: Two or more races, | stata |
| `PERS_UNK_MALE` | vctrs_vctr,double | PERS_UNK_MALE - Number of Full-time Sworn Officers/Deputies: Not known, Male | stata |
| `PERS_UNK_FEM` | vctrs_vctr,double | PERS_UNK_FEM - Number of Full-time Sworn Officers/Deputies: Not known, Female | stata |
| `PERS_MALE` | vctrs_vctr,double | PERS_MALE - Number of Full-time Sworn Officers/Deputies: Male | stata |
| `PERS_FEMALE` | vctrs_vctr,double | PERS_FEMALE - Number of Full-time Sworn Officers/Deputies: Female | stata |
| `PERS_CHF_SEX` | vctrs_vctr,double | PERS_CHF_SEX - Chief Executive: Sex | stata |
| `PERS_CHF_HISP_OR` | vctrs_vctr,double | PERS_CHF_HISP_OR - Chief Executive: Hispanic Origin | stata |
| `PERS_CHF_RACE_WHT` | vctrs_vctr,double | PERS_CHF_RACE_WHT - Chief Executive: Race, White | stata |
| `PERS_CHF_RACE_BK` | vctrs_vctr,double | PERS_CHF_RACE_BK - Chief Executive: Race, Black or African American | stata |
| `PERS_CHF_RACE_AMER` | vctrs_vctr,double | PERS_CHF_RACE_AMER - Chief Executive: Race, American Indian or Alaskan Native | stata |
| `PERS_CHF_RACE_ASIAN` | vctrs_vctr,double | PERS_CHF_RACE_ASIAN - Chief Executive: Race, Asian | stata |
| `PERS_CHF_RACE_HAWPI` | vctrs_vctr,double | PERS_CHF_RACE_HAWPI - Chief Executive: Race, Native Hawaiian or other Pacific Is | stata |
| `PERS_CHF_RACE_OTH` | vctrs_vctr,double | PERS_CHF_RACE_OTH - Chief Executive: Race, Other (please specify) | stata |
| `PERS_CHF_RACE_OTH_SPEC` | character | PERS_CHF_RACE_OTH_SPEC - PERS_CHF_RACE_OTH specify text | stata |
| `PERS_SUP_INTM_NA` | vctrs_vctr,double | PERS_SUP_INTM_NA - Intermediate supervisors: N/A selected | stata |
| `PERS_SUP_SGT_NA` | vctrs_vctr,double | PERS_SUP_SGT_NA - Sergeant or equivalent: N/A selected | stata |
| `PERS_SUP_INTM_WH` | vctrs_vctr,double | PERS_SUP_INTM_WH - Number of Intermediate supervisors: White, non-Hispanic | stata |
| `PERS_SUP_SGT_WH` | vctrs_vctr,double | PERS_SUP_SGT_WH - Number of Sergeants or equivalent: White, non-Hispanic | stata |
| `PERS_SUP_INTM_BK` | vctrs_vctr,double | PERS_SUP_INTM_BK - Number of Intermediate supervisors: Black or African American | stata |
| `PERS_SUP_SGT_BK` | vctrs_vctr,double | PERS_SUP_SGT_BK - Number of Sergeants or equivalent: Black or African American, | stata |
| `PERS_SUP_INTM_HS` | vctrs_vctr,double | PERS_SUP_INTM_HS - Number of Intermediate supervisors: Hispanic or Latino | stata |
| `PERS_SUP_SGT_HS` | vctrs_vctr,double | PERS_SUP_SGT_HS - Number of Sergeants or equivalent: Hispanic or Latino | stata |
| `PERS_SUP_INTM_AI` | vctrs_vctr,double | PERS_SUP_INTM_AI - Number of Intermediate supervisors: American Indian or Alaska | stata |
| `PERS_SUP_SGT_AI` | vctrs_vctr,double | PERS_SUP_SGT_AI - Number of Sergeants or equivalent: American Indian or Alaska N | stata |
| `PERS_SUP_INTM_AS` | vctrs_vctr,double | PERS_SUP_INTM_AS - Number of Intermediate supervisors: Asian, non-Hispanic | stata |
| `PERS_SUP_SGT_AS` | vctrs_vctr,double | PERS_SUP_SGT_AS - Number of Sergeants or equivalent: Asian, non-Hispanic | stata |
| `PERS_SUP_INTM_HA` | vctrs_vctr,double | PERS_SUP_INTM_HA - Number of Intermediate supervisors: Native Hawaiian or other | stata |
| `PERS_SUP_SGT_HA` | vctrs_vctr,double | PERS_SUP_SGT_HA - Number of Sergeants or equivalent: Native Hawaiian or other Pa | stata |
| `PERS_SUP_INTM_MUL` | vctrs_vctr,double | PERS_SUP_INTM_MUL - Number of Intermediate supervisors: Two or more races | stata |
| `PERS_SUP_SGT_MUL` | vctrs_vctr,double | PERS_SUP_SGT_MUL - Number of Sergeants or equivalent: Two or more races | stata |
| `PERS_SUP_INTM_UNK` | vctrs_vctr,double | PERS_SUP_INTM_UNK - Number of Intermediate supervisors: Not known | stata |
| `PERS_SUP_SGT_UNK` | vctrs_vctr,double | PERS_SUP_SGT_UNK - Number of Sergeants or equivalent: Not known | stata |
| `PERS_SUP_INTM_TOTR` | vctrs_vctr,double | PERS_SUP_INTM_TOTR - Number of Intermediate supervisors: Total | stata |
| `PERS_SUP_SGT_TOTR` | vctrs_vctr,double | PERS_SUP_SGT_TOTR - Number of Sergeants or equivalent: Total | stata |
| `PERS_SUP_INTM_MALE` | vctrs_vctr,double | PERS_SUP_INTM_MALE - Number of Intermediate supervisors: Male | stata |
| `PERS_SUP_SGT_MALE` | vctrs_vctr,double | PERS_SUP_SGT_MALE - Number of Sergeants or equivalent: Male | stata |
| `PERS_SUP_INTM_FEM` | vctrs_vctr,double | PERS_SUP_INTM_FEM - Number of Intermediate supervisors: Female | stata |
| `PERS_SUP_SGT_FEM` | vctrs_vctr,double | PERS_SUP_SGT_FEM - Number of Sergeants or equivalent: Female | stata |
| `PERS_SUP_INTM_TOTS` | vctrs_vctr,double | PERS_SUP_INTM_TOTS - Number of Intermediate supervisors: Total | stata |
| `PERS_SUP_SGT_TOTS` | vctrs_vctr,double | PERS_SUP_SGT_TOTS - Number of Sergeants or equivalent: Total | stata |
| `PERS_BILING_SWN` | vctrs_vctr,double | PERS_BILING_SWN - Number of FULL-TIME agency personnel who were bi- or multiling | stata |
| `PERS_BILING_LIM` | vctrs_vctr,double | PERS_BILING_LIM - Number of FULL-TIME agency personnel who were bi- or multiling | stata |
| `PERS_BILING_NON` | vctrs_vctr,double | PERS_BILING_NON - Number of FULL-TIME agency personnel who were bi- or multiling | stata |
| `ISSU_ADDR_AGSTAND` | vctrs_vctr,double | ISSU_ADDR_AGSTAND - How did agency address problem/task: Agency standards/accred | stata |
| `ISSU_ADDR_BIAS` | vctrs_vctr,double | ISSU_ADDR_BIAS - How did agency address problem/task: Bias/hate crime | stata |
| `ISSU_ADDR_BOMB` | vctrs_vctr,double | ISSU_ADDR_BOMB - How did agency address problem/task: Bomb/explosive disposal | stata |
| `ISSU_ADDR_CHILD` | vctrs_vctr,double | ISSU_ADDR_CHILD - How did agency address problem/task: Child abuse / endangermen | stata |
| `ISSU_ADDR_CP` | vctrs_vctr,double | ISSU_ADDR_CP - How did agency address problem/task: Community policing | stata |
| `ISSU_ADDR_CRMANL` | vctrs_vctr,double | ISSU_ADDR_CRMANL - How did agency address problem/task: Crime analysis | stata |
| `ISSU_ADDR_CYBER` | vctrs_vctr,double | ISSU_ADDR_CYBER - How did agency address problem/task: Cybercrime | stata |
| `ISSU_ADDR_DOM` | vctrs_vctr,double | ISSU_ADDR_DOM - How did agency address problem/task: Domestic violence | stata |
| `ISSU_ADDR_GUNS` | vctrs_vctr,double | ISSU_ADDR_GUNS - How did agency address problem/task: Firearms | stata |
| `ISSU_ADDR_GANG` | vctrs_vctr,double | ISSU_ADDR_GANG - How did agency address problem/task: Gangs | stata |
| `ISSU_ADDR_HMLS` | vctrs_vctr,double | ISSU_ADDR_HMLS - How did agency address problem/task: Homelessness | stata |
| `ISSU_ADDR_HUMTRF` | vctrs_vctr,double | ISSU_ADDR_HUMTRF - How did agency address problem/task: Human trafficking | stata |
| `ISSU_ADDR_DUI` | vctrs_vctr,double | ISSU_ADDR_DUI - How did agency address problem/task: Impaired drivers (DUI/DWI) | stata |
| `ISSU_ADDR_IA` | vctrs_vctr,double | ISSU_ADDR_IA - How did agency address problem/task: Internal affairs | stata |
| `ISSU_ADDR_JUV` | vctrs_vctr,double | ISSU_ADDR_JUV - How did agency address problem/task: Juvenile crimes | stata |
| `ISSU_ADDR_MNHLTH` | vctrs_vctr,double | ISSU_ADDR_MNHLTH - How did agency address problem/task: Mental health | stata |
| `ISSU_ADDR_METH` | vctrs_vctr,double | ISSU_ADDR_METH - How did agency address problem/task: Methamphetamine labs | stata |
| `ISSU_ADDR_MISCHD` | vctrs_vctr,double | ISSU_ADDR_MISCHD - How did agency address problem/task: Missing children | stata |
| `ISSU_ADDR_OPIOD` | vctrs_vctr,double | ISSU_ADDR_OPIOD - How did agency address problem/task: Opioids | stata |
| `ISSU_ADDR_PARKEN` | vctrs_vctr,double | ISSU_ADDR_PARKEN - How did agency address problem/task: Parking enforcement | stata |
| `ISSU_ADDR_PR` | vctrs_vctr,double | ISSU_ADDR_PR - How did agency address problem/task: Public relations | stata |
| `ISSU_ADDR_RESRCH` | vctrs_vctr,double | ISSU_ADDR_RESRCH - How did agency address problem/task: Research and planning | stata |
| `ISSU_ADDR_SCH` | vctrs_vctr,double | ISSU_ADDR_SCH - How did agency address problem/task: School safety | stata |
| `ISSU_ADDR_SEX` | vctrs_vctr,double | ISSU_ADDR_SEX - How did agency address problem/task: Sexual assault | stata |
| `ISSU_ADDR_SWAT` | vctrs_vctr,double | ISSU_ADDR_SWAT - How did agency address problem/task: Special operations (e.g. S | stata |
| `ISSU_ADDR_TERROR` | vctrs_vctr,double | ISSU_ADDR_TERROR - How did agency address problem/task: Terrorism/homeland secur | stata |
| `ISSU_ADDR_TRAFEN` | vctrs_vctr,double | ISSU_ADDR_TRAFEN - How did agency address problem/task: Traffic enforcement | stata |
| `ISSU_ADDR_VIC` | vctrs_vctr,double | ISSU_ADDR_VIC - How did agency address problem/task: Victim assistance | stata |
| `OPBUDGET_2019` | vctrs_vctr,double | OPBUDGET_2019 - Agency's total operating budget for the fiscal year that include | stata |
| `OPBUDGET_2019_EST` | vctrs_vctr,double | OPBUDGET_2019_EST - Operating Budget from 2019 is an estimate (checkbox) | stata |
| `OPBUDGET` | vctrs_vctr,double | OPBUDGET - Agency's total operating budget for the fiscal year that included Dec | stata |
| `OPBUDGET_EST` | vctrs_vctr,double | OPBUDGET_EST - Operating Budget from 2020 is an estimate (checkbox) | stata |
| `OP_JAIL` | vctrs_vctr,double | OP_JAIL - Does your agency operate a jail? (Sheriff only) | stata |
| `OP_BUDGET_JAIL_2019` | vctrs_vctr,double | OP_BUDGET_JAIL_2019 - Operating budget allocated to jail administration in 2019 | stata |
| `OP_BUDGET_JAIL_2019_EST` | vctrs_vctr,double | OP_BUDGET_JAIL_2019_EST - OP_BUDGET_JAIL_2019 is an estimate (Sheriff only) | stata |
| `OP_BUDGET_JAIL` | vctrs_vctr,double | OP_BUDGET_JAIL - Operating budget allocated to jail administration in  2020 (She | stata |
| `OP_BUDGET_JAIL_EST` | vctrs_vctr,double | OP_BUDGET_JAIL_EST - OP_BUDGET_JAIL is an estimate (Sheriff only) | stata |
| `FY_BEGMO` | vctrs_vctr,double | FY_BEGMO - Fiscal Year: Start Month | stata |
| `FY_BEGDAY` | vctrs_vctr,double | FY_BEGDAY - Fiscal Year: Start Day | stata |
| `ASSETFOR` | vctrs_vctr,double | ASSETFOR - Enter the total estimated value of money, goods, and property receive | stata |
| `ASSETFOR_EST` | vctrs_vctr,double | ASSETFOR_EST - Asset Forfeiture value is an estimate (checkbox) | stata |
| `SQ_MILAGE` | vctrs_vctr,double | SQ_MILAGE - Total square mileage of agency service area (Sheriff only) | stata |
| `RES_POP` | vctrs_vctr,double | RES_POP - Total resident population for agency service area (Sheriff only) | stata |
| `CP_PSP_ACD` | vctrs_vctr,double | CP_PSP_ACD - Problem-solving partnership or written agreement with: Academic/uni | stata |
| `CP_PSP_ADVGRP` | vctrs_vctr,double | CP_PSP_ADVGRP - Problem-solving partnership or written agreement with: Advocacy | stata |
| `CP_PSP_BUSGRP` | vctrs_vctr,double | CP_PSP_BUSGRP - Problem-solving partnership or written agreement with: Business | stata |
| `CP_PSP_FLEA` | vctrs_vctr,double | CP_PSP_FLEA - Problem-solving partnership or written agreement with: Federal law | stata |
| `CP_PSP_LEA` | vctrs_vctr,double | CP_PSP_LEA - Problem-solving partnership or written agreement with: Other local | stata |
| `CP_PSP_NEIGH` | vctrs_vctr,double | CP_PSP_NEIGH - Problem-solving partnership or written agreement with: Neighborho | stata |
| `CP_PSP_NONLEA` | vctrs_vctr,double | CP_PSP_NONLEA - Problem-solving partnership or written agreement with: Non-law e | stata |
| `CP_PSP_GOV` | vctrs_vctr,double | CP_PSP_GOV - Problem-solving partnership or written agreement with: State or loc | stata |
| `CP_PSP_VICT` | vctrs_vctr,double | CP_PSP_VICT - Problem-solving partnership or written agreement with: Victim serv | stata |
| `CP_PSP_OTH` | vctrs_vctr,double | CP_PSP_OTH - Problem-solving partnership or written agreement with: Other (pleas | stata |
| `CP_PSP_OTH_SPEC` | character | CP_PSP_OTH_SPEC - Problem-solving partnership or written agreement with: Other s | stata |
| `FDBK_NHOOD` | vctrs_vctr,double | FDBK_NHOOD - Agency solicited feedback from community for: Allocating resources | stata |
| `FDBK_TRUST` | vctrs_vctr,double | FDBK_TRUST - Agency solicited feedback from community for: Assessing community t | stata |
| `FDBK_PERFRM` | vctrs_vctr,double | FDBK_PERFRM - Agency solicited feedback from community for: Evaluating officer o | stata |
| `FDBK_POLICY` | vctrs_vctr,double | FDBK_POLICY - Agency solicited feedback from community for: Informing agency pol | stata |
| `FDBK_CRIME` | vctrs_vctr,double | FDBK_CRIME - Agency solicited feedback from community for: Prioritizing crime/di | stata |
| `FDBK_TRAIN` | vctrs_vctr,double | FDBK_TRAIN - Agency solicited feedback from community for: Training development | stata |
| `CP_PLAN` | vctrs_vctr,double | CP_PLAN - Community relations in 2020: Maintain a written community policing pla | stata |
| `CP_CPACAD` | vctrs_vctr,double | CP_CPACAD - Community relations in 2020: Agency conducted a citizen police acade | stata |
| `CP_RANGE` | vctrs_vctr,double | CP_RANGE - Community relations in 2020: Conducted citizen range days | stata |
| `CP_CAC` | vctrs_vctr,double | CP_CAC - Community relations in 2020: Agency worked with a community advisory co | stata |
| `CP_OTH` | vctrs_vctr,double | CP_OTH - Community relations in 2020: Other, specify | stata |
| `CP_OTH_SPEC` | character | CP_OTH_SPEC - CP_OTH specify text [truncated by ICPSR] | stata |
| `PERS_EDU_MIN` | vctrs_vctr,double | PERS_EDU_MIN - Minimum education requirement for new non-lateral sworn personnel | stata |
| `PERS_EDU_HRS` | vctrs_vctr,double | PERS_EDU_HRS - Total required credit hours when minimum education requirement is | stata |
| `PERS_MIL` | vctrs_vctr,double | PERS_MIL - Military service exemption for minimum education requirement | stata |
| `PERS_BACKINV` | vctrs_vctr,double | PERS_BACKINV - Screening techniques for sworn officer/deputy recruits: Backgroun | stata |
| `PERS_CREDHIS` | vctrs_vctr,double | PERS_CREDHIS - Screening techniques for sworn officer/deputy recruits: Credit hi | stata |
| `PERS_CRIMHIS` | vctrs_vctr,double | PERS_CRIMHIS - Screening techniques for sworn officer/deputy recruits: Criminal | stata |
| `PERS_DRIVHIS` | vctrs_vctr,double | PERS_DRIVHIS - Screening techniques for sworn officer/deputy recruits: Driving r | stata |
| `PERS_SOCMED` | vctrs_vctr,double | PERS_SOCMED - Screening techniques for sworn officer/deputy recruits: Social med | stata |
| `PERS_COG` | vctrs_vctr,double | PERS_COG - Screening techniques for sworn officer/deputy recruits: Cognitive abi | stata |
| `PERS_INTERPER` | vctrs_vctr,double | PERS_INTERPER - Screening techniques for sworn officer/deputy recruits: Interper | stata |
| `PERS_PERSTEST` | vctrs_vctr,double | PERS_PERSTEST - Screening techniques for sworn officer/deputy recruits: Personal | stata |
| `PERS_PSYCH` | vctrs_vctr,double | PERS_PSYCH - Screening techniques for sworn officer/deputy recruits: Psychologic | stata |
| `PERS_POLY` | vctrs_vctr,double | PERS_POLY - Screening techniques for sworn officer/deputy recruits: Polygraph ex | stata |
| `PERS_DRUG` | vctrs_vctr,double | PERS_DRUG - Screening techniques for sworn officer/deputy recruits: Drug test | stata |
| `PERS_MED` | vctrs_vctr,double | PERS_MED - Screening techniques for sworn officer/deputy recruits: Medical exam | stata |
| `PERS_VISN` | vctrs_vctr,double | PERS_VISN - Screening techniques for sworn officer/deputy recruits: Vision test | stata |
| `PERS_PHYS` | vctrs_vctr,double | PERS_PHYS - Screening techniques for sworn officer/deputy recruits: Physical agi | stata |
| `PERS_SSTAND` | vctrs_vctr,double | PERS_SSTAND - Screening techniques for sworn officer/deputy recruits:  Physical | stata |
| `ACAD_HRS_ST` | vctrs_vctr,double | ACAD_HRS_ST - Academy training hours for new sworn officer/deputy recruits: Stat | stata |
| `FLD_HRS_ST` | vctrs_vctr,double | FLD_HRS_ST - Field training hours for new sworn officer/deputy recruits: State M | stata |
| `ACAD_HRS_ADD` | vctrs_vctr,double | ACAD_HRS_ADD - Academy training hours for new sworn officer/deputy recruits: Add | stata |
| `FLD_HRS_ADD` | vctrs_vctr,double | FLD_HRS_ADD - Field training hours for new sworn officer/deputy recruits: Additi | stata |
| `PERS_TRN_ACAD` | vctrs_vctr,double | PERS_TRN_ACAD - Total hours of ACADEMY training required for new officer/deputy | stata |
| `PERS_TRN_FIELD` | vctrs_vctr,double | PERS_TRN_FIELD - Total hours of FIELD training required for new officer/deputy r | stata |
| `STATE_TRN_MIN` | vctrs_vctr,double | STATE_TRN_MIN - Minimum annual number of in-service training hours required for | stata |
| `ADD_TRN_MIN` | vctrs_vctr,double | ADD_TRN_MIN - Minimum annual number of in-service training hours required for fu | stata |
| `PERS_TRN_INSVC` | vctrs_vctr,double | PERS_TRN_INSVC - Total hours of IN-SERVICE training required annually for full-t | stata |
| `TOT_NEW` | vctrs_vctr,double | TOT_NEW - Total number of full-time sworn officers/deputies hired by agency in 2 | stata |
| `NON_LAT_NEW` | vctrs_vctr,double | NON_LAT_NEW - New hires: Number of entry-level hires (non-lateral) | stata |
| `LAT_TRANSF` | vctrs_vctr,double | LAT_TRANSF - New hires: Number of lateral transfers/hires | stata |
| `OTH_NEW` | vctrs_vctr,double | OTH_NEW - New hires: Number of other new hires | stata |
| `AVG_WKS` | vctrs_vctr,double | AVG_WKS - Average number of weeks between recruits submitting application to tim | stata |
| `FOUR_YR_COLL_GRAD` | vctrs_vctr,double | FOUR_YR_COLL_GRAD - Entry-level sworn officer/deputy recruitment target: 4-year | stata |
| `MIL_VET` | vctrs_vctr,double | MIL_VET - Entry-level sworn officer/deputy recruitment target: Military veterans | stata |
| `MULT_LING` | vctrs_vctr,double | MULT_LING - Entry-level sworn officer/deputy recruitment target: Multi-lingual s | stata |
| `PRIOR_EXP` | vctrs_vctr,double | PRIOR_EXP - Entry-level sworn officer/deputy recruitment target: Prior experienc | stata |
| `RACE_ETHNI_MIN` | vctrs_vctr,double | RACE_ETHNI_MIN - Entry-level sworn officer/deputy recruitment target: Racial/eth | stata |
| `WMN` | vctrs_vctr,double | WMN - Entry-level sworn officer/deputy recruitment target: Women | stata |
| `OTH_TAR` | vctrs_vctr,double | OTH_TAR - Entry-level sworn officer/deputy recruitment target: Other target | stata |
| `OTH_TAR_SPEC` | character | OTH_TAR_SPEC - OTH_TAR specify text | stata |
| `SIGN_BONUS` | vctrs_vctr,double | SIGN_BONUS - Entry-level sworn officer/deputy hiring incentives: Employment sign | stata |
| `FREE_TRN` | vctrs_vctr,double | FREE_TRN - Entry-level sworn officer/deputy hiring incentives: Free or reimburse | stata |
| `SALARY` | vctrs_vctr,double | SALARY - Entry-level sworn officer/deputy hiring incentives: Salary paid during | stata |
| `GRAD_BONUS` | vctrs_vctr,double | GRAD_BONUS - Entry-level sworn officer/deputy hiring incentives: Training academ | stata |
| `RELOC_ASST` | vctrs_vctr,double | RELOC_ASST - Entry-level sworn officer/deputy hiring incentives: Relocation assi | stata |
| `OTH_INCEN` | vctrs_vctr,double | OTH_INCEN - Entry-level sworn officer/deputy hiring incentives: Other incentive | stata |
| `OTH_INCEN_SPEC` | character | OTH_INCEN_SPEC - OTH_INCEN specify text | stata |
| `TOT_SEP` | vctrs_vctr,double | TOT_SEP - Total number of full-time sworn officers/deputies separated from agenc | stata |
| `PROB_REJ` | vctrs_vctr,double | PROB_REJ - Number of full-time sworn officers/deputies separated due to: Probati | stata |
| `LAYOFF` | vctrs_vctr,double | LAYOFF - Number of full-time sworn officers/deputies separated due to: Layoffs | stata |
| `DISMISS` | vctrs_vctr,double | DISMISS - Number of full-time sworn officers/deputies separated due to: Dismissa | stata |
| `RESIGN` | vctrs_vctr,double | RESIGN - Number of full-time sworn officers/deputies separated due to: Voluntary | stata |
| `MED_RETIRE` | vctrs_vctr,double | MED_RETIRE - Number of full-time sworn officers/deputies separated due to: Medic | stata |
| `NON_MED_RETIRE` | vctrs_vctr,double | NON_MED_RETIRE - Number of full-time sworn officers/deputies separated due to: N | stata |
| `DEATH` | vctrs_vctr,double | DEATH - Number of full-time sworn officers/deputies separated due to: Death | stata |
| `OTH_SEP` | vctrs_vctr,double | OTH_SEP - Number of full-time sworn officers/deputies separated due to: Other re | stata |
| `EXIT_INT` | vctrs_vctr,double | EXIT_INT - Agency exit interview policy for full-time sworn officers/deputies | stata |
| `BAS_CHIEF_EXEC_MIN` | vctrs_vctr,double | BAS_CHIEF_EXEC_MIN - Minimum annual salary schedule: Chief Executive | stata |
| `BAS_CHIEF_EXEC_MAX` | vctrs_vctr,double | BAS_CHIEF_EXEC_MAX - Maximum annual salary schedule: Chief Executive | stata |
| `BAS_CHIEF_EXEC_NA` | vctrs_vctr,double | BAS_CHIEF_EXEC_NA - Annual salary schedule N/A: Chief Executive, N/A selected | stata |
| `BAS_SGT_MIN` | vctrs_vctr,double | BAS_SGT_MIN - Minimum annual salary schedule: Sergeant or equivalent supervisor | stata |
| `BAS_SGT_MAX` | vctrs_vctr,double | BAS_SGT_MAX - Maximum annual salary schedule: Sergeant or equivalent supervisor | stata |
| `BAS_SGT_NA` | vctrs_vctr,double | BAS_SGT_NA - Annual salary schedule N/A: Sergeant or equivalent supervisor, N/A | stata |
| `BAS_OFC_MIN` | vctrs_vctr,double | BAS_OFC_MIN - Minimum annual salary schedule: Entry-level officer | stata |
| `BAS_OFC_MAX` | vctrs_vctr,double | BAS_OFC_MAX - Maximum annual salary schedule: Entry-level officer | stata |
| `BAS_OFC_NA` | vctrs_vctr,double | BAS_OFC_NA - Annual salary schedule N/A: Entry-level officer, N/A selected | stata |
| `PAY_BIL` | vctrs_vctr,double | PAY_BIL - Sworn officer/deputy special pay: Bilingual ability pay | stata |
| `PAY_EDU` | vctrs_vctr,double | PAY_EDU - Sworn officer/deputy special pay: Education incentive pay | stata |
| `PAY_HAZ` | vctrs_vctr,double | PAY_HAZ - Sworn officer/deputy special pay: Hazardous duty pay | stata |
| `PAY_MRT` | vctrs_vctr,double | PAY_MRT - Sworn officer/deputy special pay: Merit/performance pay | stata |
| `PAY_MIL` | vctrs_vctr,double | PAY_MIL - Sworn officer/deputy special pay: Military service pay | stata |
| `PAY_RES` | vctrs_vctr,double | PAY_RES - Sworn officer/deputy special pay: Residential incentive pay | stata |
| `PAY_SHFT_DIF` | vctrs_vctr,double | PAY_SHFT_DIF - Sworn officer/deputy special pay: Shift differential pay | stata |
| `PAY_SKL` | vctrs_vctr,double | PAY_SKL - Sworn officer/deputy special pay: Special skills proficiency pay | stata |
| `TUITION` | vctrs_vctr,double | TUITION - Agency benefits: College tuition reimbursement | stata |
| `EAP` | vctrs_vctr,double | EAP - Agency benefits: Employee assistance program | stata |
| `MED_BNFT` | vctrs_vctr,double | MED_BNFT - Agency benefits: Enhanced medical benefits | stata |
| `RETIRE_BNFT` | vctrs_vctr,double | RETIRE_BNFT - Agency benefits: Enhanced retirement benefits | stata |
| `OT` | vctrs_vctr,double | OT - Agency benefits: Extra overtime opportunities | stata |
| `FLEX_HRS_COLL` | vctrs_vctr,double | FLEX_HRS_COLL - Agency benefits: Flexible hours to attend college | stata |
| `CLOTH_ALLOW` | vctrs_vctr,double | CLOTH_ALLOW - Agency benefits: Free or financial allowance for uniforms | stata |
| `HOUSE_ALLOW` | vctrs_vctr,double | HOUSE_ALLOW - Agency benefits: Housing allowance or mortgage discount program | stata |
| `PAY_INC` | vctrs_vctr,double | PAY_INC - Agency benefits: Increased pay at specific service milestones | stata |
| `JOB_SHARE` | vctrs_vctr,double | JOB_SHARE - Agency benefits: Job sharing or time splits | stata |
| `ON_DUTY_FIT` | vctrs_vctr,double | ON_DUTY_FIT - Agency benefits: On-duty time allowance for fitness maintenance | stata |
| `MAT_LVE` | vctrs_vctr,double | MAT_LVE - Agency benefits: Paid maternity leave | stata |
| `PAT_LVE` | vctrs_vctr,double | PAT_LVE - Agency benefits: Paid paternity leave | stata |
| `PEER_SUP` | vctrs_vctr,double | PEER_SUP - Agency benefits: Peer support program | stata |
| `RELAX_RES_REQ` | vctrs_vctr,double | RELAX_RES_REQ - Agency benefits: Relaxed residency requirements | stata |
| `TAKE_HOME_VEH` | vctrs_vctr,double | TAKE_HOME_VEH - Agency benefits: Take home vehicle | stata |
| `OTH_BNFT` | vctrs_vctr,double | OTH_BNFT - Agency benefits: Other benefit (please specify) | stata |
| `OTH_BNFT_SPEC` | character | OTH_BNFT_SPEC - OTH_BNFT specify text | stata |
| `STD_SHFT` | vctrs_vctr,double | STD_SHFT - Standard shift length for sworn patrol officers/deputies, hours per d | stata |
| `EQ_HANDGUN_ON` | vctrs_vctr,double | EQ_HANDGUN_ON - Firearms authorized for full-time sworn on-duty: Handgun | stata |
| `EQ_HANDGUN_OFF` | vctrs_vctr,double | EQ_HANDGUN_OFF - Firearms authorized for full-time sworn officers/deputies off-d | stata |
| `EQ_SHOTGUN_ON` | vctrs_vctr,double | EQ_SHOTGUN_ON - Firearms authorized for full-time sworn on-duty: Shotgun or manu | stata |
| `EQ_SHOTGUN_OFF` | vctrs_vctr,double | EQ_SHOTGUN_OFF - Firearms authorized for full-time sworn officers/deputies off-d | stata |
| `EQ_SEMI_ON` | vctrs_vctr,double | EQ_SEMI_ON - Firearms authorized for full-time sworn on-duty: Semi-automatic rif | stata |
| `EQ_SEMI_OFF` | vctrs_vctr,double | EQ_SEMI_OFF - Firearms authorized for full-time sworn officers/deputies off-duty | stata |
| `EQ_FULL_AUTO_ON` | vctrs_vctr,double | EQ_FULL_AUTO_ON - Firearms authorized for full-time sworn on-duty: Fully automat | stata |
| `EQ_FULL_AUTO_OFF` | vctrs_vctr,double | EQ_FULL_AUTO_OFF - Firearms authorized for full-time sworn officers/deputies off | stata |
| `EQ_OHAND` | vctrs_vctr,double | EQ_OHAND - Weapons authorized for full-time sworn officers/deputies: Open hand t | stata |
| `EQ_CHAND` | vctrs_vctr,double | EQ_CHAND - Weapons authorized for full-time sworn officers/deputies: Closed hand | stata |
| `EQ_TKDWN` | vctrs_vctr,double | EQ_TKDWN - Weapons authorized for full-time sworn officers/deputies: Take down t | stata |
| `EQ_NECK_VASC` | vctrs_vctr,double | EQ_NECK_VASC - Weapons authorized for full-time sworn officers/deputies: Vascula | stata |
| `EQ_NECK_RESP` | vctrs_vctr,double | EQ_NECK_RESP - Weapons authorized for full-time sworn officers/deputies: Respira | stata |
| `EQ_LEG` | vctrs_vctr,double | EQ_LEG - Weapons authorized for full-time sworn officers/deputies: Leg hobble or | stata |
| `EQ_OC` | vctrs_vctr,double | EQ_OC - Weapons authorized for full-time sworn officers/deputies: OC spray/foam | stata |
| `EQ_CHEM` | vctrs_vctr,double | EQ_CHEM - Weapons authorized for full-time sworn officers/deputies: Chemical age | stata |
| `EQ_BTN` | vctrs_vctr,double | EQ_BTN - Weapons authorized for full-time sworn officers/deputies: Baton | stata |
| `EQ_BLNT` | vctrs_vctr,double | EQ_BLNT - Weapons authorized for full-time sworn officers/deputies: Blunt force | stata |
| `EQ_CED` | vctrs_vctr,double | EQ_CED - Weapons authorized for full-time sworn officers/deputies: Conducted ene | stata |
| `EQ_OTH` | vctrs_vctr,double | EQ_OTH - Weapons authorized for full-time sworn officers/deputies: Other | stata |
| `EQ_OTH_SPEC` | character | EQ_OTH_SPEC - EQ_OTH_SPEC specify text [truncated by ICPSR] | stata |
| `EQ_VID_FIXED` | vctrs_vctr,double | EQ_VID_FIXED - Number of video cameras were operated by your agency on a REGULAR | stata |
| `EQ_VID_MOBILE` | vctrs_vctr,double | EQ_VID_MOBILE - Number of video cameras were operated by your agency on a REGULA | stata |
| `EQ_VID_DRONE` | vctrs_vctr,double | EQ_VID_DRONE - Number of video cameras were operated by your agency on a REGULAR | stata |
| `EQ_VID_CAR` | vctrs_vctr,double | EQ_VID_CAR - Number of video cameras were operated by your agency on a REGULAR b | stata |
| `EQ_VID_BWC` | vctrs_vctr,double | EQ_VID_BWC - Number of video cameras were operated by your agency on a REGULAR b | stata |
| `EQ_VID_WEAP` | vctrs_vctr,double | EQ_VID_WEAP - Number of video cameras were operated by your agency on a REGULAR | stata |
| `K9_HAND` | vctrs_vctr,double | K9_HAND - Number of K-9 handlers employed as of December 31, 2020 | stata |
| `K9_DOG` | vctrs_vctr,double | K9_DOG - Number of K-9s employed as of December 31, 2020 | stata |
| `K9_BOMB` | vctrs_vctr,double | K9_BOMB - K-9 activities: Bomb/explosive detecting | stata |
| `K9_CADAVER` | vctrs_vctr,double | K9_CADAVER - K-9 activities: Cadaver | stata |
| `K9_DRUG` | vctrs_vctr,double | K9_DRUG - K-9 activities: Drug detecting | stata |
| `K9_INDV` | vctrs_vctr,double | K9_INDV - K-9 activities: Person trailing | stata |
| `K9_GEN` | vctrs_vctr,double | K9_GEN - K-9 activities: General enforcement (e.g., patrol, traffic enforcement, | stata |
| `K9_OTH` | vctrs_vctr,double | K9_OTH - K-9 activities: Other | stata |
| `K9_OTH_SPEC` | character | K9_OTH_SPEC - K9_OTH specify text | stata |
| `CP_WEB` | vctrs_vctr,double | CP_WEB - Technology: Agency maintains a website | stata |
| `CP_SM` | vctrs_vctr,double | CP_SM - Technology: Agency uses social media to communicate with the public | stata |
| `TECH_TYP_CAD` | vctrs_vctr,double | TECH_TYP_CAD - Technology used on a REGULAR basis: Computer aided dispatch (CAD) | stata |
| `TECH_TYP_RMS` | vctrs_vctr,double | TECH_TYP_RMS - Technology used on a REGULAR basis: Record management systems (RM | stata |
| `TECH_TYP_AFIS` | vctrs_vctr,double | TECH_TYP_AFIS - Technology used on a REGULAR basis: Automated Fingerprint Identi | stata |
| `TECH_TYP_GIS` | vctrs_vctr,double | TECH_TYP_GIS - Technology used on a REGULAR basis: Geographic information system | stata |
| `TECH_TYP_FACEREC` | vctrs_vctr,double | TECH_TYP_FACEREC - Technology used on a REGULAR basis: Facial recognition | stata |
| `TECH_TYP_INFR` | vctrs_vctr,double | TECH_TYP_INFR - Technology used on a REGULAR basis: Infrared (thermal) imagers | stata |
| `TECH_TYP_LPR` | vctrs_vctr,double | TECH_TYP_LPR - Technology used on a REGULAR basis: License plate readers (LPR) | stata |
| `TECH_TYP_TIREDFL` | vctrs_vctr,double | TECH_TYP_TIREDFL - Technology used on a REGULAR basis: Tire deflation devices | stata |
| `TECH_TYP_GUNSHOT` | vctrs_vctr,double | TECH_TYP_GUNSHOT - Technology used on a REGULAR basis: Gunshot detection (e.g., | stata |
| `TECH_TYP_TRACE` | vctrs_vctr,double | TECH_TYP_TRACE - Technology used on a REGULAR basis: Firearm tracing (e.g., eTra | stata |
| `TECH_TYP_BALL` | vctrs_vctr,double | TECH_TYP_BALL - Technology used on a REGULAR basis: Ballistic imaging (e.g., NIB | stata |
| `DATA_BUDGET` | vctrs_vctr,double | DATA_BUDGET - Agency data use: Budget allocation | stata |
| `DATA_HSA` | vctrs_vctr,double | DATA_HSA - Agency data use: Hot spot analysis | stata |
| `DATA_INTEL` | vctrs_vctr,double | DATA_INTEL - Agency data use: Intelligence analysis | stata |
| `DATA_PATROL` | vctrs_vctr,double | DATA_PATROL - Agency data use: Patrol allocation | stata |
| `DATA_PRED` | vctrs_vctr,double | DATA_PRED - Agency data use: Predictive policing (i.e., using computer model to | stata |
| `DATA_SNA` | vctrs_vctr,double | DATA_SNA - Agency data use: Social network analysis | stata |
| `DATA_TARG` | vctrs_vctr,double | DATA_TARG - Agency data use: Targeted enforcement | stata |
| `POL_CONDUCT` | vctrs_vctr,double | POL_CONDUCT - Agency has written policy or procedural directives on: Code of con | stata |
| `POL_MAXHRS` | vctrs_vctr,double | POL_MAXHRS - Agency has written policy or procedural directives on: Maximum work | stata |
| `POL_MAXHRS_SPC` | vctrs_vctr,double | POL_MAXHRS_SPC - POL_MAXHRS specify between 0 and 24 hours | stata |
| `POL_OFFDTY` | vctrs_vctr,double | POL_OFFDTY - Agency has written policy or procedural directives on: Off-duty con | stata |
| `POL_DCHG_GUN` | vctrs_vctr,double | POL_DCHG_GUN - Agency has written policy or procedural directives on: Firearm di | stata |
| `POL_DEADFORC` | vctrs_vctr,double | POL_DEADFORC - Agency has written policy or procedural directives on: Use of dea | stata |
| `POL_LESSLETHAL` | vctrs_vctr,double | POL_LESSLETHAL - Agency has written policy or procedural directives on: Use of l | stata |
| `POL_DOMDISP` | vctrs_vctr,double | POL_DOMDISP - Agency has written policy or procedural directives on: Domestic di | stata |
| `POL_HOMELESS` | vctrs_vctr,double | POL_HOMELESS - Agency has written policy or procedural directives on: Homeless p | stata |
| `POL_JUV` | vctrs_vctr,double | POL_JUV - Agency has written policy or procedural directives on: Juveniles | stata |
| `POL_MENTILL` | vctrs_vctr,double | POL_MENTILL - Agency has written policy or procedural directives on: Mentally il | stata |
| `POL_DEVDISABLE` | vctrs_vctr,double | POL_DEVDISABLE - Agency has written policy or procedural directives on: Persons | stata |
| `POL_ACTSHOOT` | vctrs_vctr,double | POL_ACTSHOOT - Agency has written policy or procedural directives on: Active sho | stata |
| `POL_BWC` | vctrs_vctr,double | POL_BWC - Agency has written policy or procedural directives on: Body-worn camer | stata |
| `POL_IMMSTAT` | vctrs_vctr,double | POL_IMMSTAT - Agency has written policy or procedural directives on: Checking on | stata |
| `POL_COMPL` | vctrs_vctr,double | POL_COMPL - Agency has written policy or procedural directives on: Civilian comp | stata |
| `POL_COVID` | vctrs_vctr,double | POL_COVID - Agency has written policy or procedural directives on: Coronavirus ( | stata |
| `POL_IMMDET` | vctrs_vctr,double | POL_IMMDET - Agency has written policy or procedural directives on: Detaining fe | stata |
| `POL_INCUSDTH` | vctrs_vctr,double | POL_INCUSDTH - Agency has written policy or procedural directives on: In-custody | stata |
| `POL_MASSDEM` | vctrs_vctr,double | POL_MASSDEM - Agency has written policy or procedural directives on: Mass demons | stata |
| `POL_MVSTOP` | vctrs_vctr,double | POL_MVSTOP - Agency has written policy or procedural directives on: Motor vehicl | stata |
| `POL_PRISTRP` | vctrs_vctr,double | POL_PRISTRP - Agency has written policy or procedural directives on: Prisoner tr | stata |
| `POL_RACPROF` | vctrs_vctr,double | POL_RACPROF - Agency has written policy or procedural directives on: Racial prof | stata |
| `POL_REPUOF` | vctrs_vctr,double | POL_REPUOF - Agency has written policy or procedural directives on: Reporting us | stata |
| `POL_SOCMED` | vctrs_vctr,double | POL_SOCMED - Agency has written policy or procedural directives on: Social media | stata |
| `POL_STFRSK` | vctrs_vctr,double | POL_STFRSK - Agency has written policy or procedural directives on: Stop and fri | stata |
| `POL_STRPSRCH` | vctrs_vctr,double | POL_STRPSRCH - Agency has written policy or procedural directives on: Strip sear | stata |
| `POL_VEHPURS` | vctrs_vctr,double | POL_VEHPURS - Agency has written policy or procedural directives on: Vehicle pur | stata |
| `COVID_OFFSELFSCREEN` | vctrs_vctr,double | COVID_OFFSELFSCREEN - COVID practices: Officers/Deputies self-screen before work | stata |
| `COVID_OFFPPEPATROL` | vctrs_vctr,double | COVID_OFFPPEPATROL - COVID practices: Officers/Deputies wearing PPE during routi | stata |
| `COVID_OFFPPESTATION` | vctrs_vctr,double | COVID_OFFPPESTATION - COVID practices: Officers or Deputies and/or staff wearing | stata |
| `COVID_OFFTEST` | vctrs_vctr,double | COVID_OFFTEST - COVID practices: Routine COVID-19 officer/deputy testing | stata |
| `COVID_OFFEXP` | vctrs_vctr,double | COVID_OFFEXP - COVID practices: Procedures for officers/deputies if exposed to C | stata |
| `COVID_CLEANSTN` | vctrs_vctr,double | COVID_CLEANSTN - COVID practices: Increased cleaning/disinfecting station and co | stata |
| `COVID_CLEANCAR` | vctrs_vctr,double | COVID_CLEANCAR - COVID practices: Increased cleaning/disinfecting patrol cars | stata |
| `COVID_CUSTPPE` | vctrs_vctr,double | COVID_CUSTPPE - COVID practices: Providing PPE to persons taken into custody | stata |
| `COVID_CUSTSYMP` | vctrs_vctr,double | COVID_CUSTSYMP - COVID practices: Procedures for intake processing for persons w | stata |
| `COVID_INMCLEANSUP` | vctrs_vctr,double | COVID_INMCLEANSUP - COVID practices: Providing cleaning/disinfectant supplies to | stata |
| `COVID_INMCLEANAREA` | vctrs_vctr,double | COVID_INMCLEANAREA - COVID practices: Increased cleaning/disinfecting in inmate | stata |
| `COVID_OFFPPEJAIL` | vctrs_vctr,double | COVID_OFFPPEJAIL - COVID practices: Staff wearing PPE in jail (Sheriff only) | stata |
| `COVID_INMPPE` | vctrs_vctr,double | COVID_INMPPE - COVID practices: Providing PPE to inmates (Sheriff only) | stata |
| `COVID_CHANGE_FOOTPATROL_POLICY` | vctrs_vctr,double | COVID_CHANGE_FOOTPATROL_POLICY - COVID change in foot patrol: Yes, change in pol | stata |
| `COVID_CHANGE_FOOTPATROL_PRACTICE` | vctrs_vctr,double | COVID_CHANGE_FOOTPATROL_PRACTICE - COVID change in foot patrol: Yes, change in p | stata |
| `COVID_CHANGE_FOOTPATROL_NOCHANGE` | vctrs_vctr,double | COVID_CHANGE_FOOTPATROL_NOCHANGE - COVID change in foot patrol: No change | stata |
| `COVID_CHANGE_CARPATROL_POLICY` | vctrs_vctr,double | COVID_CHANGE_CARPATROL_POLICY - COVID change in car patrol: Yes, change in polic | stata |
| `COVID_CHANGE_CARPATROL_PRACTICE` | vctrs_vctr,double | COVID_CHANGE_CARPATROL_PRACTICE - COVID change in car patrol: Yes, change in pra | stata |
| `COVID_CHANGE_CARPATROL_NOCHANGE` | vctrs_vctr,double | COVID_CHANGE_CARPATROL_NOCHANGE - COVID change in car patrol: No change | stata |
| `COVID_CHANGE_ARREST_POLICY` | vctrs_vctr,double | COVID_CHANGE_ARREST_POLICY - COVID change in arrests for less-serious offenses: | stata |
| `COVID_CHANGE_ARREST_PRACTICE` | vctrs_vctr,double | COVID_CHANGE_ARREST_PRACTICE - COVID change in arrests for less-serious offenses | stata |
| `COVID_CHANGE_ARREST_NOCHANGE` | vctrs_vctr,double | COVID_CHANGE_ARREST_NOCHANGE - COVID change in arrests for less-serious offenses | stata |
| `COVID_CHANGE_INVEST_POLICY` | vctrs_vctr,double | COVID_CHANGE_INVEST_POLICY - COVID change in investigations, including in-person | stata |
| `COVID_CHANGE_INVEST_PRACTICE` | vctrs_vctr,double | COVID_CHANGE_INVEST_PRACTICE - COVID change in investigations, including in-pers | stata |
| `COVID_CHANGE_INVEST_NOCHANGE` | vctrs_vctr,double | COVID_CHANGE_INVEST_NOCHANGE - COVID change in investigations, including in-pers | stata |
| `COVID_CHANGE_VICSERV_POLICY` | vctrs_vctr,double | COVID_CHANGE_VICSERV_POLICY - COVID change in victim services: Yes, change in po | stata |
| `COVID_CHANGE_VICSERV_PRACTICE` | vctrs_vctr,double | COVID_CHANGE_VICSERV_PRACTICE - COVID change in victim services: Yes, change in | stata |
| `COVID_CHANGE_VICSERV_NOCHANGE` | vctrs_vctr,double | COVID_CHANGE_VICSERV_NOCHANGE - COVID change in victim services: No change | stata |
| `COVID_CHANGE_COMMUNITY_POLICY` | vctrs_vctr,double | COVID_CHANGE_COMMUNITY_POLICY - COVID change in in-person community engagement e | stata |
| `COVID_CHANGE_COMMUNITY_PRACTICE` | vctrs_vctr,double | COVID_CHANGE_COMMUNITY_PRACTICE - COVID change in in-person community engagement | stata |
| `COVID_CHANGE_COMMUNITY_NOCHANGE` | vctrs_vctr,double | COVID_CHANGE_COMMUNITY_NOCHANGE - COVID change in in-person community engagement | stata |
| `COVID_CHANGE_OTH_POLICY` | vctrs_vctr,double | COVID_CHANGE_OTH_POLICY - COVID change in other functional area: Yes, change in | stata |
| `COVID_CHANGE_OTH_PRACTICE` | vctrs_vctr,double | COVID_CHANGE_OTH_PRACTICE - COVID change in other functional area: Yes, change i | stata |
| `COVID_CHANGE_OTH_NOCHANGE` | vctrs_vctr,double | COVID_CHANGE_OTH_NOCHANGE - COVID change in other functional area: No change | stata |
| `COVID_CHANGE_OTH_SPEC` | character | COVID_CHANGE_OTH_SPEC - COVID change in other functional area: Specify [truncate | stata |
| `IMMSTAT_PEDSTP` | vctrs_vctr,double | IMMSTAT_PEDSTP - Full-time sworn officers/deputies instructed to check immigrati | stata |
| `IMMSTAT_TRFSTP` | vctrs_vctr,double | IMMSTAT_TRFSTP - Full-time sworn officers/deputies instructed to check immigrati | stata |
| `IMMSTAT_MISD` | vctrs_vctr,double | IMMSTAT_MISD - Full-time sworn officers/deputies instructed to check immigration | stata |
| `IMMSTAT_FEL` | vctrs_vctr,double | IMMSTAT_FEL - Full-time sworn officers/deputies instructed to check immigration | stata |
| `IMMSTAT_FEDVIO` | vctrs_vctr,double | IMMSTAT_FEDVIO - Full-time sworn officers/deputies instructed to check immigrati | stata |
| `IMMSTAT_HMLD` | vctrs_vctr,double | IMMSTAT_HMLD - Full-time sworn officers/deputies verify immigration status with | stata |
| `IMMSTAT_POL` | vctrs_vctr,double | IMMSTAT_POL - Reasons officers DO NOT check immigration status of persons detain | stata |
| `IMMSTAT_STLEG` | vctrs_vctr,double | IMMSTAT_STLEG - Reasons officers/deputies DO NOT check immigration status of per | stata |
| `IMMSTAT_FLD` | vctrs_vctr,double | IMMSTAT_FLD - Reasons officers/deputies DO NOT check immigration status of perso | stata |
| `IMMSTAT_VICT` | vctrs_vctr,double | IMMSTAT_VICT - Reasons officers/deputies DO NOT check immigration status of pers | stata |
| `IMMSTAT_RACPROF` | vctrs_vctr,double | IMMSTAT_RACPROF - Reasons officers/deputies DO NOT check immigration status of p | stata |
| `IMMSTAT_PUBTRUST` | vctrs_vctr,double | IMMSTAT_PUBTRUST - Reasons officers/deputies DO NOT check immigration status of | stata |
| `IMMSTAT_OTH` | vctrs_vctr,double | IMMSTAT_OTH - Reasons officers/deputies DO NOT check immigration status of perso | stata |
| `IMMSTAT_OTH_SPEC` | character | IMMSTAT_OTH_SPEC - IMMSTAT_OTH specify text | stata |
| `TECH_EIS` | vctrs_vctr,double | TECH_EIS - Agency has an operational computer-based personnel performance monito | stata |
| `COMPL_ALL_SUST` | vctrs_vctr,double | COMPL_ALL_SUST - Number of all citizen complaints: Sustained | stata |
| `COMPL_UOF_SUST` | vctrs_vctr,double | COMPL_UOF_SUST - Number of use of force complaints: Sustained | stata |
| `COMPL_ALL_OTH` | vctrs_vctr,double | COMPL_ALL_OTH - Number of all citizen complaints: Other disposition | stata |
| `COMPL_UOF_OTH` | vctrs_vctr,double | COMPL_UOF_OTH - Number of use of force complaints: Other disposition | stata |
| `COMPL_ALL_PEND` | vctrs_vctr,double | COMPL_ALL_PEND - Number of all citizen complaints: Pending | stata |
| `COMPL_UOF_PEND` | vctrs_vctr,double | COMPL_UOF_PEND - Number of use of force complaints: Pending | stata |
| `COMPL_ALL_TOT` | vctrs_vctr,double | COMPL_ALL_TOT - Total number of all citizen complaints in 2020 | stata |
| `COMPL_UOF_TOT` | vctrs_vctr,double | COMPL_UOF_TOT - Total number of all use of force complaints in 2020 | stata |
| `CIV_COMPL` | vctrs_vctr,double | CIV_COMPL - Civilian complaint review board or agency in jurisdiction that revie | stata |
| `POL_INV_DCHG_GUN` | vctrs_vctr,double | POL_INV_DCHG_GUN - Agency requires an external investigation in the following si | stata |
| `POL_INV_INJURY` | vctrs_vctr,double | POL_INV_INJURY - Agency requires an external investigation in the following situ | stata |
| `POL_INV_DTH` | vctrs_vctr,double | POL_INV_DTH - Agency requires an external investigation in the following situati | stata |
| `POL_INV_ICD` | vctrs_vctr,double | POL_INV_ICD - Agency requires an external investigation in the following situati | stata |
| `MODE` | vctrs_vctr,double | Mode - Survey mode | stata |
| `INELIG` | vctrs_vctr,double | Inelig - Agency Ineligibility for LEMAS | stata |
| `PRIMARYPOP2020` | vctrs_vctr,double | PRIMARYPOP2020 - Census primary population 2020 | stata |
| `SECONDARYPOP2020` | vctrs_vctr,double | SECONDARYPOP2020 - Census secondary population 2020 | stata |
| `EDIT_OPBUDGET_2019` | vctrs_vctr,double | Edit flag for agency's total operating budget for the fiscal year that included | stata |
| `EDIT_OPBUDGET_2020` | vctrs_vctr,double | Edit flag for agency's total operating budget for the fiscal year that included | stata |
| `EDIT_FTSWORN` | vctrs_vctr,double | FTSWORN Imputation Flag | stata |
| `NR_WEIGHT_FACTOR` | numeric | Nonresponse Adjustment | stata |
| `ANALYSISWEIGHT` | numeric | Final Analysis Weight | stata |
| `COMPLETE` | vctrs_vctr,double | Survey Complete | stata |

## `raw_data/protests/black_mpv_xy_summer2020.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `b` | numeric | Coefficient estimate | auto |
| `black_mpv_lat1` | numeric | 1 black_mpv_lat | stata |
| `black_mpv_lon1` | numeric | 1 black_mpv_lon | stata |
| `black_mpv_lat2` | numeric | 2 black_mpv_lat | stata |
| `black_mpv_lon2` | numeric | 2 black_mpv_lon | stata |
| `black_mpv_lat3` | numeric | 3 black_mpv_lat | stata |
| `black_mpv_lon3` | numeric | 3 black_mpv_lon | stata |
| `black_mpv_lat4` | numeric | 4 black_mpv_lat | stata |
| `black_mpv_lon4` | numeric | 4 black_mpv_lon | stata |
| `black_mpv_lat5` | numeric | 5 black_mpv_lat | stata |
| `black_mpv_lon5` | numeric | 5 black_mpv_lon | stata |
| `black_mpv_lat6` | numeric | 6 black_mpv_lat | stata |
| `black_mpv_lon6` | numeric | 6 black_mpv_lon | stata |
| `black_mpv_lat7` | numeric | 7 black_mpv_lat | stata |
| `black_mpv_lon7` | numeric | 7 black_mpv_lon | stata |
| `black_mpv_lat8` | numeric | 8 black_mpv_lat | stata |
| `black_mpv_lon8` | numeric | 8 black_mpv_lon | stata |
| `black_mpv_lat9` | numeric | 9 black_mpv_lat | stata |
| `black_mpv_lon9` | numeric | 9 black_mpv_lon | stata |
| `black_mpv_lat10` | numeric | 10 black_mpv_lat | stata |
| `black_mpv_lon10` | numeric | 10 black_mpv_lon | stata |
| `black_mpv_lat11` | numeric | 11 black_mpv_lat | stata |
| `black_mpv_lon11` | numeric | 11 black_mpv_lon | stata |
| `black_mpv_lat12` | numeric | 12 black_mpv_lat | stata |
| `black_mpv_lon12` | numeric | 12 black_mpv_lon | stata |
| `black_mpv_lat13` | numeric | 13 black_mpv_lat | stata |
| `black_mpv_lon13` | numeric | 13 black_mpv_lon | stata |
| `black_mpv_lat14` | numeric | 14 black_mpv_lat | stata |
| `black_mpv_lon14` | numeric | 14 black_mpv_lon | stata |
| `black_mpv_lat15` | numeric | 15 black_mpv_lat | stata |
| `black_mpv_lon15` | numeric | 15 black_mpv_lon | stata |
| `black_mpv_lat16` | numeric | 16 black_mpv_lat | stata |
| `black_mpv_lon16` | numeric | 16 black_mpv_lon | stata |
| `black_mpv_lat17` | numeric | 17 black_mpv_lat | stata |
| `black_mpv_lon17` | numeric | 17 black_mpv_lon | stata |
| `black_mpv_lat18` | numeric | 18 black_mpv_lat | stata |
| `black_mpv_lon18` | numeric | 18 black_mpv_lon | stata |
| `black_mpv_lat19` | numeric | 19 black_mpv_lat | stata |
| `black_mpv_lon19` | numeric | 19 black_mpv_lon | stata |
| `black_mpv_lat20` | numeric | 20 black_mpv_lat | stata |
| `black_mpv_lon20` | numeric | 20 black_mpv_lon | stata |
| `black_mpv_lat21` | numeric | 21 black_mpv_lat | stata |
| `black_mpv_lon21` | numeric | 21 black_mpv_lon | stata |
| `black_mpv_lat22` | numeric | 22 black_mpv_lat | stata |
| `black_mpv_lon22` | numeric | 22 black_mpv_lon | stata |
| `black_mpv_lat23` | numeric | 23 black_mpv_lat | stata |
| `black_mpv_lon23` | numeric | 23 black_mpv_lon | stata |
| `black_mpv_lat24` | numeric | 24 black_mpv_lat | stata |
| `black_mpv_lon24` | numeric | 24 black_mpv_lon | stata |
| `black_mpv_lat25` | numeric | 25 black_mpv_lat | stata |
| `black_mpv_lon25` | numeric | 25 black_mpv_lon | stata |
| `black_mpv_lat26` | numeric | 26 black_mpv_lat | stata |
| `black_mpv_lon26` | numeric | 26 black_mpv_lon | stata |
| `black_mpv_lat27` | numeric | 27 black_mpv_lat | stata |
| `black_mpv_lon27` | numeric | 27 black_mpv_lon | stata |
| `black_mpv_lat28` | numeric | 28 black_mpv_lat | stata |
| `black_mpv_lon28` | numeric | 28 black_mpv_lon | stata |
| `black_mpv_lat29` | numeric | 29 black_mpv_lat | stata |
| `black_mpv_lon29` | numeric | 29 black_mpv_lon | stata |
| `black_mpv_lat30` | numeric | 30 black_mpv_lat | stata |
| `black_mpv_lon30` | numeric | 30 black_mpv_lon | stata |
| `black_mpv_lat31` | numeric | 31 black_mpv_lat | stata |
| `black_mpv_lon31` | numeric | 31 black_mpv_lon | stata |
| `black_mpv_lat32` | numeric | 32 black_mpv_lat | stata |
| `black_mpv_lon32` | numeric | 32 black_mpv_lon | stata |
| `black_mpv_lat33` | numeric | 33 black_mpv_lat | stata |
| `black_mpv_lon33` | numeric | 33 black_mpv_lon | stata |
| `black_mpv_lat34` | numeric | 34 black_mpv_lat | stata |
| `black_mpv_lon34` | numeric | 34 black_mpv_lon | stata |
| `black_mpv_lat35` | numeric | 35 black_mpv_lat | stata |
| `black_mpv_lon35` | numeric | 35 black_mpv_lon | stata |
| `black_mpv_lat36` | numeric | 36 black_mpv_lat | stata |
| `black_mpv_lon36` | numeric | 36 black_mpv_lon | stata |
| `black_mpv_lat37` | numeric | 37 black_mpv_lat | stata |
| `black_mpv_lon37` | numeric | 37 black_mpv_lon | stata |
| `black_mpv_lat38` | numeric | 38 black_mpv_lat | stata |
| `black_mpv_lon38` | numeric | 38 black_mpv_lon | stata |
| `black_mpv_lat39` | numeric | 39 black_mpv_lat | stata |
| `black_mpv_lon39` | numeric | 39 black_mpv_lon | stata |
| `black_mpv_lat40` | numeric | 40 black_mpv_lat | stata |
| `black_mpv_lon40` | numeric | 40 black_mpv_lon | stata |
| `black_mpv_lat41` | numeric | 41 black_mpv_lat | stata |
| `black_mpv_lon41` | numeric | 41 black_mpv_lon | stata |
| `black_mpv_lat42` | numeric | 42 black_mpv_lat | stata |
| `black_mpv_lon42` | numeric | 42 black_mpv_lon | stata |
| `black_mpv_lat43` | numeric | 43 black_mpv_lat | stata |
| `black_mpv_lon43` | numeric | 43 black_mpv_lon | stata |
| `black_mpv_lat44` | numeric | 44 black_mpv_lat | stata |
| `black_mpv_lon44` | numeric | 44 black_mpv_lon | stata |
| `black_mpv_lat45` | numeric | 45 black_mpv_lat | stata |
| `black_mpv_lon45` | numeric | 45 black_mpv_lon | stata |
| `black_mpv_lat46` | numeric | 46 black_mpv_lat | stata |
| `black_mpv_lon46` | numeric | 46 black_mpv_lon | stata |
| `black_mpv_lat47` | numeric | 47 black_mpv_lat | stata |
| `black_mpv_lon47` | numeric | 47 black_mpv_lon | stata |
| `black_mpv_lat48` | numeric | 48 black_mpv_lat | stata |
| `black_mpv_lon48` | numeric | 48 black_mpv_lon | stata |
| `black_mpv_lat49` | numeric | 49 black_mpv_lat | stata |
| `black_mpv_lon49` | numeric | 49 black_mpv_lon | stata |

## `raw_data/protests/county_covariates2020.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `black` | numeric | Black population count or share | auto |
| `hispanic` | numeric | Hispanic population count or share | auto |
| `white` | numeric | White population count or share | auto |
| `total` | numeric | Total count | auto |
| `nonhispanic` | numeric | Non-Hispanic population share | auto |
| `median_income` | numeric | Median household income | auto |
| `male_15_17` | numeric | Male population aged 15-17 | auto |
| `statefp` | numeric | STATEFP | stata |
| `countyfp` | numeric | COUNTYFP | stata |
| `name` | character | NAME | stata |
| `year` | numeric | Calendar year | auto |
| `geoid` | numeric | Census GEOID | auto |

## `raw_data/protests/crime_2019.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ori9` | character | Originating Agency Identifier (ORI, 9-char) | auto |
| `year` | numeric | Calendar year | auto |
| `cr_murder` | numeric | (sum) cr_murder | stata |
| `cr_violent` | numeric | (sum) cr_violent | stata |
| `cr_property` | numeric | (sum) cr_property | stata |
| `population` | numeric | (first) population | stata |
| `state_abb` | character | (first) state_abb | stata |
| `latitude` | numeric | (first) latitude | stata |
| `longitude` | numeric | (first) longitude | stata |
| `mpls_latitude` | numeric | Minneapolis latitude | auto |
| `mpls_longitude` | numeric | Minneapolis longitude | auto |

## `raw_data/protests/cw_county_station.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `geoid` | numeric | GEOID | stata |
| `closest_station_id` | character | Nearest NOAA weather station ID | auto |

## `raw_data/protests/cw_ori9_county.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ori9` | character | Originating Agency Identifier (ORI, 9-char) | auto |
| `geoid` | character | GEOID | stata |

## `raw_data/protests/final_cw_ori9_stations.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ori9` | character | Originating Agency Identifier (ORI, 9-char) | auto |
| `distance` | numeric | Distance to nearest weather station (km) | auto |
| `closest_station_id` | character | Nearest NOAA weather station ID | auto |

## `raw_data/protests/final_lemas_2020.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ori9` | character | 9-digit Originating Agency Identifier (ORI) number | stata |
| `opbudget_2019` | vctrs_vctr,double | OPBUDGET_2019 - Agency's total operating budget for the fiscal year that include | stata |
| `opbudget` | vctrs_vctr,double | OPBUDGET - Agency's total operating budget for the fiscal year that included Dec | stata |
| `eq_vid_fixed` | vctrs_vctr,double | EQ_VID_FIXED - Number of video cameras were operated by your agency on a REGULAR | stata |
| `eq_vid_mobile` | vctrs_vctr,double | EQ_VID_MOBILE - Number of video cameras were operated by your agency on a REGULA | stata |
| `eq_vid_drone` | vctrs_vctr,double | EQ_VID_DRONE - Number of video cameras were operated by your agency on a REGULAR | stata |
| `eq_vid_car` | vctrs_vctr,double | EQ_VID_CAR - Number of video cameras were operated by your agency on a REGULAR b | stata |
| `eq_vid_bwc` | vctrs_vctr,double | EQ_VID_BWC - Number of video cameras were operated by your agency on a REGULAR b | stata |
| `eq_vid_weap` | vctrs_vctr,double | EQ_VID_WEAP - Number of video cameras were operated by your agency on a REGULAR | stata |
| `tech_typ_cad` | vctrs_vctr,double | TECH_TYP_CAD - Technology used on a REGULAR basis: Computer aided dispatch (CAD) | stata |
| `tech_typ_rms` | vctrs_vctr,double | TECH_TYP_RMS - Technology used on a REGULAR basis: Record management systems (RM | stata |
| `tech_typ_afis` | vctrs_vctr,double | TECH_TYP_AFIS - Technology used on a REGULAR basis: Automated Fingerprint Identi | stata |
| `tech_typ_gis` | vctrs_vctr,double | TECH_TYP_GIS - Technology used on a REGULAR basis: Geographic information system | stata |
| `tech_typ_facerec` | vctrs_vctr,double | TECH_TYP_FACEREC - Technology used on a REGULAR basis: Facial recognition | stata |
| `tech_typ_infr` | vctrs_vctr,double | TECH_TYP_INFR - Technology used on a REGULAR basis: Infrared (thermal) imagers | stata |
| `tech_typ_lpr` | vctrs_vctr,double | TECH_TYP_LPR - Technology used on a REGULAR basis: License plate readers (LPR) | stata |
| `tech_typ_tiredfl` | vctrs_vctr,double | TECH_TYP_TIREDFL - Technology used on a REGULAR basis: Tire deflation devices | stata |
| `tech_typ_gunshot` | vctrs_vctr,double | TECH_TYP_GUNSHOT - Technology used on a REGULAR basis: Gunshot detection (e.g., | stata |
| `tech_typ_trace` | vctrs_vctr,double | TECH_TYP_TRACE - Technology used on a REGULAR basis: Firearm tracing (e.g., eTra | stata |
| `tech_typ_ball` | vctrs_vctr,double | TECH_TYP_BALL - Technology used on a REGULAR basis: Ballistic imaging (e.g., NIB | stata |
| `pol_conduct` | vctrs_vctr,double | POL_CONDUCT - Agency has written policy or procedural directives on: Code of con | stata |
| `pol_deadforc` | vctrs_vctr,double | POL_DEADFORC - Agency has written policy or procedural directives on: Use of dea | stata |
| `pol_lesslethal` | vctrs_vctr,double | POL_LESSLETHAL - Agency has written policy or procedural directives on: Use of l | stata |
| `pol_domdisp` | vctrs_vctr,double | POL_DOMDISP - Agency has written policy or procedural directives on: Domestic di | stata |
| `pol_homeless` | vctrs_vctr,double | POL_HOMELESS - Agency has written policy or procedural directives on: Homeless p | stata |
| `pol_juv` | vctrs_vctr,double | POL_JUV - Agency has written policy or procedural directives on: Juveniles | stata |
| `pol_mentill` | vctrs_vctr,double | POL_MENTILL - Agency has written policy or procedural directives on: Mentally il | stata |
| `pol_bwc` | vctrs_vctr,double | POL_BWC - Agency has written policy or procedural directives on: Body-worn camer | stata |
| `pol_compl` | vctrs_vctr,double | POL_COMPL - Agency has written policy or procedural directives on: Civilian comp | stata |
| `year` | numeric | Calendar year | auto |
| `police_dpt` | numeric | Police department indicator | auto |
| `any_tech_gunshot` | numeric | Agency uses gunshot detection technology | auto |
| `any_tech_facerec` | numeric | Agency uses facial recognition | auto |
| `any_tech_rms` | numeric | Agency uses records management system | auto |
| `any_tech_cad` | numeric | Agency uses computer-aided dispatch | auto |
| `any_tech_infr` | numeric | Agency uses infrared technology | auto |
| `any_tech_lpr` | numeric | Agency uses license plate readers | auto |
| `any_vid_bwc` | numeric | Agency uses body-worn camera video | auto |
| `any_vid_car` | numeric | Agency uses in-car camera video | auto |
| `any_vid_fixed` | numeric | Agency uses fixed surveillance cameras | auto |
| `any_vid_mobile` | numeric | Agency uses mobile surveillance | auto |
| `any_vid_weap` | numeric | Agency uses weapon-mounted cameras | auto |
| `any_vid_drone` | numeric | Agency uses drone video | auto |
| `any_conduct` | numeric | Agency has conduct policy | auto |
| `any_deadforc` | numeric | Agency has deadly force policy | auto |
| `any_lesslethal` | numeric | Agency has less-lethal force policy | auto |
| `any_domdisp` | numeric | Agency has domestic dispute policy | auto |
| `any_homeless` | numeric | Agency has homeless policy | auto |
| `any_juv` | numeric | Agency has juvenile policy | auto |
| `any_bwc` | numeric | Agency has body-worn cameras | auto |
| `any_mentill` | numeric | Agency has mental illness policy | auto |
| `any_compl` | numeric | Agency has complaint tracking | auto |
| `geoid` | numeric | GEOID | stata |
| `distance` | numeric | Distance to nearest weather station (km) | auto |
| `closest_station_id` | character | Nearest NOAA weather station ID | auto |
| `event` | numeric | (sum) blank | stata |
| `wth_prcp` | numeric | (sum) wth_prcp | stata |
| `prot_wth_prcp` | numeric | (sum) prot_wth_prcp | stata |
| `wth_snow` | numeric | (sum) wth_snow | stata |
| `prot_wth_snow` | numeric | (sum) prot_wth_snow | stata |
| `wth_snwd` | numeric | (sum) wth_snwd | stata |
| `prot_wth_snwd` | numeric | (sum) prot_wth_snwd | stata |
| `wth_tavg` | numeric | (mean) wth_tavg | stata |
| `prot_wth_tavg` | numeric | (mean) prot_wth_tavg | stata |
| `wth_tmin` | numeric | (mean) wth_tmin | stata |
| `prot_wth_tmin` | numeric | (mean) prot_wth_tmin | stata |
| `wth_tmax` | numeric | (mean) wth_tmax | stata |
| `prot_wth_tmax` | numeric | (mean) prot_wth_tmax | stata |
| `wth_rhav` | numeric | (mean) wth_rhav | stata |
| `prot_wth_rhav` | numeric | (mean) prot_wth_rhav | stata |
| `wth_rhmn` | numeric | (mean) wth_rhmn | stata |
| `prot_wth_rhmn` | numeric | (mean) prot_wth_rhmn | stata |
| `wth_rhmx` | numeric | (mean) wth_rhmx | stata |
| `prot_wth_rhmx` | numeric | (mean) prot_wth_rhmx | stata |
| `wth_awnd` | numeric | (mean) wth_awnd | stata |
| `prot_wth_awnd` | numeric | (mean) prot_wth_awnd | stata |
| `wth_wsf2` | numeric | (mean) wth_wsf2 | stata |
| `prot_wth_wsf2` | numeric | (mean) prot_wth_wsf2 | stata |
| `wth_wdf2` | numeric | (mean) wth_wdf2 | stata |
| `prot_wth_wdf2` | numeric | (mean) prot_wth_wdf2 | stata |
| `wth_tavg_pol2` | numeric | (mean) wth_tavg_pol2 | stata |
| `wth_tmax_pol2` | numeric | (mean) wth_tmax_pol2 | stata |
| `wth_tmin_pol2` | numeric | (mean) wth_tmin_pol2 | stata |
| `wth_avgprcp_pol2` | numeric | (mean) wth_avgprcp_pol2 | stata |
| `prot_wth_tavg_pol2` | numeric | (mean) prot_wth_tavg_pol2 | stata |
| `prot_wth_tmax_pol2` | numeric | (mean) prot_wth_tmax_pol2 | stata |
| `prot_wth_tmin_pol2` | numeric | (mean) prot_wth_tmin_pol2 | stata |
| `wth_tavg_pol3` | numeric | (mean) wth_tavg_pol3 | stata |
| `wth_tmax_pol3` | numeric | (mean) wth_tmax_pol3 | stata |
| `wth_tmin_pol3` | numeric | (mean) wth_tmin_pol3 | stata |
| `prot_wth_tavg_pol3` | numeric | (mean) prot_wth_tavg_pol3 | stata |
| `prot_wth_tmax_pol3` | numeric | (mean) prot_wth_tmax_pol3 | stata |
| `prot_wth_tmin_pol3` | numeric | (mean) prot_wth_tmin_pol3 | stata |
| `wth_avgprcp` | numeric | (mean) wth_avgprcp | stata |
| `wth_tavg_bin1` | numeric | (sum) wth_tavg_bin1 | stata |
| `wth_tmax_bin1` | numeric | (sum) wth_tmax_bin1 | stata |
| `wth_tmin_bin1` | numeric | (sum) wth_tmin_bin1 | stata |
| `prot_wth_tavg_bin1` | numeric | (sum) prot_wth_tavg_bin1 | stata |
| `prot_wth_tmax_bin1` | numeric | (sum) prot_wth_tmax_bin1 | stata |
| `prot_wth_tmin_bin1` | numeric | (sum) prot_wth_tmin_bin1 | stata |
| `wth_tavg_bin2` | numeric | (sum) wth_tavg_bin2 | stata |
| `wth_tmax_bin2` | numeric | (sum) wth_tmax_bin2 | stata |
| `wth_tmin_bin2` | numeric | (sum) wth_tmin_bin2 | stata |
| `prot_wth_tavg_bin2` | numeric | (sum) prot_wth_tavg_bin2 | stata |
| `prot_wth_tmax_bin2` | numeric | (sum) prot_wth_tmax_bin2 | stata |
| `prot_wth_tmin_bin2` | numeric | (sum) prot_wth_tmin_bin2 | stata |
| `wth_tavg_bin3` | numeric | (sum) wth_tavg_bin3 | stata |
| `wth_tmax_bin3` | numeric | (sum) wth_tmax_bin3 | stata |
| `wth_tmin_bin3` | numeric | (sum) wth_tmin_bin3 | stata |
| `prot_wth_tavg_bin3` | numeric | (sum) prot_wth_tavg_bin3 | stata |
| `prot_wth_tmax_bin3` | numeric | (sum) prot_wth_tmax_bin3 | stata |
| `prot_wth_tmin_bin3` | numeric | (sum) prot_wth_tmin_bin3 | stata |
| `wth_tavg_bin4` | numeric | (sum) wth_tavg_bin4 | stata |
| `wth_tmax_bin4` | numeric | (sum) wth_tmax_bin4 | stata |
| `wth_tmin_bin4` | numeric | (sum) wth_tmin_bin4 | stata |
| `prot_wth_tavg_bin4` | numeric | (sum) prot_wth_tavg_bin4 | stata |
| `prot_wth_tmax_bin4` | numeric | (sum) prot_wth_tmax_bin4 | stata |
| `prot_wth_tmin_bin4` | numeric | (sum) prot_wth_tmin_bin4 | stata |
| `wth_tavg_bin5` | numeric | (sum) wth_tavg_bin5 | stata |
| `wth_tmax_bin5` | numeric | (sum) wth_tmax_bin5 | stata |
| `wth_tmin_bin5` | numeric | (sum) wth_tmin_bin5 | stata |
| `prot_wth_tavg_bin5` | numeric | (sum) prot_wth_tavg_bin5 | stata |
| `prot_wth_tmax_bin5` | numeric | (sum) prot_wth_tmax_bin5 | stata |
| `prot_wth_tmin_bin5` | numeric | (sum) prot_wth_tmin_bin5 | stata |
| `wth_prcp_rain` | numeric | (sum) wth_prcp_rain | stata |
| `wth_fog` | numeric | (sum) wth_fog | stata |
| `prot_wth_fog` | numeric | (sum) prot_wth_fog | stata |
| `wth_thunder` | numeric | (sum) wth_thunder | stata |
| `prot_wth_thunder` | numeric | (sum) prot_wth_thunder | stata |
| `wth_hail` | numeric | (sum) wth_hail | stata |
| `prot_wth_hail` | numeric | (sum) prot_wth_hail | stata |
| `wth_tornado` | numeric | (sum) wth_tornado | stata |
| `prot_wth_tornado` | numeric | (sum) prot_wth_tornado | stata |
| `wth_smoke` | numeric | (sum) wth_smoke | stata |
| `prot_wth_smoke` | numeric | (sum) prot_wth_smoke | stata |
| `black` | numeric | Black population count or share | auto |
| `hispanic` | numeric | Hispanic population count or share | auto |
| `white` | numeric | White population count or share | auto |
| `total` | numeric | Total count | auto |
| `nonhispanic` | numeric | Non-Hispanic population share | auto |
| `median_income` | numeric | Median household income | auto |
| `male_15_17` | numeric | Male population aged 15-17 | auto |
| `statefp` | numeric | STATEFP | stata |
| `countyfp` | numeric | COUNTYFP | stata |
| `name` | character | NAME | stata |
| `cr_murder` | numeric | (sum) cr_murder | stata |
| `cr_violent` | numeric | (sum) cr_violent | stata |
| `cr_property` | numeric | (sum) cr_property | stata |
| `population` | numeric | (first) population | stata |
| `state_abb` | character | (first) state_abb | stata |
| `latitude` | numeric | (first) latitude | stata |
| `longitude` | numeric | (first) longitude | stata |
| `mpls_latitude` | numeric | Minneapolis latitude | auto |
| `mpls_longitude` | numeric | Minneapolis longitude | auto |
| `tot_police` | numeric | Total police officers | auto |
| `tot_civilians` | numeric | Total civilian employees | auto |
| `tot_employees` | numeric | Total employees | auto |
| `mpv_lat1` | numeric | 1 mpv_lat | stata |
| `mpv_lon1` | numeric | 1 mpv_lon | stata |
| `mpv_lat2` | numeric | 2 mpv_lat | stata |
| `mpv_lon2` | numeric | 2 mpv_lon | stata |
| `mpv_lat3` | numeric | 3 mpv_lat | stata |
| `mpv_lon3` | numeric | 3 mpv_lon | stata |
| `mpv_lat4` | numeric | 4 mpv_lat | stata |
| `mpv_lon4` | numeric | 4 mpv_lon | stata |
| `mpv_lat5` | numeric | 5 mpv_lat | stata |
| `mpv_lon5` | numeric | 5 mpv_lon | stata |
| `mpv_lat6` | numeric | 6 mpv_lat | stata |
| `mpv_lon6` | numeric | 6 mpv_lon | stata |
| `mpv_lat7` | numeric | 7 mpv_lat | stata |
| `mpv_lon7` | numeric | 7 mpv_lon | stata |
| `mpv_lat8` | numeric | 8 mpv_lat | stata |
| `mpv_lon8` | numeric | 8 mpv_lon | stata |
| `mpv_lat9` | numeric | 9 mpv_lat | stata |
| `mpv_lon9` | numeric | 9 mpv_lon | stata |
| `mpv_lat10` | numeric | 10 mpv_lat | stata |
| `mpv_lon10` | numeric | 10 mpv_lon | stata |
| `mpv_lat11` | numeric | 11 mpv_lat | stata |
| `mpv_lon11` | numeric | 11 mpv_lon | stata |
| `mpv_lat12` | numeric | 12 mpv_lat | stata |
| `mpv_lon12` | numeric | 12 mpv_lon | stata |
| `mpv_lat13` | numeric | 13 mpv_lat | stata |
| `mpv_lon13` | numeric | 13 mpv_lon | stata |
| `mpv_lat14` | numeric | 14 mpv_lat | stata |
| `mpv_lon14` | numeric | 14 mpv_lon | stata |
| `mpv_lat15` | numeric | 15 mpv_lat | stata |
| `mpv_lon15` | numeric | 15 mpv_lon | stata |
| `mpv_lat16` | numeric | 16 mpv_lat | stata |
| `mpv_lon16` | numeric | 16 mpv_lon | stata |
| `mpv_lat17` | numeric | 17 mpv_lat | stata |
| `mpv_lon17` | numeric | 17 mpv_lon | stata |
| `mpv_lat18` | numeric | 18 mpv_lat | stata |
| `mpv_lon18` | numeric | 18 mpv_lon | stata |
| `mpv_lat19` | numeric | 19 mpv_lat | stata |
| `mpv_lon19` | numeric | 19 mpv_lon | stata |
| `mpv_lat20` | numeric | 20 mpv_lat | stata |
| `mpv_lon20` | numeric | 20 mpv_lon | stata |
| `mpv_lat21` | numeric | 21 mpv_lat | stata |
| `mpv_lon21` | numeric | 21 mpv_lon | stata |
| `mpv_lat22` | numeric | 22 mpv_lat | stata |
| `mpv_lon22` | numeric | 22 mpv_lon | stata |
| `mpv_lat23` | numeric | 23 mpv_lat | stata |
| `mpv_lon23` | numeric | 23 mpv_lon | stata |
| `mpv_lat24` | numeric | 24 mpv_lat | stata |
| `mpv_lon24` | numeric | 24 mpv_lon | stata |
| `mpv_lat25` | numeric | 25 mpv_lat | stata |
| `mpv_lon25` | numeric | 25 mpv_lon | stata |
| `mpv_lat26` | numeric | 26 mpv_lat | stata |
| `mpv_lon26` | numeric | 26 mpv_lon | stata |
| `mpv_lat27` | numeric | 27 mpv_lat | stata |
| `mpv_lon27` | numeric | 27 mpv_lon | stata |
| `mpv_lat28` | numeric | 28 mpv_lat | stata |
| `mpv_lon28` | numeric | 28 mpv_lon | stata |
| `mpv_lat29` | numeric | 29 mpv_lat | stata |
| `mpv_lon29` | numeric | 29 mpv_lon | stata |
| `mpv_lat30` | numeric | 30 mpv_lat | stata |
| `mpv_lon30` | numeric | 30 mpv_lon | stata |
| `mpv_lat31` | numeric | 31 mpv_lat | stata |
| `mpv_lon31` | numeric | 31 mpv_lon | stata |
| `mpv_lat32` | numeric | 32 mpv_lat | stata |
| `mpv_lon32` | numeric | 32 mpv_lon | stata |
| `mpv_lat33` | numeric | 33 mpv_lat | stata |
| `mpv_lon33` | numeric | 33 mpv_lon | stata |
| `mpv_lat34` | numeric | 34 mpv_lat | stata |
| `mpv_lon34` | numeric | 34 mpv_lon | stata |
| `mpv_lat35` | numeric | 35 mpv_lat | stata |
| `mpv_lon35` | numeric | 35 mpv_lon | stata |
| `mpv_lat36` | numeric | 36 mpv_lat | stata |
| `mpv_lon36` | numeric | 36 mpv_lon | stata |
| `mpv_lat37` | numeric | 37 mpv_lat | stata |
| `mpv_lon37` | numeric | 37 mpv_lon | stata |
| `mpv_lat38` | numeric | 38 mpv_lat | stata |
| `mpv_lon38` | numeric | 38 mpv_lon | stata |
| `mpv_lat39` | numeric | 39 mpv_lat | stata |
| `mpv_lon39` | numeric | 39 mpv_lon | stata |
| `mpv_lat40` | numeric | 40 mpv_lat | stata |
| `mpv_lon40` | numeric | 40 mpv_lon | stata |
| `mpv_lat41` | numeric | 41 mpv_lat | stata |
| `mpv_lon41` | numeric | 41 mpv_lon | stata |
| `mpv_lat42` | numeric | 42 mpv_lat | stata |
| `mpv_lon42` | numeric | 42 mpv_lon | stata |
| `mpv_lat43` | numeric | 43 mpv_lat | stata |
| `mpv_lon43` | numeric | 43 mpv_lon | stata |
| `mpv_lat44` | numeric | 44 mpv_lat | stata |
| `mpv_lon44` | numeric | 44 mpv_lon | stata |
| `mpv_lat45` | numeric | 45 mpv_lat | stata |
| `mpv_lon45` | numeric | 45 mpv_lon | stata |
| `mpv_lat46` | numeric | 46 mpv_lat | stata |
| `mpv_lon46` | numeric | 46 mpv_lon | stata |
| `mpv_lat47` | numeric | 47 mpv_lat | stata |
| `mpv_lon47` | numeric | 47 mpv_lon | stata |
| `mpv_lat48` | numeric | 48 mpv_lat | stata |
| `mpv_lon48` | numeric | 48 mpv_lon | stata |
| `mpv_lat49` | numeric | 49 mpv_lat | stata |
| `mpv_lon49` | numeric | 49 mpv_lon | stata |
| `mpv_lat50` | numeric | 50 mpv_lat | stata |
| `mpv_lon50` | numeric | 50 mpv_lon | stata |
| `mpv_lat51` | numeric | 51 mpv_lat | stata |
| `mpv_lon51` | numeric | 51 mpv_lon | stata |
| `mpv_lat52` | numeric | 52 mpv_lat | stata |
| `mpv_lon52` | numeric | 52 mpv_lon | stata |
| `mpv_lat53` | numeric | 53 mpv_lat | stata |
| `mpv_lon53` | numeric | 53 mpv_lon | stata |
| `mpv_lat54` | numeric | 54 mpv_lat | stata |
| `mpv_lon54` | numeric | 54 mpv_lon | stata |
| `mpv_lat55` | numeric | 55 mpv_lat | stata |
| `mpv_lon55` | numeric | 55 mpv_lon | stata |
| `mpv_lat56` | numeric | 56 mpv_lat | stata |
| `mpv_lon56` | numeric | 56 mpv_lon | stata |
| `mpv_lat57` | numeric | 57 mpv_lat | stata |
| `mpv_lon57` | numeric | 57 mpv_lon | stata |
| `mpv_lat58` | numeric | 58 mpv_lat | stata |
| `mpv_lon58` | numeric | 58 mpv_lon | stata |
| `mpv_lat59` | numeric | 59 mpv_lat | stata |
| `mpv_lon59` | numeric | 59 mpv_lon | stata |
| `mpv_lat60` | numeric | 60 mpv_lat | stata |
| `mpv_lon60` | numeric | 60 mpv_lon | stata |
| `mpv_lat61` | numeric | 61 mpv_lat | stata |
| `mpv_lon61` | numeric | 61 mpv_lon | stata |
| `mpv_lat62` | numeric | 62 mpv_lat | stata |
| `mpv_lon62` | numeric | 62 mpv_lon | stata |
| `mpv_lat63` | numeric | 63 mpv_lat | stata |
| `mpv_lon63` | numeric | 63 mpv_lon | stata |
| `mpv_lat64` | numeric | 64 mpv_lat | stata |
| `mpv_lon64` | numeric | 64 mpv_lon | stata |
| `mpv_lat65` | numeric | 65 mpv_lat | stata |
| `mpv_lon65` | numeric | 65 mpv_lon | stata |
| `mpv_lat66` | numeric | 66 mpv_lat | stata |
| `mpv_lon66` | numeric | 66 mpv_lon | stata |
| `mpv_lat67` | numeric | 67 mpv_lat | stata |
| `mpv_lon67` | numeric | 67 mpv_lon | stata |
| `mpv_lat68` | numeric | 68 mpv_lat | stata |
| `mpv_lon68` | numeric | 68 mpv_lon | stata |
| `mpv_lat69` | numeric | 69 mpv_lat | stata |
| `mpv_lon69` | numeric | 69 mpv_lon | stata |
| `mpv_lat70` | numeric | 70 mpv_lat | stata |
| `mpv_lon70` | numeric | 70 mpv_lon | stata |
| `mpv_lat71` | numeric | 71 mpv_lat | stata |
| `mpv_lon71` | numeric | 71 mpv_lon | stata |
| `mpv_lat72` | numeric | 72 mpv_lat | stata |
| `mpv_lon72` | numeric | 72 mpv_lon | stata |
| `mpv_lat73` | numeric | 73 mpv_lat | stata |
| `mpv_lon73` | numeric | 73 mpv_lon | stata |
| `mpv_lat74` | numeric | 74 mpv_lat | stata |
| `mpv_lon74` | numeric | 74 mpv_lon | stata |
| `mpv_lat75` | numeric | 75 mpv_lat | stata |
| `mpv_lon75` | numeric | 75 mpv_lon | stata |
| `mpv_lat76` | numeric | 76 mpv_lat | stata |
| `mpv_lon76` | numeric | 76 mpv_lon | stata |
| `mpv_lat77` | numeric | 77 mpv_lat | stata |
| `mpv_lon77` | numeric | 77 mpv_lon | stata |
| `mpv_lat78` | numeric | 78 mpv_lat | stata |
| `mpv_lon78` | numeric | 78 mpv_lon | stata |
| `mpv_lat79` | numeric | 79 mpv_lat | stata |
| `mpv_lon79` | numeric | 79 mpv_lon | stata |
| `mpv_lat80` | numeric | 80 mpv_lat | stata |
| `mpv_lon80` | numeric | 80 mpv_lon | stata |
| `mpv_lat81` | numeric | 81 mpv_lat | stata |
| `mpv_lon81` | numeric | 81 mpv_lon | stata |
| `mpv_lat82` | numeric | 82 mpv_lat | stata |
| `mpv_lon82` | numeric | 82 mpv_lon | stata |
| `mpv_lat83` | numeric | 83 mpv_lat | stata |
| `mpv_lon83` | numeric | 83 mpv_lon | stata |
| `mpv_lat84` | numeric | 84 mpv_lat | stata |
| `mpv_lon84` | numeric | 84 mpv_lon | stata |
| `mpv_lat85` | numeric | 85 mpv_lat | stata |
| `mpv_lon85` | numeric | 85 mpv_lon | stata |
| `mpv_lat86` | numeric | 86 mpv_lat | stata |
| `mpv_lon86` | numeric | 86 mpv_lon | stata |
| `mpv_lat87` | numeric | 87 mpv_lat | stata |
| `mpv_lon87` | numeric | 87 mpv_lon | stata |
| `mpv_lat88` | numeric | 88 mpv_lat | stata |
| `mpv_lon88` | numeric | 88 mpv_lon | stata |
| `mpv_lat89` | numeric | 89 mpv_lat | stata |
| `mpv_lon89` | numeric | 89 mpv_lon | stata |
| `mpv_lat90` | numeric | 90 mpv_lat | stata |
| `mpv_lon90` | numeric | 90 mpv_lon | stata |
| `mpv_lat91` | numeric | 91 mpv_lat | stata |
| `mpv_lon91` | numeric | 91 mpv_lon | stata |
| `mpv_lat92` | numeric | 92 mpv_lat | stata |
| `mpv_lon92` | numeric | 92 mpv_lon | stata |
| `mpv_lat93` | numeric | 93 mpv_lat | stata |
| `mpv_lon93` | numeric | 93 mpv_lon | stata |
| `mpv_lat94` | numeric | 94 mpv_lat | stata |
| `mpv_lon94` | numeric | 94 mpv_lon | stata |
| `mpv_lat95` | numeric | 95 mpv_lat | stata |
| `mpv_lon95` | numeric | 95 mpv_lon | stata |
| `mpv_lat96` | numeric | 96 mpv_lat | stata |
| `mpv_lon96` | numeric | 96 mpv_lon | stata |
| `mpv_lat97` | numeric | 97 mpv_lat | stata |
| `mpv_lon97` | numeric | 97 mpv_lon | stata |
| `mpv_lat98` | numeric | 98 mpv_lat | stata |
| `mpv_lon98` | numeric | 98 mpv_lon | stata |
| `mpv_lat99` | numeric | 99 mpv_lat | stata |
| `mpv_lon99` | numeric | 99 mpv_lon | stata |
| `mpv_lat100` | numeric | 100 mpv_lat | stata |
| `mpv_lon100` | numeric | 100 mpv_lon | stata |
| `mpv_lat101` | numeric | 101 mpv_lat | stata |
| `mpv_lon101` | numeric | 101 mpv_lon | stata |
| `mpv_lat102` | numeric | 102 mpv_lat | stata |
| `mpv_lon102` | numeric | 102 mpv_lon | stata |
| `mpv_lat103` | numeric | 103 mpv_lat | stata |
| `mpv_lon103` | numeric | 103 mpv_lon | stata |
| `mpv_lat104` | numeric | 104 mpv_lat | stata |
| `mpv_lon104` | numeric | 104 mpv_lon | stata |
| `mpv_lat105` | numeric | 105 mpv_lat | stata |
| `mpv_lon105` | numeric | 105 mpv_lon | stata |
| `mpv_lat106` | numeric | 106 mpv_lat | stata |
| `mpv_lon106` | numeric | 106 mpv_lon | stata |
| `mpv_lat107` | numeric | 107 mpv_lat | stata |
| `mpv_lon107` | numeric | 107 mpv_lon | stata |
| `mpv_lat108` | numeric | 108 mpv_lat | stata |
| `mpv_lon108` | numeric | 108 mpv_lon | stata |
| `mpv_lat109` | numeric | 109 mpv_lat | stata |
| `mpv_lon109` | numeric | 109 mpv_lon | stata |
| `mpv_lat110` | numeric | 110 mpv_lat | stata |
| `mpv_lon110` | numeric | 110 mpv_lon | stata |
| `mpv_lat111` | numeric | 111 mpv_lat | stata |
| `mpv_lon111` | numeric | 111 mpv_lon | stata |
| `mpv_lat112` | numeric | 112 mpv_lat | stata |
| `mpv_lon112` | numeric | 112 mpv_lon | stata |
| `mpv_lat113` | numeric | 113 mpv_lat | stata |
| `mpv_lon113` | numeric | 113 mpv_lon | stata |
| `mpv_lat114` | numeric | 114 mpv_lat | stata |
| `mpv_lon114` | numeric | 114 mpv_lon | stata |
| `mpv_lat115` | numeric | 115 mpv_lat | stata |
| `mpv_lon115` | numeric | 115 mpv_lon | stata |
| `mpv_lat116` | numeric | 116 mpv_lat | stata |
| `mpv_lon116` | numeric | 116 mpv_lon | stata |
| `mpv_lat117` | numeric | 117 mpv_lat | stata |
| `mpv_lon117` | numeric | 117 mpv_lon | stata |
| `mpv_lat118` | numeric | 118 mpv_lat | stata |
| `mpv_lon118` | numeric | 118 mpv_lon | stata |
| `mpv_lat119` | numeric | 119 mpv_lat | stata |
| `mpv_lon119` | numeric | 119 mpv_lon | stata |
| `mpv_lat120` | numeric | 120 mpv_lat | stata |
| `mpv_lon120` | numeric | 120 mpv_lon | stata |
| `mpv_lat121` | numeric | 121 mpv_lat | stata |
| `mpv_lon121` | numeric | 121 mpv_lon | stata |
| `mpv_lat122` | numeric | 122 mpv_lat | stata |
| `mpv_lon122` | numeric | 122 mpv_lon | stata |
| `mpv_lat123` | numeric | 123 mpv_lat | stata |
| `mpv_lon123` | numeric | 123 mpv_lon | stata |
| `mpv_lat124` | numeric | 124 mpv_lat | stata |
| `mpv_lon124` | numeric | 124 mpv_lon | stata |
| `mpv_lat125` | numeric | 125 mpv_lat | stata |
| `mpv_lon125` | numeric | 125 mpv_lon | stata |
| `mpv_lat126` | numeric | 126 mpv_lat | stata |
| `mpv_lon126` | numeric | 126 mpv_lon | stata |
| `mpv_lat127` | numeric | 127 mpv_lat | stata |
| `mpv_lon127` | numeric | 127 mpv_lon | stata |
| `mpv_lat128` | numeric | 128 mpv_lat | stata |
| `mpv_lon128` | numeric | 128 mpv_lon | stata |
| `mpv_lat129` | numeric | 129 mpv_lat | stata |
| `mpv_lon129` | numeric | 129 mpv_lon | stata |
| `mpv_lat130` | numeric | 130 mpv_lat | stata |
| `mpv_lon130` | numeric | 130 mpv_lon | stata |
| `mpv_lat131` | numeric | 131 mpv_lat | stata |
| `mpv_lon131` | numeric | 131 mpv_lon | stata |
| `mpv_lat132` | numeric | 132 mpv_lat | stata |
| `mpv_lon132` | numeric | 132 mpv_lon | stata |
| `mpv_lat133` | numeric | 133 mpv_lat | stata |
| `mpv_lon133` | numeric | 133 mpv_lon | stata |
| `mpv_lat134` | numeric | 134 mpv_lat | stata |
| `mpv_lon134` | numeric | 134 mpv_lon | stata |
| `mpv_lat135` | numeric | 135 mpv_lat | stata |
| `mpv_lon135` | numeric | 135 mpv_lon | stata |
| `mpv_lat136` | numeric | 136 mpv_lat | stata |
| `mpv_lon136` | numeric | 136 mpv_lon | stata |
| `mpv_lat137` | numeric | 137 mpv_lat | stata |
| `mpv_lon137` | numeric | 137 mpv_lon | stata |
| `mpv_lat138` | numeric | 138 mpv_lat | stata |
| `mpv_lon138` | numeric | 138 mpv_lon | stata |
| `mpv_lat139` | numeric | 139 mpv_lat | stata |
| `mpv_lon139` | numeric | 139 mpv_lon | stata |
| `mpv_lat140` | numeric | 140 mpv_lat | stata |
| `mpv_lon140` | numeric | 140 mpv_lon | stata |
| `mpv_lat141` | numeric | 141 mpv_lat | stata |
| `mpv_lon141` | numeric | 141 mpv_lon | stata |
| `mpv_lat142` | numeric | 142 mpv_lat | stata |
| `mpv_lon142` | numeric | 142 mpv_lon | stata |
| `mpv_lat143` | numeric | 143 mpv_lat | stata |
| `mpv_lon143` | numeric | 143 mpv_lon | stata |
| `mpv_lat144` | numeric | 144 mpv_lat | stata |
| `mpv_lon144` | numeric | 144 mpv_lon | stata |
| `mpv_lat145` | numeric | 145 mpv_lat | stata |
| `mpv_lon145` | numeric | 145 mpv_lon | stata |
| `mpv_lat146` | numeric | 146 mpv_lat | stata |
| `mpv_lon146` | numeric | 146 mpv_lon | stata |
| `mpv_lat147` | numeric | 147 mpv_lat | stata |
| `mpv_lon147` | numeric | 147 mpv_lon | stata |
| `mpv_lat148` | numeric | 148 mpv_lat | stata |
| `mpv_lon148` | numeric | 148 mpv_lon | stata |
| `mpv_lat149` | numeric | 149 mpv_lat | stata |
| `mpv_lon149` | numeric | 149 mpv_lon | stata |
| `mpv_lat150` | numeric | 150 mpv_lat | stata |
| `mpv_lon150` | numeric | 150 mpv_lon | stata |
| `mpv_lat151` | numeric | 151 mpv_lat | stata |
| `mpv_lon151` | numeric | 151 mpv_lon | stata |
| `mpv_lat152` | numeric | 152 mpv_lat | stata |
| `mpv_lon152` | numeric | 152 mpv_lon | stata |
| `mpv_lat153` | numeric | 153 mpv_lat | stata |
| `mpv_lon153` | numeric | 153 mpv_lon | stata |
| `mpv_lat154` | numeric | 154 mpv_lat | stata |
| `mpv_lon154` | numeric | 154 mpv_lon | stata |
| `mpv_lat155` | numeric | 155 mpv_lat | stata |
| `mpv_lon155` | numeric | 155 mpv_lon | stata |
| `mpv_lat156` | numeric | 156 mpv_lat | stata |
| `mpv_lon156` | numeric | 156 mpv_lon | stata |
| `mpv_lat157` | numeric | 157 mpv_lat | stata |
| `mpv_lon157` | numeric | 157 mpv_lon | stata |
| `mpv_lat158` | numeric | 158 mpv_lat | stata |
| `mpv_lon158` | numeric | 158 mpv_lon | stata |
| `mpv_lat159` | numeric | 159 mpv_lat | stata |
| `mpv_lon159` | numeric | 159 mpv_lon | stata |
| `mpv_lat160` | numeric | 160 mpv_lat | stata |
| `mpv_lon160` | numeric | 160 mpv_lon | stata |
| `mpv_lat161` | numeric | 161 mpv_lat | stata |
| `mpv_lon161` | numeric | 161 mpv_lon | stata |
| `mpv_lat162` | numeric | 162 mpv_lat | stata |
| `mpv_lon162` | numeric | 162 mpv_lon | stata |
| `mpv_lat163` | numeric | 163 mpv_lat | stata |
| `mpv_lon163` | numeric | 163 mpv_lon | stata |
| `mpv_lat164` | numeric | 164 mpv_lat | stata |
| `mpv_lon164` | numeric | 164 mpv_lon | stata |
| `mpv_lat165` | numeric | 165 mpv_lat | stata |
| `mpv_lon165` | numeric | 165 mpv_lon | stata |
| `mpv_lat166` | numeric | 166 mpv_lat | stata |
| `mpv_lon166` | numeric | 166 mpv_lon | stata |
| `mpv_lat167` | numeric | 167 mpv_lat | stata |
| `mpv_lon167` | numeric | 167 mpv_lon | stata |
| `mpv_lat168` | numeric | 168 mpv_lat | stata |
| `mpv_lon168` | numeric | 168 mpv_lon | stata |
| `mpv_lat169` | numeric | 169 mpv_lat | stata |
| `mpv_lon169` | numeric | 169 mpv_lon | stata |
| `mpv_lat170` | numeric | 170 mpv_lat | stata |
| `mpv_lon170` | numeric | 170 mpv_lon | stata |
| `mpv_lat171` | numeric | 171 mpv_lat | stata |
| `mpv_lon171` | numeric | 171 mpv_lon | stata |
| `mpv_lat172` | numeric | 172 mpv_lat | stata |
| `mpv_lon172` | numeric | 172 mpv_lon | stata |
| `mpv_lat173` | numeric | 173 mpv_lat | stata |
| `mpv_lon173` | numeric | 173 mpv_lon | stata |
| `mpv_lat174` | numeric | 174 mpv_lat | stata |
| `mpv_lon174` | numeric | 174 mpv_lon | stata |
| `mpv_lat175` | numeric | 175 mpv_lat | stata |
| `mpv_lon175` | numeric | 175 mpv_lon | stata |
| `mpv_lat176` | numeric | 176 mpv_lat | stata |
| `mpv_lon176` | numeric | 176 mpv_lon | stata |
| `mpv_lat177` | numeric | 177 mpv_lat | stata |
| `mpv_lon177` | numeric | 177 mpv_lon | stata |
| `mpv_lat178` | numeric | 178 mpv_lat | stata |
| `mpv_lon178` | numeric | 178 mpv_lon | stata |
| `mpv_lat179` | numeric | 179 mpv_lat | stata |
| `mpv_lon179` | numeric | 179 mpv_lon | stata |
| `mpv_lat180` | numeric | 180 mpv_lat | stata |
| `mpv_lon180` | numeric | 180 mpv_lon | stata |
| `mpv_lat181` | numeric | 181 mpv_lat | stata |
| `mpv_lon181` | numeric | 181 mpv_lon | stata |
| `mpv_lat182` | numeric | 182 mpv_lat | stata |
| `mpv_lon182` | numeric | 182 mpv_lon | stata |
| `mpv_lat183` | numeric | 183 mpv_lat | stata |
| `mpv_lon183` | numeric | 183 mpv_lon | stata |
| `mpv_lat184` | numeric | 184 mpv_lat | stata |
| `mpv_lon184` | numeric | 184 mpv_lon | stata |
| `mpv_lat185` | numeric | 185 mpv_lat | stata |
| `mpv_lon185` | numeric | 185 mpv_lon | stata |
| `mpv_lat186` | numeric | 186 mpv_lat | stata |
| `mpv_lon186` | numeric | 186 mpv_lon | stata |
| `mpv_lat187` | numeric | 187 mpv_lat | stata |
| `mpv_lon187` | numeric | 187 mpv_lon | stata |
| `mpv_lat188` | numeric | 188 mpv_lat | stata |
| `mpv_lon188` | numeric | 188 mpv_lon | stata |
| `mpv_lat189` | numeric | 189 mpv_lat | stata |
| `mpv_lon189` | numeric | 189 mpv_lon | stata |
| `mpv_lat190` | numeric | 190 mpv_lat | stata |
| `mpv_lon190` | numeric | 190 mpv_lon | stata |
| `mpv_lat191` | numeric | 191 mpv_lat | stata |
| `mpv_lon191` | numeric | 191 mpv_lon | stata |
| `mpv_lat192` | numeric | 192 mpv_lat | stata |
| `mpv_lon192` | numeric | 192 mpv_lon | stata |
| `mpv_lat193` | numeric | 193 mpv_lat | stata |
| `mpv_lon193` | numeric | 193 mpv_lon | stata |
| `mpv_lat194` | numeric | 194 mpv_lat | stata |
| `mpv_lon194` | numeric | 194 mpv_lon | stata |
| `mpv_lat195` | numeric | 195 mpv_lat | stata |
| `mpv_lon195` | numeric | 195 mpv_lon | stata |
| `mpv_lat196` | numeric | 196 mpv_lat | stata |
| `mpv_lon196` | numeric | 196 mpv_lon | stata |
| `mpv_lat197` | numeric | 197 mpv_lat | stata |
| `mpv_lon197` | numeric | 197 mpv_lon | stata |
| `mpv_lat198` | numeric | 198 mpv_lat | stata |
| `mpv_lon198` | numeric | 198 mpv_lon | stata |
| `black_mpv_lat1` | numeric | 1 black_mpv_lat | stata |
| `black_mpv_lon1` | numeric | 1 black_mpv_lon | stata |
| `black_mpv_lat2` | numeric | 2 black_mpv_lat | stata |
| `black_mpv_lon2` | numeric | 2 black_mpv_lon | stata |
| `black_mpv_lat3` | numeric | 3 black_mpv_lat | stata |
| `black_mpv_lon3` | numeric | 3 black_mpv_lon | stata |
| `black_mpv_lat4` | numeric | 4 black_mpv_lat | stata |
| `black_mpv_lon4` | numeric | 4 black_mpv_lon | stata |
| `black_mpv_lat5` | numeric | 5 black_mpv_lat | stata |
| `black_mpv_lon5` | numeric | 5 black_mpv_lon | stata |
| `black_mpv_lat6` | numeric | 6 black_mpv_lat | stata |
| `black_mpv_lon6` | numeric | 6 black_mpv_lon | stata |
| `black_mpv_lat7` | numeric | 7 black_mpv_lat | stata |
| `black_mpv_lon7` | numeric | 7 black_mpv_lon | stata |
| `black_mpv_lat8` | numeric | 8 black_mpv_lat | stata |
| `black_mpv_lon8` | numeric | 8 black_mpv_lon | stata |
| `black_mpv_lat9` | numeric | 9 black_mpv_lat | stata |
| `black_mpv_lon9` | numeric | 9 black_mpv_lon | stata |
| `black_mpv_lat10` | numeric | 10 black_mpv_lat | stata |
| `black_mpv_lon10` | numeric | 10 black_mpv_lon | stata |
| `black_mpv_lat11` | numeric | 11 black_mpv_lat | stata |
| `black_mpv_lon11` | numeric | 11 black_mpv_lon | stata |
| `black_mpv_lat12` | numeric | 12 black_mpv_lat | stata |
| `black_mpv_lon12` | numeric | 12 black_mpv_lon | stata |
| `black_mpv_lat13` | numeric | 13 black_mpv_lat | stata |
| `black_mpv_lon13` | numeric | 13 black_mpv_lon | stata |
| `black_mpv_lat14` | numeric | 14 black_mpv_lat | stata |
| `black_mpv_lon14` | numeric | 14 black_mpv_lon | stata |
| `black_mpv_lat15` | numeric | 15 black_mpv_lat | stata |
| `black_mpv_lon15` | numeric | 15 black_mpv_lon | stata |
| `black_mpv_lat16` | numeric | 16 black_mpv_lat | stata |
| `black_mpv_lon16` | numeric | 16 black_mpv_lon | stata |
| `black_mpv_lat17` | numeric | 17 black_mpv_lat | stata |
| `black_mpv_lon17` | numeric | 17 black_mpv_lon | stata |
| `black_mpv_lat18` | numeric | 18 black_mpv_lat | stata |
| `black_mpv_lon18` | numeric | 18 black_mpv_lon | stata |
| `black_mpv_lat19` | numeric | 19 black_mpv_lat | stata |
| `black_mpv_lon19` | numeric | 19 black_mpv_lon | stata |
| `black_mpv_lat20` | numeric | 20 black_mpv_lat | stata |
| `black_mpv_lon20` | numeric | 20 black_mpv_lon | stata |
| `black_mpv_lat21` | numeric | 21 black_mpv_lat | stata |
| `black_mpv_lon21` | numeric | 21 black_mpv_lon | stata |
| `black_mpv_lat22` | numeric | 22 black_mpv_lat | stata |
| `black_mpv_lon22` | numeric | 22 black_mpv_lon | stata |
| `black_mpv_lat23` | numeric | 23 black_mpv_lat | stata |
| `black_mpv_lon23` | numeric | 23 black_mpv_lon | stata |
| `black_mpv_lat24` | numeric | 24 black_mpv_lat | stata |
| `black_mpv_lon24` | numeric | 24 black_mpv_lon | stata |
| `black_mpv_lat25` | numeric | 25 black_mpv_lat | stata |
| `black_mpv_lon25` | numeric | 25 black_mpv_lon | stata |
| `black_mpv_lat26` | numeric | 26 black_mpv_lat | stata |
| `black_mpv_lon26` | numeric | 26 black_mpv_lon | stata |
| `black_mpv_lat27` | numeric | 27 black_mpv_lat | stata |
| `black_mpv_lon27` | numeric | 27 black_mpv_lon | stata |
| `black_mpv_lat28` | numeric | 28 black_mpv_lat | stata |
| `black_mpv_lon28` | numeric | 28 black_mpv_lon | stata |
| `black_mpv_lat29` | numeric | 29 black_mpv_lat | stata |
| `black_mpv_lon29` | numeric | 29 black_mpv_lon | stata |
| `black_mpv_lat30` | numeric | 30 black_mpv_lat | stata |
| `black_mpv_lon30` | numeric | 30 black_mpv_lon | stata |
| `black_mpv_lat31` | numeric | 31 black_mpv_lat | stata |
| `black_mpv_lon31` | numeric | 31 black_mpv_lon | stata |
| `black_mpv_lat32` | numeric | 32 black_mpv_lat | stata |
| `black_mpv_lon32` | numeric | 32 black_mpv_lon | stata |
| `black_mpv_lat33` | numeric | 33 black_mpv_lat | stata |
| `black_mpv_lon33` | numeric | 33 black_mpv_lon | stata |
| `black_mpv_lat34` | numeric | 34 black_mpv_lat | stata |
| `black_mpv_lon34` | numeric | 34 black_mpv_lon | stata |
| `black_mpv_lat35` | numeric | 35 black_mpv_lat | stata |
| `black_mpv_lon35` | numeric | 35 black_mpv_lon | stata |
| `black_mpv_lat36` | numeric | 36 black_mpv_lat | stata |
| `black_mpv_lon36` | numeric | 36 black_mpv_lon | stata |
| `black_mpv_lat37` | numeric | 37 black_mpv_lat | stata |
| `black_mpv_lon37` | numeric | 37 black_mpv_lon | stata |
| `black_mpv_lat38` | numeric | 38 black_mpv_lat | stata |
| `black_mpv_lon38` | numeric | 38 black_mpv_lon | stata |
| `black_mpv_lat39` | numeric | 39 black_mpv_lat | stata |
| `black_mpv_lon39` | numeric | 39 black_mpv_lon | stata |
| `black_mpv_lat40` | numeric | 40 black_mpv_lat | stata |
| `black_mpv_lon40` | numeric | 40 black_mpv_lon | stata |
| `black_mpv_lat41` | numeric | 41 black_mpv_lat | stata |
| `black_mpv_lon41` | numeric | 41 black_mpv_lon | stata |
| `black_mpv_lat42` | numeric | 42 black_mpv_lat | stata |
| `black_mpv_lon42` | numeric | 42 black_mpv_lon | stata |
| `black_mpv_lat43` | numeric | 43 black_mpv_lat | stata |
| `black_mpv_lon43` | numeric | 43 black_mpv_lon | stata |
| `black_mpv_lat44` | numeric | 44 black_mpv_lat | stata |
| `black_mpv_lon44` | numeric | 44 black_mpv_lon | stata |
| `black_mpv_lat45` | numeric | 45 black_mpv_lat | stata |
| `black_mpv_lon45` | numeric | 45 black_mpv_lon | stata |
| `black_mpv_lat46` | numeric | 46 black_mpv_lat | stata |
| `black_mpv_lon46` | numeric | 46 black_mpv_lon | stata |
| `black_mpv_lat47` | numeric | 47 black_mpv_lat | stata |
| `black_mpv_lon47` | numeric | 47 black_mpv_lon | stata |
| `black_mpv_lat48` | numeric | 48 black_mpv_lat | stata |
| `black_mpv_lon48` | numeric | 48 black_mpv_lon | stata |
| `black_mpv_lat49` | numeric | 49 black_mpv_lat | stata |
| `black_mpv_lon49` | numeric | 49 black_mpv_lon | stata |
| `cumprotest2019` | numeric | (sum) protest | stata |
| `pc_murder` | numeric | Per capita murder rate | auto |
| `pc_property` | numeric | Per capita property crime rate | auto |
| `pc_violent` | numeric | Per capita violent crime rate | auto |
| `pc_police` | numeric | Per capita police officers | auto |
| `pc_vid_bwc` | numeric | Percent of officers with body-worn cameras | auto |
| `pc_vid_car` | numeric | Percent of vehicles with in-car cameras | auto |
| `pc_vid_fixed` | numeric | Percent using fixed surveillance | auto |
| `pc_vid_mobile` | numeric | Percent using mobile surveillance | auto |
| `pc_vid_weap` | numeric | Percent using weapon-mounted cameras | auto |
| `pc_vid_drone` | numeric | Percent using drones | auto |
| `sh_black` | numeric | Share Black population | auto |
| `sh_hispanic` | numeric | Share Hispanic population | auto |
| `sh_male_15_17` | numeric | Share of male population aged 15-17 | auto |
| `income` | numeric | Income | auto |
| `high_black` | numeric | High Black population share indicator | auto |
| `stdevent` | numeric | Protest (Std. Dev.) | stata |
| `grp` | numeric | group(ori9) | stata |
| `dist_mpls` | numeric | Distance to Minneapolis (George Floyd) | auto |
| `ldist_mpls` | numeric | Log distance to Minneapolis | auto |
| `dist_mpv` | numeric | Distance to Mapping Police Violence incident | auto |
| `ldist_mpv` | numeric | Log distance to MPV incident | auto |
| `dist_black_mpv` | numeric | Distance to MPV incident involving Black victim | auto |
| `ldist_black_mpv` | numeric | Log distance to MPV incident (Black victim) | auto |

## `raw_data/protests/gdelt_county_mdy_summer2020.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `geoid` | numeric | GEOID | stata |
| `mdy` | Date | Month-day-year date | auto |
| `protest` | numeric | (sum) protest | stata |

## `raw_data/protests/gdelt_ori9_2013_2019.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ori9` | character | Originating Agency Identifier (ORI, 9-char) | auto |
| `cumprotest2019` | numeric | (sum) protest | stata |

## `raw_data/protests/lemas_2020.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ori9` | character | 9-digit Originating Agency Identifier (ORI) number | stata |
| `opbudget_2019` | vctrs_vctr,double | OPBUDGET_2019 - Agency's total operating budget for the fiscal year that include | stata |
| `opbudget` | vctrs_vctr,double | OPBUDGET - Agency's total operating budget for the fiscal year that included Dec | stata |
| `eq_vid_fixed` | vctrs_vctr,double | EQ_VID_FIXED - Number of video cameras were operated by your agency on a REGULAR | stata |
| `eq_vid_mobile` | vctrs_vctr,double | EQ_VID_MOBILE - Number of video cameras were operated by your agency on a REGULA | stata |
| `eq_vid_drone` | vctrs_vctr,double | EQ_VID_DRONE - Number of video cameras were operated by your agency on a REGULAR | stata |
| `eq_vid_car` | vctrs_vctr,double | EQ_VID_CAR - Number of video cameras were operated by your agency on a REGULAR b | stata |
| `eq_vid_bwc` | vctrs_vctr,double | EQ_VID_BWC - Number of video cameras were operated by your agency on a REGULAR b | stata |
| `eq_vid_weap` | vctrs_vctr,double | EQ_VID_WEAP - Number of video cameras were operated by your agency on a REGULAR | stata |
| `tech_typ_cad` | vctrs_vctr,double | TECH_TYP_CAD - Technology used on a REGULAR basis: Computer aided dispatch (CAD) | stata |
| `tech_typ_rms` | vctrs_vctr,double | TECH_TYP_RMS - Technology used on a REGULAR basis: Record management systems (RM | stata |
| `tech_typ_afis` | vctrs_vctr,double | TECH_TYP_AFIS - Technology used on a REGULAR basis: Automated Fingerprint Identi | stata |
| `tech_typ_gis` | vctrs_vctr,double | TECH_TYP_GIS - Technology used on a REGULAR basis: Geographic information system | stata |
| `tech_typ_facerec` | vctrs_vctr,double | TECH_TYP_FACEREC - Technology used on a REGULAR basis: Facial recognition | stata |
| `tech_typ_infr` | vctrs_vctr,double | TECH_TYP_INFR - Technology used on a REGULAR basis: Infrared (thermal) imagers | stata |
| `tech_typ_lpr` | vctrs_vctr,double | TECH_TYP_LPR - Technology used on a REGULAR basis: License plate readers (LPR) | stata |
| `tech_typ_tiredfl` | vctrs_vctr,double | TECH_TYP_TIREDFL - Technology used on a REGULAR basis: Tire deflation devices | stata |
| `tech_typ_gunshot` | vctrs_vctr,double | TECH_TYP_GUNSHOT - Technology used on a REGULAR basis: Gunshot detection (e.g., | stata |
| `tech_typ_trace` | vctrs_vctr,double | TECH_TYP_TRACE - Technology used on a REGULAR basis: Firearm tracing (e.g., eTra | stata |
| `tech_typ_ball` | vctrs_vctr,double | TECH_TYP_BALL - Technology used on a REGULAR basis: Ballistic imaging (e.g., NIB | stata |
| `pol_conduct` | vctrs_vctr,double | POL_CONDUCT - Agency has written policy or procedural directives on: Code of con | stata |
| `pol_deadforc` | vctrs_vctr,double | POL_DEADFORC - Agency has written policy or procedural directives on: Use of dea | stata |
| `pol_lesslethal` | vctrs_vctr,double | POL_LESSLETHAL - Agency has written policy or procedural directives on: Use of l | stata |
| `pol_domdisp` | vctrs_vctr,double | POL_DOMDISP - Agency has written policy or procedural directives on: Domestic di | stata |
| `pol_homeless` | vctrs_vctr,double | POL_HOMELESS - Agency has written policy or procedural directives on: Homeless p | stata |
| `pol_juv` | vctrs_vctr,double | POL_JUV - Agency has written policy or procedural directives on: Juveniles | stata |
| `pol_mentill` | vctrs_vctr,double | POL_MENTILL - Agency has written policy or procedural directives on: Mentally il | stata |
| `pol_bwc` | vctrs_vctr,double | POL_BWC - Agency has written policy or procedural directives on: Body-worn camer | stata |
| `pol_compl` | vctrs_vctr,double | POL_COMPL - Agency has written policy or procedural directives on: Civilian comp | stata |
| `year` | numeric | Calendar year | auto |
| `police_dpt` | numeric | Police department indicator | auto |
| `any_tech_gunshot` | numeric | Agency uses gunshot detection technology | auto |
| `any_tech_facerec` | numeric | Agency uses facial recognition | auto |
| `any_tech_rms` | numeric | Agency uses records management system | auto |
| `any_tech_cad` | numeric | Agency uses computer-aided dispatch | auto |
| `any_tech_infr` | numeric | Agency uses infrared technology | auto |
| `any_tech_lpr` | numeric | Agency uses license plate readers | auto |
| `any_vid_bwc` | numeric | Agency uses body-worn camera video | auto |
| `any_vid_car` | numeric | Agency uses in-car camera video | auto |
| `any_vid_fixed` | numeric | Agency uses fixed surveillance cameras | auto |
| `any_vid_mobile` | numeric | Agency uses mobile surveillance | auto |
| `any_vid_weap` | numeric | Agency uses weapon-mounted cameras | auto |
| `any_vid_drone` | numeric | Agency uses drone video | auto |
| `any_conduct` | numeric | Agency has conduct policy | auto |
| `any_deadforc` | numeric | Agency has deadly force policy | auto |
| `any_lesslethal` | numeric | Agency has less-lethal force policy | auto |
| `any_domdisp` | numeric | Agency has domestic dispute policy | auto |
| `any_homeless` | numeric | Agency has homeless policy | auto |
| `any_juv` | numeric | Agency has juvenile policy | auto |
| `any_bwc` | numeric | Agency has body-worn cameras | auto |
| `any_mentill` | numeric | Agency has mental illness policy | auto |
| `any_compl` | numeric | Agency has complaint tracking | auto |

## `raw_data/protests/leoka_2019.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `year` | numeric | Calendar year | auto |
| `ori9` | character | Originating Agency Identifier (ORI, 9-char) | auto |
| `tot_police` | numeric | Total police officers | auto |
| `tot_civilians` | numeric | Total civilian employees | auto |
| `tot_employees` | numeric | Total employees | auto |

## `raw_data/protests/leoka_yearly_1960_2022.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ori` | character | Originating Agency Identifier (ORI, 7-char) | auto |
| `agency_name` | character | Law enforcement agency name | auto |
| `state` | character | State name | auto |
| `state_abb` | character | State abbreviation | auto |
| `number_of_months_reported` | numeric | Number of months with reported data | auto |
| `year` | numeric | Calendar year | auto |
| `ori9` | character | Originating Agency Identifier (ORI, 9-char) | auto |
| `fips_state_code` | character | FIPS state code | auto |
| `fips_county_code` | character | FIPS county code | auto |
| `fips_state_county_code` | character | FIPS state-county code | auto |
| `fips_place_code` | character | FIPS place code | auto |
| `agency_type` | character | Type of law enforcement agency | auto |
| `crosswalk_agency_name` | character | Crosswalk agency name | auto |
| `census_name` | character | Census-designated agency name | auto |
| `longitude` | character | Longitude | auto |
| `latitude` | character | Latitude | auto |
| `address_name` | character | Address name | auto |
| `address_street_line_1` | character | Street address line 1 | auto |
| `address_street_line_2` | character | Street address line 2 | auto |
| `address_city` | character | City | auto |
| `address_state` | character | State | auto |
| `address_zip_code` | character | ZIP code | auto |
| `population` | numeric | Population | auto |
| `population_group` | character | UCR population group | auto |
| `country_division` | character | Country division code | auto |
| `msa` | character | Metropolitan Statistical Area code | auto |
| `report_indicator` | character | Report type indicator | auto |
| `record_indicator` | character | Record type indicator | auto |
| `month_indicator` | character | Month indicator | auto |
| `covered_by` | character | Covered by (parent agency) | auto |
| `shift_data` | character | Shift assignment data available | auto |
| `no_male_female_breakdown` | character | No gender breakdown available | auto |
| `assault_injury_indicator` | character | Assault with injury indicator | auto |
| `assault_no_injury_indicator` | character | Assault without injury indicator | auto |
| `male_employees_officers` | numeric | Male sworn officers | auto |
| `female_employees_officers` | numeric | Female sworn officers | auto |
| `total_employees_officers` | numeric | Total sworn officers | auto |
| `male_employees_civilians` | numeric | Male civilian employees | auto |
| `female_employees_civilians` | numeric | Female civilian employees | auto |
| `total_employees_civilians` | numeric | Total civilian employees | auto |
| `male_employees_total` | numeric | Total male employees | auto |
| `female_employees_total` | numeric | Total female employees | auto |
| `total_employees_total` | numeric | Total employees (officers + civilians) | auto |
| `officers_killed_total` | numeric | Total officers killed | auto |
| `officers_killed_by_felony` | numeric | Officers killed by felony | auto |
| `officers_killed_by_accident` | numeric | Officers killed by accident | auto |
| `assaults_with_injury_gun` | numeric | LEOKA assaults with injury gun | auto |
| `assaults_with_injury_knife` | numeric | LEOKA assaults with injury knife | auto |
| `assaults_with_injury_oth_weap` | numeric | LEOKA assaults with injury oth weap | auto |
| `assaults_with_injury_unarmed` | numeric | LEOKA assaults with injury unarmed | auto |
| `assaults_with_injury_total` | numeric | LEOKA assaults with injury total | auto |
| `assaults_no_injury_gun` | numeric | LEOKA assaults no injury gun | auto |
| `assaults_no_injury_knife` | numeric | LEOKA assaults no injury knife | auto |
| `assaults_no_injury_oth_weap` | numeric | LEOKA assaults no injury oth weap | auto |
| `assaults_no_injury_unarmed` | numeric | LEOKA assaults no injury unarmed | auto |
| `assaults_no_injury_total` | numeric | LEOKA assaults no injury total | auto |
| `ambush_total_assaults` | numeric | LEOKA ambush: total assaults | auto |
| `ambush_assault_gun` | numeric | LEOKA ambush: assault gun | auto |
| `ambush_assault_knife` | numeric | LEOKA ambush: assault knife | auto |
| `ambush_assault_oth_weap` | numeric | LEOKA ambush: assault oth weap | auto |
| `ambush_assault_unarmed` | numeric | LEOKA ambush: assault unarmed | auto |
| `ambush_two_man_veh` | numeric | LEOKA ambush: two man veh | auto |
| `ambush_one_man_alone` | numeric | LEOKA ambush: one man alone | auto |
| `ambush_one_man_assist` | numeric | LEOKA ambush: one man assist | auto |
| `ambush_detective_alone` | numeric | LEOKA ambush: detective alone | auto |
| `ambush_detective_assist` | numeric | LEOKA ambush: detective assist | auto |
| `ambush_other_alone` | numeric | LEOKA ambush: other alone | auto |
| `ambush_other_assist` | numeric | LEOKA ambush: other assist | auto |
| `ambush_assaults_cleared` | numeric | LEOKA ambush: assaults cleared | auto |
| `oth_arrest_total_assaults` | numeric | LEOKA oth arrest: total assaults | auto |
| `oth_arrest_assault_gun` | numeric | LEOKA oth arrest: assault gun | auto |
| `oth_arrest_assault_knife` | numeric | LEOKA oth arrest: assault knife | auto |
| `oth_arrest_assault_oth_weap` | numeric | LEOKA oth arrest: assault oth weap | auto |
| `oth_arrest_assault_unarmed` | numeric | LEOKA oth arrest: assault unarmed | auto |
| `oth_arrest_two_man_veh` | numeric | LEOKA oth arrest: two man veh | auto |
| `oth_arrest_one_man_alone` | numeric | LEOKA oth arrest: one man alone | auto |
| `oth_arrest_one_man_assist` | numeric | LEOKA oth arrest: one man assist | auto |
| `oth_arrest_detective_alone` | numeric | LEOKA oth arrest: detective alone | auto |
| `oth_arrest_detective_assist` | numeric | LEOKA oth arrest: detective assist | auto |
| `oth_arrest_other_alone` | numeric | LEOKA oth arrest: other alone | auto |
| `oth_arrest_other_assist` | numeric | LEOKA oth arrest: other assist | auto |
| `oth_arrest_assaults_cleared` | numeric | LEOKA oth arrest: assaults cleared | auto |
| `burglary_total_assaults` | numeric | LEOKA burglary: total assaults | auto |
| `burglary_assault_gun` | numeric | LEOKA burglary: assault gun | auto |
| `burglary_assault_knife` | numeric | LEOKA burglary: assault knife | auto |
| `burglary_assault_oth_weap` | numeric | LEOKA burglary: assault oth weap | auto |
| `burglary_assault_unarmed` | numeric | LEOKA burglary: assault unarmed | auto |
| `burglary_two_man_veh` | numeric | LEOKA burglary: two man veh | auto |
| `burglary_one_man_alone` | numeric | LEOKA burglary: one man alone | auto |
| `burglary_one_man_assist` | numeric | LEOKA burglary: one man assist | auto |
| `burglary_detective_alone` | numeric | LEOKA burglary: detective alone | auto |
| `burglary_detective_assist` | numeric | LEOKA burglary: detective assist | auto |
| `burglary_other_alone` | numeric | LEOKA burglary: other alone | auto |
| `burglary_other_assist` | numeric | LEOKA burglary: other assist | auto |
| `burglary_assaults_cleared` | numeric | LEOKA burglary: assaults cleared | auto |
| `deranged_total_assaults` | numeric | LEOKA deranged: total assaults | auto |
| `deranged_assault_gun` | numeric | LEOKA deranged: assault gun | auto |
| `deranged_assault_knife` | numeric | LEOKA deranged: assault knife | auto |
| `deranged_assault_oth_weap` | numeric | LEOKA deranged: assault oth weap | auto |
| `deranged_assault_unarmed` | numeric | LEOKA deranged: assault unarmed | auto |
| `deranged_two_man_veh` | numeric | LEOKA deranged: two man veh | auto |
| `deranged_one_man_alone` | numeric | LEOKA deranged: one man alone | auto |
| `deranged_one_man_assist` | numeric | LEOKA deranged: one man assist | auto |
| `deranged_detective_alone` | numeric | LEOKA deranged: detective alone | auto |
| `deranged_detective_assist` | numeric | LEOKA deranged: detective assist | auto |
| `deranged_other_alone` | numeric | LEOKA deranged: other alone | auto |
| `deranged_other_assist` | numeric | LEOKA deranged: other assist | auto |
| `deranged_assaults_cleared` | numeric | LEOKA deranged: assaults cleared | auto |
| `disturbance_total_assaults` | numeric | LEOKA disturbance: total assaults | auto |
| `disturbance_assault_gun` | numeric | LEOKA disturbance: assault gun | auto |
| `disturbance_assault_knife` | numeric | LEOKA disturbance: assault knife | auto |
| `disturbance_assault_oth_weap` | numeric | LEOKA disturbance: assault oth weap | auto |
| `disturbance_assault_unarmed` | numeric | LEOKA disturbance: assault unarmed | auto |
| `disturbance_two_man_veh` | numeric | LEOKA disturbance: two man veh | auto |
| `disturbance_one_man_alone` | numeric | LEOKA disturbance: one man alone | auto |
| `disturbance_one_man_assist` | numeric | LEOKA disturbance: one man assist | auto |
| `disturbance_detective_alone` | numeric | LEOKA disturbance: detective alone | auto |
| `disturbance_detective_assist` | numeric | LEOKA disturbance: detective assist | auto |
| `disturbance_other_alone` | numeric | LEOKA disturbance: other alone | auto |
| `disturbance_other_assist` | numeric | LEOKA disturbance: other assist | auto |
| `disturbance_assaults_cleared` | numeric | LEOKA disturbance: assaults cleared | auto |
| `prisoner_total_assaults` | numeric | LEOKA prisoner: total assaults | auto |
| `prisoner_assault_gun` | numeric | LEOKA prisoner: assault gun | auto |
| `prisoner_assault_knife` | numeric | LEOKA prisoner: assault knife | auto |
| `prisoner_assault_oth_weap` | numeric | LEOKA prisoner: assault oth weap | auto |
| `prisoner_assault_unarmed` | numeric | LEOKA prisoner: assault unarmed | auto |
| `prisoner_two_man_veh` | numeric | LEOKA prisoner: two man veh | auto |
| `prisoner_one_man_alone` | numeric | LEOKA prisoner: one man alone | auto |
| `prisoner_one_man_assist` | numeric | LEOKA prisoner: one man assist | auto |
| `prisoner_detective_alone` | numeric | LEOKA prisoner: detective alone | auto |
| `prisoner_detective_assist` | numeric | LEOKA prisoner: detective assist | auto |
| `prisoner_other_alone` | numeric | LEOKA prisoner: other alone | auto |
| `prisoner_other_assist` | numeric | LEOKA prisoner: other assist | auto |
| `prisoner_assaults_cleared` | numeric | LEOKA prisoner: assaults cleared | auto |
| `riot_total_assaults` | numeric | LEOKA riot: total assaults | auto |
| `riot_assault_gun` | numeric | LEOKA riot: assault gun | auto |
| `riot_assault_knife` | numeric | LEOKA riot: assault knife | auto |
| `riot_assault_oth_weap` | numeric | LEOKA riot: assault oth weap | auto |
| `riot_assault_unarmed` | numeric | LEOKA riot: assault unarmed | auto |
| `riot_two_man_veh` | numeric | LEOKA riot: two man veh | auto |
| `riot_one_man_alone` | numeric | LEOKA riot: one man alone | auto |
| `riot_one_man_assist` | numeric | LEOKA riot: one man assist | auto |
| `riot_detective_alone` | numeric | LEOKA riot: detective alone | auto |
| `riot_detective_assiste` | numeric | LEOKA riot: detective assiste | auto |
| `riot_other_alone` | numeric | LEOKA riot: other alone | auto |
| `riot_other_assist` | numeric | LEOKA riot: other assist | auto |
| `riot_assaults_cleared` | numeric | LEOKA riot: assaults cleared | auto |
| `robbery_total_assaults` | numeric | LEOKA robbery: total assaults | auto |
| `robbery_assault_gun` | numeric | LEOKA robbery: assault gun | auto |
| `robbery_assault_knife` | numeric | LEOKA robbery: assault knife | auto |
| `robbery_assault_oth_weap` | numeric | LEOKA robbery: assault oth weap | auto |
| `robbery_assault_unarmed` | numeric | LEOKA robbery: assault unarmed | auto |
| `robbery_two_man_veh` | numeric | LEOKA robbery: two man veh | auto |
| `robbery_one_man_alone` | numeric | LEOKA robbery: one man alone | auto |
| `robbery_one_man_assist` | numeric | LEOKA robbery: one man assist | auto |
| `robbery_detective_alone` | numeric | LEOKA robbery: detective alone | auto |
| `robbery_detective_assist` | numeric | LEOKA robbery: detective assist | auto |
| `robbery_other_alone` | numeric | LEOKA robbery: other alone | auto |
| `robbery_other_assist` | numeric | LEOKA robbery: other assist | auto |
| `robbery_assaults_cleared` | numeric | LEOKA robbery: assaults cleared | auto |
| `susp_pers_total_assaults` | numeric | LEOKA susp pers: total assaults | auto |
| `susp_pers_assault_gun` | numeric | LEOKA susp pers: assault gun | auto |
| `susp_pers_assault_knife` | numeric | LEOKA susp pers: assault knife | auto |
| `susp_pers_assault_oth_weap` | numeric | LEOKA susp pers: assault oth weap | auto |
| `susp_pers_assault_unarmed` | numeric | LEOKA susp pers: assault unarmed | auto |
| `susp_pers_two_man_veh` | numeric | LEOKA susp pers: two man veh | auto |
| `susp_pers_one_man_alone` | numeric | LEOKA susp pers: one man alone | auto |
| `susp_pers_one_man_assist` | numeric | LEOKA susp pers: one man assist | auto |
| `susp_pers_detective_alone` | numeric | LEOKA susp pers: detective alone | auto |
| `susp_pers_detective_assist` | numeric | LEOKA susp pers: detective assist | auto |
| `susp_pers_other_alone` | numeric | LEOKA susp pers: other alone | auto |
| `susp_pers_other_assist` | numeric | LEOKA susp pers: other assist | auto |
| `susp_pers_assaults_cleared` | numeric | LEOKA susp pers: assaults cleared | auto |
| `traffic_total_assaults` | numeric | LEOKA traffic: total assaults | auto |
| `traffic_assault_gun` | numeric | LEOKA traffic: assault gun | auto |
| `traffic_assault_knife` | numeric | LEOKA traffic: assault knife | auto |
| `traffic_assault_oth_weap` | numeric | LEOKA traffic: assault oth weap | auto |
| `traffic_assault_unarmed` | numeric | LEOKA traffic: assault unarmed | auto |
| `traffic_two_man_veh` | numeric | LEOKA traffic: two man veh | auto |
| `traffic_one_man_alone` | numeric | LEOKA traffic: one man alone | auto |
| `traffic_one_man_assist` | numeric | LEOKA traffic: one man assist | auto |
| `traffic_detective_alone` | numeric | LEOKA traffic: detective alone | auto |
| `traffic_detective_assist` | numeric | LEOKA traffic: detective assist | auto |
| `traffic_other_alone` | numeric | LEOKA traffic: other alone | auto |
| `traffic_other_assist` | numeric | LEOKA traffic: other assist | auto |
| `traffic_assaults_cleared` | numeric | LEOKA traffic: assaults cleared | auto |
| `all_other_total_assaults` | numeric | LEOKA all other: total assaults | auto |
| `all_other_assault_gun` | numeric | LEOKA all other: assault gun | auto |
| `all_other_assault_knife` | numeric | LEOKA all other: assault knife | auto |
| `all_other_assault_oth_weap` | numeric | LEOKA all other: assault oth weap | auto |
| `all_other_assault_unarmed` | numeric | LEOKA all other: assault unarmed | auto |
| `all_other_two_man_veh` | numeric | LEOKA all other: two man veh | auto |
| `all_other_one_man_alone` | numeric | LEOKA all other: one man alone | auto |
| `all_other_one_man_assist` | numeric | LEOKA all other: one man assist | auto |
| `all_other_detective_alone` | numeric | LEOKA all other: detective alone | auto |
| `all_other_detective_assist` | numeric | LEOKA all other: detective assist | auto |
| `all_other_other_alone` | numeric | LEOKA all other: other alone | auto |
| `all_other_other_assist` | numeric | LEOKA all other: other assist | auto |
| `all_other_assaults_cleared` | numeric | LEOKA all other: assaults cleared | auto |
| `total_assaults_total` | numeric | LEOKA total: assaults total | auto |
| `total_assault_gun` | numeric | LEOKA total: assault gun | auto |
| `total_assault_knife` | numeric | LEOKA total: assault knife | auto |
| `total_assault_oth_weap` | numeric | LEOKA total: assault oth weap | auto |
| `total_assault_unarmed` | numeric | LEOKA total: assault unarmed | auto |
| `total_two_man_veh` | numeric | LEOKA total: two man veh | auto |
| `total_one_man_alone` | numeric | LEOKA total: one man alone | auto |
| `total_one_man_assist` | numeric | LEOKA total: one man assist | auto |
| `total_detective_alone` | numeric | LEOKA total: detective alone | auto |
| `total_detective_assist` | numeric | LEOKA total: detective assist | auto |
| `total_other_alone` | numeric | LEOKA total: other alone | auto |
| `total_other_assist` | numeric | LEOKA total: other assist | auto |
| `total_assaults_cleared` | numeric | LEOKA total: assaults cleared | auto |
| `time_of_assault_0001_to_0200` | numeric | LEOKA assaults during hours 0001 to 0200 | auto |
| `time_of_assault_0201_to_0400` | numeric | LEOKA assaults during hours 0201 to 0400 | auto |
| `time_of_assault_0401_to_0600` | numeric | LEOKA assaults during hours 0401 to 0600 | auto |
| `time_of_assault_0601_to_0800` | numeric | LEOKA assaults during hours 0601 to 0800 | auto |
| `time_of_assault_0801_to_1000` | numeric | LEOKA assaults during hours 0801 to 1000 | auto |
| `time_of_assault_1001_to_1200` | numeric | LEOKA assaults during hours 1001 to 1200 | auto |
| `time_of_assault_1201_to_1400` | numeric | LEOKA assaults during hours 1201 to 1400 | auto |
| `time_of_assault_1401_to_1600` | numeric | LEOKA assaults during hours 1401 to 1600 | auto |
| `time_of_assault_1601_to_1800` | numeric | LEOKA assaults during hours 1601 to 1800 | auto |
| `time_of_assault_1801_to_2000` | numeric | LEOKA assaults during hours 1801 to 2000 | auto |
| `time_of_assault_2001_to_2200` | numeric | LEOKA assaults during hours 2001 to 2200 | auto |
| `time_of_assault_2201_to_0000` | numeric | LEOKA assaults during hours 2201 to 0000 | auto |
| `one_man_veh_total_shift` | numeric | LEOKA patrol: one man veh  total shift | auto |
| `two_man_veh_total_shift` | numeric | LEOKA patrol: two man veh  total shift | auto |
| `one_man_foot_total_shift` | numeric | LEOKA patrol: one man foot  total shift | auto |
| `two_man_foot_total_shift` | numeric | LEOKA patrol: two man foot  total shift | auto |
| `other_patrols_total_shift` | numeric | LEOKA patrol: other patrols  total shift | auto |
| `total_patrols_veh_day_shift` | numeric | LEOKA total: patrols veh day shift | auto |
| `total_patrols_evening_shift` | numeric | LEOKA total: patrols evening shift | auto |
| `total_patrols_night_shift` | numeric | LEOKA total: patrols night shift | auto |
| `total_patrols_other_shift` | numeric | LEOKA total: patrols other shift | auto |
| `total_patrols_total_shift` | numeric | LEOKA total: patrols total shift | auto |
| `one_man_veh_day_shift` | numeric | LEOKA patrol: one man veh  day shift | auto |
| `one_man_veh_evening_shift` | numeric | LEOKA patrol: one man veh  evening shift | auto |
| `one_man_veh_night_shift` | numeric | LEOKA patrol: one man veh  night shift | auto |
| `one_man_veh_other_shift` | numeric | LEOKA patrol: one man veh  other shift | auto |
| `two_man_veh_day_shift` | numeric | LEOKA patrol: two man veh  day shift | auto |
| `two_man_veh_evening_shift` | numeric | LEOKA patrol: two man veh  evening shift | auto |
| `two_man_veh_night_shift` | numeric | LEOKA patrol: two man veh  night shift | auto |
| `two_man_veh_other_shift` | numeric | LEOKA patrol: two man veh  other shift | auto |
| `one_man_foot_day_shift` | numeric | LEOKA patrol: one man foot  day shift | auto |
| `one_man_foot_evening_shift` | numeric | LEOKA patrol: one man foot  evening shift | auto |
| `one_man_foot_night_shift` | numeric | LEOKA patrol: one man foot  night shift | auto |
| `one_man_foot_other_shift` | numeric | LEOKA patrol: one man foot  other shift | auto |
| `two_man_foot_day_shift` | numeric | LEOKA patrol: two man foot  day shift | auto |
| `two_man_foot_evening_shift` | numeric | LEOKA patrol: two man foot  evening shift | auto |
| `two_man_foot_night_shift` | numeric | LEOKA patrol: two man foot  night shift | auto |
| `two_man_foot_other_shift` | numeric | LEOKA patrol: two man foot  other shift | auto |
| `other_patrols_day_shift` | numeric | LEOKA patrol: other patrols  day shift | auto |
| `other_patrols_evening_shift` | numeric | LEOKA patrol: other patrols  evening shift | auto |
| `other_patrols_night_shift` | numeric | LEOKA patrol: other patrols  night shift | auto |
| `other_patrols_other_shift` | numeric | LEOKA patrol: other patrols  other shift | auto |

## `raw_data/protests/MastenPoirier_2020_FAS_replication_files/data/DMT2014.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `l_aadt_IH_exporter` | numeric | (mean) l_aadt_IH_exporter | stata |
| `exporter_fe_val_iv_qr_05` | numeric | (mean) exporter_fe_val_iv_qr_05 | stata |
| `l_mp_val_iv_qr_05_exporter` | numeric | Market access (export) | stata |
| `exporter_fe_tons_iv_qr_05` | numeric | (mean) exporter_fe_tons_iv_qr_05 | stata |
| `l_pop2000` | numeric | log 2000 population | stata |
| `l_pop1950` | numeric | log 1950 population | stata |
| `l_pop1920` | numeric | log 1920 population | stata |
| `l_emp07_cbp` | numeric | log employment | stata |
| `l_csa_hwy1947` | numeric | log 1947 highway km | stata |
| `l_csa_rail1898` | numeric | log 1898 railroad km | stata |
| `l_exploration` | numeric | log 1528-1850 exploration | stata |
| `l_sec_km_IH_07` | numeric | log highway km | stata |
| `l_slope` | numeric | log(Median Land Gradient) | stata |
| `l_water` | numeric | log(minimum dist. to water) | stata |
| `division` | numeric | Census division | auto |
| `l_pi_00` | numeric | log(personal income per capita,2000) | stata |
| `l_college_00` | numeric | log(\% with college degree,2000) | stata |
| `l_manshare2003` | numeric | log % manuf. emp. | stata |
| `l_wholesale` | numeric | log(\% wholesale emp.) | stata |

## `raw_data/protests/MastenPoirier_2020_FAS_replication_files/data/master_data.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `region` | numeric | Census region | auto |
| `exporter` | numeric | Exporter indicator (Masten-Poirier) | auto |
| `val_internal` | numeric | (max) val_internal | stata |
| `tons_internal` | numeric | (max) tons_internal | stata |
| `val_total_exporter` | numeric | Value of Total Shipments (exporter) | stata |
| `tons_total_exporter` | numeric | Weight of Total Shipments (exporter) | stata |
| `val_exporter` | numeric | Value of Truck Shipments (exporter) | stata |
| `tons_exporter` | numeric | Weight of Truck Shipments (exporter) | stata |
| `val2_exporter` | numeric | Value of Truck Shipments (inclusive,exporter) | stata |
| `tons2_exporter` | numeric | Weight of Truck Shipments (inclusive,exporter) | stata |
| `val_rail_exporter` | numeric | Value of Rail Shipments (exporter) | stata |
| `tons_rail_exporter` | numeric | Weight of Rail Shipments (exporter) | stata |
| `pop1990_exporter` | numeric | (mean) pop1990_exporter | stata |
| `pop2000_exporter` | numeric | (mean) pop2000_exporter | stata |
| `sec_km_IH_07_exporter` | numeric | Section km,2007 | stata |
| `rd_km_IH_07_exporter` | numeric | (mean) rd_km_IH_07_exporter | stata |
| `ln_km_IH_07_exporter` | numeric | (mean) ln_km_IH_07_exporter | stata |
| `sec_km_IHU_07_exporter` | numeric | (mean) sec_km_IHU_07_exporter | stata |
| `rd_km_IHU_07_exporter` | numeric | (mean) rd_km_IHU_07_exporter | stata |
| `ln_km_IHU_07_exporter` | numeric | (mean) ln_km_IHU_07_exporter | stata |
| `sec_km_IH_87_exporter` | numeric | (mean) sec_km_IH_87_exporter | stata |
| `rd_km_IH_87_exporter` | numeric | (mean) rd_km_IH_87_exporter | stata |
| `ln_km_IH_87_exporter` | numeric | (mean) ln_km_IH_87_exporter | stata |
| `sec_km_IHU_87_exporter` | numeric | (mean) sec_km_IHU_87_exporter | stata |
| `rd_km_IHU_87_exporter` | numeric | (mean) rd_km_IHU_87_exporter | stata |
| `ln_km_IHU_87_exporter` | numeric | (mean) ln_km_IHU_87_exporter | stata |
| `sec_km_IH_93_exporter` | numeric | (mean) sec_km_IH_93_exporter | stata |
| `rd_km_IH_93_exporter` | numeric | (mean) rd_km_IH_93_exporter | stata |
| `ln_km_IH_93_exporter` | numeric | (mean) ln_km_IH_93_exporter | stata |
| `sec_km_IHU_93_exporter` | numeric | (mean) sec_km_IHU_93_exporter | stata |
| `rd_km_IHU_93_exporter` | numeric | (mean) rd_km_IHU_93_exporter | stata |
| `ln_km_IHU_93_exporter` | numeric | (mean) ln_km_IHU_93_exporter | stata |
| `sec_km_IH_97_exporter` | numeric | (mean) sec_km_IH_97_exporter | stata |
| `rd_km_IH_97_exporter` | numeric | (mean) rd_km_IH_97_exporter | stata |
| `ln_km_IH_97_exporter` | numeric | (mean) ln_km_IH_97_exporter | stata |
| `sec_km_IHU_97_exporter` | numeric | (mean) sec_km_IHU_97_exporter | stata |
| `rd_km_IHU_97_exporter` | numeric | (mean) rd_km_IHU_97_exporter | stata |
| `ln_km_IHU_97_exporter` | numeric | (mean) ln_km_IHU_97_exporter | stata |
| `l_sec_km_IH_87_exporter` | numeric | (mean) l_sec_km_IH_87_exporter | stata |
| `l_rd_km_IH_87_exporter` | numeric | (mean) l_rd_km_IH_87_exporter | stata |
| `l_ln_km_IH_87_exporter` | numeric | (mean) l_ln_km_IH_87_exporter | stata |
| `l_sec_km_IH_93_exporter` | numeric | (mean) l_sec_km_IH_93_exporter | stata |
| `l_rd_km_IH_93_exporter` | numeric | (mean) l_rd_km_IH_93_exporter | stata |
| `l_ln_km_IH_93_exporter` | numeric | (mean) l_ln_km_IH_93_exporter | stata |
| `l_sec_km_IH_97_exporter` | numeric | (mean) l_sec_km_IH_97_exporter | stata |
| `l_rd_km_IH_97_exporter` | numeric | (mean) l_rd_km_IH_97_exporter | stata |
| `l_ln_km_IH_97_exporter` | numeric | (mean) l_ln_km_IH_97_exporter | stata |
| `l_sec_km_IH_07_exporter` | numeric | log (Section km,2007) | stata |
| `l_rd_km_IH_07_exporter` | numeric | (mean) l_rd_km_IH_07_exporter | stata |
| `l_ln_km_IH_07_exporter` | numeric | (mean) l_ln_km_IH_07_exporter | stata |
| `l_sec_km_IHU_87_exporter` | numeric | (mean) l_sec_km_IHU_87_exporter | stata |
| `l_rd_km_IHU_87_exporter` | numeric | (mean) l_rd_km_IHU_87_exporter | stata |
| `l_ln_km_IHU_87_exporter` | numeric | (mean) l_ln_km_IHU_87_exporter | stata |
| `l_sec_km_IHU_93_exporter` | numeric | (mean) l_sec_km_IHU_93_exporter | stata |
| `l_rd_km_IHU_93_exporter` | numeric | (mean) l_rd_km_IHU_93_exporter | stata |
| `l_ln_km_IHU_93_exporter` | numeric | (mean) l_ln_km_IHU_93_exporter | stata |
| `l_sec_km_IHU_97_exporter` | numeric | (mean) l_sec_km_IHU_97_exporter | stata |
| `l_rd_km_IHU_97_exporter` | numeric | (mean) l_rd_km_IHU_97_exporter | stata |
| `l_ln_km_IHU_97_exporter` | numeric | (mean) l_ln_km_IHU_97_exporter | stata |
| `l_sec_km_IHU_07_exporter` | numeric | log(Urban section km, 2007) | stata |
| `l_rd_km_IHU_07_exporter` | numeric | (mean) l_rd_km_IHU_07_exporter | stata |
| `l_ln_km_IHU_07_exporter` | numeric | (mean) l_ln_km_IHU_07_exporter | stata |
| `NBS_IH_road_km50_exporter` | numeric | (mean) NBS_IH_road_km50_exporter | stata |
| `NBS_IH_road_km57_exporter` | numeric | (mean) NBS_IH_road_km57_exporter | stata |
| `NBS_IH_road_km67_exporter` | numeric | (mean) NBS_IH_road_km67_exporter | stata |
| `NBS_IH_road_km77_exporter` | numeric | (mean) NBS_IH_road_km77_exporter | stata |
| `NBS_IH_road_km87_exporter` | numeric | (mean) NBS_IH_road_km87_exporter | stata |
| `NBS_IH_road_km93_exporter` | numeric | (mean) NBS_IH_road_km93_exporter | stata |
| `NBS_hwy1947_km50_exporter` | numeric | (mean) NBS_hwy1947_km50_exporter | stata |
| `NBS_hwy1947_km57_exporter` | numeric | (mean) NBS_hwy1947_km57_exporter | stata |
| `NBS_hwy1947_km67_exporter` | numeric | (mean) NBS_hwy1947_km67_exporter | stata |
| `NBS_hwy1947_km77_exporter` | numeric | (mean) NBS_hwy1947_km77_exporter | stata |
| `NBS_hwy1947_km87_exporter` | numeric | (mean) NBS_hwy1947_km87_exporter | stata |
| `NBS_hwy1947_km93_exporter` | numeric | (mean) NBS_hwy1947_km93_exporter | stata |
| `rail04_2_km_exporter` | numeric | (mean) rail04_2_km_exporter | stata |
| `rail04_km_exporter` | numeric | Railroad km, 2004 | stata |
| `csa_ua_hwy1947_exporter` | numeric | (mean) csa_ua_hwy1947_exporter | stata |
| `csa_ua_rail1898_exporter` | numeric | (mean) csa_ua_rail1898_exporter | stata |
| `csa_hwy1947_exporter` | numeric | 1947 highways | stata |
| `csa_rail1898_exporter` | numeric | 1898 railroads | stata |
| `cntr2rail1898_exporter` | numeric | (mean) cntr2rail1898_exporter | stata |
| `cntr2hwy1947_exporter` | numeric | (mean) cntr2hwy1947_exporter | stata |
| `cntr2IH05_exporter` | numeric | (mean) cntr2IH05_exporter | stata |
| `pix1528_exporter` | numeric | (mean) pix1528_exporter | stata |
| `pix1675_exporter` | numeric | (mean) pix1675_exporter | stata |
| `pix1800_exporter` | numeric | (mean) pix1800_exporter | stata |
| `pix1820_exporter` | numeric | (mean) pix1820_exporter | stata |
| `pix1835_exporter` | numeric | (mean) pix1835_exporter | stata |
| `l_pix1528_exporter` | numeric | (mean) l_pix1528_exporter | stata |
| `l_pix1675_exporter` | numeric | (mean) l_pix1675_exporter | stata |
| `l_pix1800_exporter` | numeric | (mean) l_pix1800_exporter | stata |
| `l_pix1820_exporter` | numeric | (mean) l_pix1820_exporter | stata |
| `l_pix1835_exporter` | numeric | (mean) l_pix1835_exporter | stata |
| `pix_exp_all_exporter` | numeric | (mean) pix_exp_all_exporter | stata |
| `l_pix_exp_all_exporter` | numeric | (mean) l_pix_exp_all_exporter | stata |
| `rail_1898_rays_exporter` | numeric | (mean) rail_1898_rays_exporter | stata |
| `hwy_1947_rays_exporter` | numeric | (mean) hwy_1947_rays_exporter | stata |
| `IH_2005_rays_exporter` | numeric | (mean) IH_2005_rays_exporter | stata |
| `rail2004_2_rays_exporter` | numeric | (mean) rail2004_2_rays_exporter | stata |
| `rail2004_1_rays_exporter` | numeric | (mean) rail2004_1_rays_exporter | stata |
| `l_aadt_IH_exporter` | numeric | (mean) l_aadt_IH_exporter | stata |
| `csa_area_exporter` | numeric | (mean) csa_area_exporter | stata |
| `pop25_80_exporter` | numeric | (mean) pop25_80_exporter | stata |
| `pop25_90_exporter` | numeric | (mean) pop25_90_exporter | stata |
| `pop25_00_exporter` | numeric | (mean) pop25_00_exporter | stata |
| `pop25_less9_80_exporter` | numeric | (mean) pop25_less9_80_exporter | stata |
| `pop25_less9_90_exporter` | numeric | (mean) pop25_less9_90_exporter | stata |
| `pop25_less9_00_exporter` | numeric | (mean) pop25_less9_00_exporter | stata |
| `pop25_somehs_80_exporter` | numeric | (mean) pop25_somehs_80_exporter | stata |
| `pop25_somehs_90_exporter` | numeric | (mean) pop25_somehs_90_exporter | stata |
| `pop25_somehs_00_exporter` | numeric | (mean) pop25_somehs_00_exporter | stata |
| `pop25_hs_80_exporter` | numeric | (mean) pop25_hs_80_exporter | stata |
| `pop25_hs_90_exporter` | numeric | (mean) pop25_hs_90_exporter | stata |
| `pop25_hs_00_exporter` | numeric | (mean) pop25_hs_00_exporter | stata |
| `pop25_somecoll_80_exporter` | numeric | (mean) pop25_somecoll_80_exporter | stata |
| `pop25_somecoll_90_exporter` | numeric | (mean) pop25_somecoll_90_exporter | stata |
| `pop25_somecoll_00_exporter` | numeric | (mean) pop25_somecoll_00_exporter | stata |
| `pop25_coll_80_exporter` | numeric | (mean) pop25_coll_80_exporter | stata |
| `pop25_coll_90_exporter` | numeric | (mean) pop25_coll_90_exporter | stata |
| `pop25_coll_00_exporter` | numeric | (mean) pop25_coll_00_exporter | stata |
| `pop25_grad_00_exporter` | numeric | (mean) pop25_grad_00_exporter | stata |
| `pop1619_90_exporter` | numeric | (mean) pop1619_90_exporter | stata |
| `pop1619_00_exporter` | numeric | (mean) pop1619_00_exporter | stata |
| `pop1619_hsdrop_90_exporter` | numeric | (mean) pop1619_hsdrop_90_exporter | stata |
| `pop1619_hsdrop_00_exporter` | numeric | (mean) pop1619_hsdrop_00_exporter | stata |
| `pi_70_exporter` | numeric | (mean) pi_70_exporter | stata |
| `pi_80_exporter` | numeric | (mean) pi_80_exporter | stata |
| `pi_90_exporter` | numeric | (mean) pi_90_exporter | stata |
| `pi_00_exporter` | numeric | (mean) pi_00_exporter | stata |
| `pop_70_exporter` | numeric | (mean) pop_70_exporter | stata |
| `pop_80_exporter` | numeric | (mean) pop_80_exporter | stata |
| `pop_90_exporter` | numeric | (mean) pop_90_exporter | stata |
| `pop_00_exporter` | numeric | (mean) pop_00_exporter | stata |
| `pop1920_exporter` | numeric | (mean) pop1920_exporter | stata |
| `pop1930_exporter` | numeric | (mean) pop1930_exporter | stata |
| `pop1940_exporter` | numeric | (mean) pop1940_exporter | stata |
| `pop1950_exporter` | numeric | (mean) pop1950_exporter | stata |
| `pop1960_exporter` | numeric | (mean) pop1960_exporter | stata |
| `pop1970_exporter` | numeric | (mean) pop1970_exporter | stata |
| `pop1980_exporter` | numeric | (mean) pop1980_exporter | stata |
| `ocean_dis_exporter` | numeric | (mean) ocean_dis_exporter | stata |
| `atl_dist_exporter` | numeric | (mean) atl_dist_exporter | stata |
| `pac_dist_exporter` | numeric | (mean) pac_dist_exporter | stata |
| `miss_dist_exporter` | numeric | (mean) miss_dist_exporter | stata |
| `gulf_dist_exporter` | numeric | (mean) gulf_dist_exporter | stata |
| `glake_dist_exporter` | numeric | (mean) glake_dist_exporter | stata |
| `slope_exporter` | numeric | (mean) slope_exporter | stata |
| `division_exporter` | numeric | (mean) division_exporter | stata |
| `est06_07_111_exporter` | numeric | (mean) est06_07_111_exporter | stata |
| `emp06_07_111_exporter` | numeric | (mean) emp06_07_111_exporter | stata |
| `emp96_97_111_exporter` | numeric | (mean) emp96_97_111_exporter | stata |
| `est96_97_111_exporter` | numeric | (mean) est96_97_111_exporter | stata |
| `emp87_88_111_exporter` | numeric | (mean) emp87_88_111_exporter | stata |
| `est87_88_111_exporter` | numeric | (mean) est87_88_111_exporter | stata |
| `emp77_78_111_exporter` | numeric | (mean) emp77_78_111_exporter | stata |
| `est77_78_111_exporter` | numeric | (mean) est77_78_111_exporter | stata |
| `emp70_71_111_exporter` | numeric | (mean) emp70_71_111_exporter | stata |
| `est70_71_111_exporter` | numeric | (mean) est70_71_111_exporter | stata |
| `emp56_111_exporter` | numeric | (mean) emp56_111_exporter | stata |
| `est56_111_exporter` | numeric | (mean) est56_111_exporter | stata |
| `est06_07_112_exporter` | numeric | (mean) est06_07_112_exporter | stata |
| `emp06_07_112_exporter` | numeric | (mean) emp06_07_112_exporter | stata |
| `emp96_97_112_exporter` | numeric | (mean) emp96_97_112_exporter | stata |
| `est96_97_112_exporter` | numeric | (mean) est96_97_112_exporter | stata |
| `emp87_88_112_exporter` | numeric | (mean) emp87_88_112_exporter | stata |
| `est87_88_112_exporter` | numeric | (mean) est87_88_112_exporter | stata |
| `emp77_78_112_exporter` | numeric | (mean) emp77_78_112_exporter | stata |
| `est77_78_112_exporter` | numeric | (mean) est77_78_112_exporter | stata |
| `emp70_71_112_exporter` | numeric | (mean) emp70_71_112_exporter | stata |
| `est70_71_112_exporter` | numeric | (mean) est70_71_112_exporter | stata |
| `emp56_112_exporter` | numeric | (mean) emp56_112_exporter | stata |
| `est56_112_exporter` | numeric | (mean) est56_112_exporter | stata |
| `est06_07_113_exporter` | numeric | (mean) est06_07_113_exporter | stata |
| `emp06_07_113_exporter` | numeric | (mean) emp06_07_113_exporter | stata |
| `emp96_97_113_exporter` | numeric | (mean) emp96_97_113_exporter | stata |
| `est96_97_113_exporter` | numeric | (mean) est96_97_113_exporter | stata |
| `emp87_88_113_exporter` | numeric | (mean) emp87_88_113_exporter | stata |
| `est87_88_113_exporter` | numeric | (mean) est87_88_113_exporter | stata |
| `emp77_78_113_exporter` | numeric | (mean) emp77_78_113_exporter | stata |
| `est77_78_113_exporter` | numeric | (mean) est77_78_113_exporter | stata |
| `emp70_71_113_exporter` | numeric | (mean) emp70_71_113_exporter | stata |
| `est70_71_113_exporter` | numeric | (mean) est70_71_113_exporter | stata |
| `emp56_113_exporter` | numeric | (mean) emp56_113_exporter | stata |
| `est56_113_exporter` | numeric | (mean) est56_113_exporter | stata |
| `est06_07_114_exporter` | numeric | (mean) est06_07_114_exporter | stata |
| `emp06_07_114_exporter` | numeric | (mean) emp06_07_114_exporter | stata |
| `emp96_97_114_exporter` | numeric | (mean) emp96_97_114_exporter | stata |
| `est96_97_114_exporter` | numeric | (mean) est96_97_114_exporter | stata |
| `emp87_88_114_exporter` | numeric | (mean) emp87_88_114_exporter | stata |
| `est87_88_114_exporter` | numeric | (mean) est87_88_114_exporter | stata |
| `emp77_78_114_exporter` | numeric | (mean) emp77_78_114_exporter | stata |
| `est77_78_114_exporter` | numeric | (mean) est77_78_114_exporter | stata |
| `emp70_71_114_exporter` | numeric | (mean) emp70_71_114_exporter | stata |
| `est70_71_114_exporter` | numeric | (mean) est70_71_114_exporter | stata |
| `emp56_114_exporter` | numeric | (mean) emp56_114_exporter | stata |
| `est56_114_exporter` | numeric | (mean) est56_114_exporter | stata |
| `est06_07_115_exporter` | numeric | (mean) est06_07_115_exporter | stata |
| `emp06_07_115_exporter` | numeric | (mean) emp06_07_115_exporter | stata |
| `emp96_97_115_exporter` | numeric | (mean) emp96_97_115_exporter | stata |
| `est96_97_115_exporter` | numeric | (mean) est96_97_115_exporter | stata |
| `emp87_88_115_exporter` | numeric | (mean) emp87_88_115_exporter | stata |
| `est87_88_115_exporter` | numeric | (mean) est87_88_115_exporter | stata |
| `emp77_78_115_exporter` | numeric | (mean) emp77_78_115_exporter | stata |
| `est77_78_115_exporter` | numeric | (mean) est77_78_115_exporter | stata |
| `emp70_71_115_exporter` | numeric | (mean) emp70_71_115_exporter | stata |
| `est70_71_115_exporter` | numeric | (mean) est70_71_115_exporter | stata |
| `emp56_115_exporter` | numeric | (mean) emp56_115_exporter | stata |
| `est56_115_exporter` | numeric | (mean) est56_115_exporter | stata |
| `est06_07_211_exporter` | numeric | (mean) est06_07_211_exporter | stata |
| `emp06_07_211_exporter` | numeric | (mean) emp06_07_211_exporter | stata |
| `emp96_97_211_exporter` | numeric | (mean) emp96_97_211_exporter | stata |
| `est96_97_211_exporter` | numeric | (mean) est96_97_211_exporter | stata |
| `emp87_88_211_exporter` | numeric | (mean) emp87_88_211_exporter | stata |
| `est87_88_211_exporter` | numeric | (mean) est87_88_211_exporter | stata |
| `emp77_78_211_exporter` | numeric | (mean) emp77_78_211_exporter | stata |
| `est77_78_211_exporter` | numeric | (mean) est77_78_211_exporter | stata |
| `emp70_71_211_exporter` | numeric | (mean) emp70_71_211_exporter | stata |
| `est70_71_211_exporter` | numeric | (mean) est70_71_211_exporter | stata |
| `emp56_211_exporter` | numeric | (mean) emp56_211_exporter | stata |
| `est56_211_exporter` | numeric | (mean) est56_211_exporter | stata |
| `est06_07_212_exporter` | numeric | (mean) est06_07_212_exporter | stata |
| `emp06_07_212_exporter` | numeric | (mean) emp06_07_212_exporter | stata |
| `emp96_97_212_exporter` | numeric | (mean) emp96_97_212_exporter | stata |
| `est96_97_212_exporter` | numeric | (mean) est96_97_212_exporter | stata |
| `emp87_88_212_exporter` | numeric | (mean) emp87_88_212_exporter | stata |
| `est87_88_212_exporter` | numeric | (mean) est87_88_212_exporter | stata |
| `emp77_78_212_exporter` | numeric | (mean) emp77_78_212_exporter | stata |
| `est77_78_212_exporter` | numeric | (mean) est77_78_212_exporter | stata |
| `emp70_71_212_exporter` | numeric | (mean) emp70_71_212_exporter | stata |
| `est70_71_212_exporter` | numeric | (mean) est70_71_212_exporter | stata |
| `emp56_212_exporter` | numeric | (mean) emp56_212_exporter | stata |
| `est56_212_exporter` | numeric | (mean) est56_212_exporter | stata |
| `est06_07_213_exporter` | numeric | (mean) est06_07_213_exporter | stata |
| `emp06_07_213_exporter` | numeric | (mean) emp06_07_213_exporter | stata |
| `emp96_97_213_exporter` | numeric | (mean) emp96_97_213_exporter | stata |
| `est96_97_213_exporter` | numeric | (mean) est96_97_213_exporter | stata |
| `emp87_88_213_exporter` | numeric | (mean) emp87_88_213_exporter | stata |
| `est87_88_213_exporter` | numeric | (mean) est87_88_213_exporter | stata |
| `emp77_78_213_exporter` | numeric | (mean) emp77_78_213_exporter | stata |
| `est77_78_213_exporter` | numeric | (mean) est77_78_213_exporter | stata |
| `emp70_71_213_exporter` | numeric | (mean) emp70_71_213_exporter | stata |
| `est70_71_213_exporter` | numeric | (mean) est70_71_213_exporter | stata |
| `emp56_213_exporter` | numeric | (mean) emp56_213_exporter | stata |
| `est56_213_exporter` | numeric | (mean) est56_213_exporter | stata |
| `est06_07_221_exporter` | numeric | (mean) est06_07_221_exporter | stata |
| `emp06_07_221_exporter` | numeric | (mean) emp06_07_221_exporter | stata |
| `emp96_97_221_exporter` | numeric | (mean) emp96_97_221_exporter | stata |
| `est96_97_221_exporter` | numeric | (mean) est96_97_221_exporter | stata |
| `emp87_88_221_exporter` | numeric | (mean) emp87_88_221_exporter | stata |
| `est87_88_221_exporter` | numeric | (mean) est87_88_221_exporter | stata |
| `emp77_78_221_exporter` | numeric | (mean) emp77_78_221_exporter | stata |
| `est77_78_221_exporter` | numeric | (mean) est77_78_221_exporter | stata |
| `emp70_71_221_exporter` | numeric | (mean) emp70_71_221_exporter | stata |
| `est70_71_221_exporter` | numeric | (mean) est70_71_221_exporter | stata |
| `emp56_221_exporter` | numeric | (mean) emp56_221_exporter | stata |
| `est56_221_exporter` | numeric | (mean) est56_221_exporter | stata |
| `est06_07_236_exporter` | numeric | (mean) est06_07_236_exporter | stata |
| `emp06_07_236_exporter` | numeric | (mean) emp06_07_236_exporter | stata |
| `emp96_97_236_exporter` | numeric | (mean) emp96_97_236_exporter | stata |
| `est96_97_236_exporter` | numeric | (mean) est96_97_236_exporter | stata |
| `emp87_88_236_exporter` | numeric | (mean) emp87_88_236_exporter | stata |
| `est87_88_236_exporter` | numeric | (mean) est87_88_236_exporter | stata |
| `emp77_78_236_exporter` | numeric | (mean) emp77_78_236_exporter | stata |
| `est77_78_236_exporter` | numeric | (mean) est77_78_236_exporter | stata |
| `emp70_71_236_exporter` | numeric | (mean) emp70_71_236_exporter | stata |
| `est70_71_236_exporter` | numeric | (mean) est70_71_236_exporter | stata |
| `emp56_236_exporter` | numeric | (mean) emp56_236_exporter | stata |
| `est56_236_exporter` | numeric | (mean) est56_236_exporter | stata |
| `est06_07_237_exporter` | numeric | (mean) est06_07_237_exporter | stata |
| `emp06_07_237_exporter` | numeric | (mean) emp06_07_237_exporter | stata |
| `emp96_97_237_exporter` | numeric | (mean) emp96_97_237_exporter | stata |
| `est96_97_237_exporter` | numeric | (mean) est96_97_237_exporter | stata |
| `emp87_88_237_exporter` | numeric | (mean) emp87_88_237_exporter | stata |
| `est87_88_237_exporter` | numeric | (mean) est87_88_237_exporter | stata |
| `emp77_78_237_exporter` | numeric | (mean) emp77_78_237_exporter | stata |
| `est77_78_237_exporter` | numeric | (mean) est77_78_237_exporter | stata |
| `emp70_71_237_exporter` | numeric | (mean) emp70_71_237_exporter | stata |
| `est70_71_237_exporter` | numeric | (mean) est70_71_237_exporter | stata |
| `emp56_237_exporter` | numeric | (mean) emp56_237_exporter | stata |
| `est56_237_exporter` | numeric | (mean) est56_237_exporter | stata |
| `est06_07_238_exporter` | numeric | (mean) est06_07_238_exporter | stata |
| `emp06_07_238_exporter` | numeric | (mean) emp06_07_238_exporter | stata |
| `emp96_97_238_exporter` | numeric | (mean) emp96_97_238_exporter | stata |
| `est96_97_238_exporter` | numeric | (mean) est96_97_238_exporter | stata |
| `emp87_88_238_exporter` | numeric | (mean) emp87_88_238_exporter | stata |
| `est87_88_238_exporter` | numeric | (mean) est87_88_238_exporter | stata |
| `emp77_78_238_exporter` | numeric | (mean) emp77_78_238_exporter | stata |
| `est77_78_238_exporter` | numeric | (mean) est77_78_238_exporter | stata |
| `emp70_71_238_exporter` | numeric | (mean) emp70_71_238_exporter | stata |
| `est70_71_238_exporter` | numeric | (mean) est70_71_238_exporter | stata |
| `emp56_238_exporter` | numeric | (mean) emp56_238_exporter | stata |
| `est56_238_exporter` | numeric | (mean) est56_238_exporter | stata |
| `est06_07_311_exporter` | numeric | (mean) est06_07_311_exporter | stata |
| `emp06_07_311_exporter` | numeric | (mean) emp06_07_311_exporter | stata |
| `emp96_97_311_exporter` | numeric | (mean) emp96_97_311_exporter | stata |
| `est96_97_311_exporter` | numeric | (mean) est96_97_311_exporter | stata |
| `emp87_88_311_exporter` | numeric | (mean) emp87_88_311_exporter | stata |
| `est87_88_311_exporter` | numeric | (mean) est87_88_311_exporter | stata |
| `emp77_78_311_exporter` | numeric | (mean) emp77_78_311_exporter | stata |
| `est77_78_311_exporter` | numeric | (mean) est77_78_311_exporter | stata |
| `emp70_71_311_exporter` | numeric | (mean) emp70_71_311_exporter | stata |
| `est70_71_311_exporter` | numeric | (mean) est70_71_311_exporter | stata |
| `emp56_311_exporter` | numeric | (mean) emp56_311_exporter | stata |
| `est56_311_exporter` | numeric | (mean) est56_311_exporter | stata |
| `est06_07_312_exporter` | numeric | (mean) est06_07_312_exporter | stata |
| `emp06_07_312_exporter` | numeric | (mean) emp06_07_312_exporter | stata |
| `emp96_97_312_exporter` | numeric | (mean) emp96_97_312_exporter | stata |
| `est96_97_312_exporter` | numeric | (mean) est96_97_312_exporter | stata |
| `emp87_88_312_exporter` | numeric | (mean) emp87_88_312_exporter | stata |
| `est87_88_312_exporter` | numeric | (mean) est87_88_312_exporter | stata |
| `emp77_78_312_exporter` | numeric | (mean) emp77_78_312_exporter | stata |
| `est77_78_312_exporter` | numeric | (mean) est77_78_312_exporter | stata |
| `emp70_71_312_exporter` | numeric | (mean) emp70_71_312_exporter | stata |
| `est70_71_312_exporter` | numeric | (mean) est70_71_312_exporter | stata |
| `emp56_312_exporter` | numeric | (mean) emp56_312_exporter | stata |
| `est56_312_exporter` | numeric | (mean) est56_312_exporter | stata |
| `est06_07_313_exporter` | numeric | (mean) est06_07_313_exporter | stata |
| `emp06_07_313_exporter` | numeric | (mean) emp06_07_313_exporter | stata |
| `emp96_97_313_exporter` | numeric | (mean) emp96_97_313_exporter | stata |
| `est96_97_313_exporter` | numeric | (mean) est96_97_313_exporter | stata |
| `emp87_88_313_exporter` | numeric | (mean) emp87_88_313_exporter | stata |
| `est87_88_313_exporter` | numeric | (mean) est87_88_313_exporter | stata |
| `emp77_78_313_exporter` | numeric | (mean) emp77_78_313_exporter | stata |
| `est77_78_313_exporter` | numeric | (mean) est77_78_313_exporter | stata |
| `emp70_71_313_exporter` | numeric | (mean) emp70_71_313_exporter | stata |
| `est70_71_313_exporter` | numeric | (mean) est70_71_313_exporter | stata |
| `emp56_313_exporter` | numeric | (mean) emp56_313_exporter | stata |
| `est56_313_exporter` | numeric | (mean) est56_313_exporter | stata |
| `est06_07_314_exporter` | numeric | (mean) est06_07_314_exporter | stata |
| `emp06_07_314_exporter` | numeric | (mean) emp06_07_314_exporter | stata |
| `emp96_97_314_exporter` | numeric | (mean) emp96_97_314_exporter | stata |
| `est96_97_314_exporter` | numeric | (mean) est96_97_314_exporter | stata |
| `emp87_88_314_exporter` | numeric | (mean) emp87_88_314_exporter | stata |
| `est87_88_314_exporter` | numeric | (mean) est87_88_314_exporter | stata |
| `emp77_78_314_exporter` | numeric | (mean) emp77_78_314_exporter | stata |
| `est77_78_314_exporter` | numeric | (mean) est77_78_314_exporter | stata |
| `emp70_71_314_exporter` | numeric | (mean) emp70_71_314_exporter | stata |
| `est70_71_314_exporter` | numeric | (mean) est70_71_314_exporter | stata |
| `emp56_314_exporter` | numeric | (mean) emp56_314_exporter | stata |
| `est56_314_exporter` | numeric | (mean) est56_314_exporter | stata |
| `est06_07_315_exporter` | numeric | (mean) est06_07_315_exporter | stata |
| `emp06_07_315_exporter` | numeric | (mean) emp06_07_315_exporter | stata |
| `emp96_97_315_exporter` | numeric | (mean) emp96_97_315_exporter | stata |
| `est96_97_315_exporter` | numeric | (mean) est96_97_315_exporter | stata |
| `emp87_88_315_exporter` | numeric | (mean) emp87_88_315_exporter | stata |
| `est87_88_315_exporter` | numeric | (mean) est87_88_315_exporter | stata |
| `emp77_78_315_exporter` | numeric | (mean) emp77_78_315_exporter | stata |
| `est77_78_315_exporter` | numeric | (mean) est77_78_315_exporter | stata |
| `emp70_71_315_exporter` | numeric | (mean) emp70_71_315_exporter | stata |
| `est70_71_315_exporter` | numeric | (mean) est70_71_315_exporter | stata |
| `emp56_315_exporter` | numeric | (mean) emp56_315_exporter | stata |
| `est56_315_exporter` | numeric | (mean) est56_315_exporter | stata |
| `est06_07_316_exporter` | numeric | (mean) est06_07_316_exporter | stata |
| `emp06_07_316_exporter` | numeric | (mean) emp06_07_316_exporter | stata |
| `emp96_97_316_exporter` | numeric | (mean) emp96_97_316_exporter | stata |
| `est96_97_316_exporter` | numeric | (mean) est96_97_316_exporter | stata |
| `emp87_88_316_exporter` | numeric | (mean) emp87_88_316_exporter | stata |
| `est87_88_316_exporter` | numeric | (mean) est87_88_316_exporter | stata |
| `emp77_78_316_exporter` | numeric | (mean) emp77_78_316_exporter | stata |
| `est77_78_316_exporter` | numeric | (mean) est77_78_316_exporter | stata |
| `emp70_71_316_exporter` | numeric | (mean) emp70_71_316_exporter | stata |
| `est70_71_316_exporter` | numeric | (mean) est70_71_316_exporter | stata |
| `emp56_316_exporter` | numeric | (mean) emp56_316_exporter | stata |
| `est56_316_exporter` | numeric | (mean) est56_316_exporter | stata |
| `est06_07_321_exporter` | numeric | (mean) est06_07_321_exporter | stata |
| `emp06_07_321_exporter` | numeric | (mean) emp06_07_321_exporter | stata |
| `emp96_97_321_exporter` | numeric | (mean) emp96_97_321_exporter | stata |
| `est96_97_321_exporter` | numeric | (mean) est96_97_321_exporter | stata |
| `emp87_88_321_exporter` | numeric | (mean) emp87_88_321_exporter | stata |
| `est87_88_321_exporter` | numeric | (mean) est87_88_321_exporter | stata |
| `emp77_78_321_exporter` | numeric | (mean) emp77_78_321_exporter | stata |
| `est77_78_321_exporter` | numeric | (mean) est77_78_321_exporter | stata |
| `emp70_71_321_exporter` | numeric | (mean) emp70_71_321_exporter | stata |
| `est70_71_321_exporter` | numeric | (mean) est70_71_321_exporter | stata |
| `emp56_321_exporter` | numeric | (mean) emp56_321_exporter | stata |
| `est56_321_exporter` | numeric | (mean) est56_321_exporter | stata |
| `est06_07_322_exporter` | numeric | (mean) est06_07_322_exporter | stata |
| `emp06_07_322_exporter` | numeric | (mean) emp06_07_322_exporter | stata |
| `emp96_97_322_exporter` | numeric | (mean) emp96_97_322_exporter | stata |
| `est96_97_322_exporter` | numeric | (mean) est96_97_322_exporter | stata |
| `emp87_88_322_exporter` | numeric | (mean) emp87_88_322_exporter | stata |
| `est87_88_322_exporter` | numeric | (mean) est87_88_322_exporter | stata |
| `emp77_78_322_exporter` | numeric | (mean) emp77_78_322_exporter | stata |
| `est77_78_322_exporter` | numeric | (mean) est77_78_322_exporter | stata |
| `emp70_71_322_exporter` | numeric | (mean) emp70_71_322_exporter | stata |
| `est70_71_322_exporter` | numeric | (mean) est70_71_322_exporter | stata |
| `emp56_322_exporter` | numeric | (mean) emp56_322_exporter | stata |
| `est56_322_exporter` | numeric | (mean) est56_322_exporter | stata |
| `est06_07_323_exporter` | numeric | (mean) est06_07_323_exporter | stata |
| `emp06_07_323_exporter` | numeric | (mean) emp06_07_323_exporter | stata |
| `emp96_97_323_exporter` | numeric | (mean) emp96_97_323_exporter | stata |
| `est96_97_323_exporter` | numeric | (mean) est96_97_323_exporter | stata |
| `emp87_88_323_exporter` | numeric | (mean) emp87_88_323_exporter | stata |
| `est87_88_323_exporter` | numeric | (mean) est87_88_323_exporter | stata |
| `emp77_78_323_exporter` | numeric | (mean) emp77_78_323_exporter | stata |
| `est77_78_323_exporter` | numeric | (mean) est77_78_323_exporter | stata |
| `emp70_71_323_exporter` | numeric | (mean) emp70_71_323_exporter | stata |
| `est70_71_323_exporter` | numeric | (mean) est70_71_323_exporter | stata |
| `emp56_323_exporter` | numeric | (mean) emp56_323_exporter | stata |
| `est56_323_exporter` | numeric | (mean) est56_323_exporter | stata |
| `est06_07_324_exporter` | numeric | (mean) est06_07_324_exporter | stata |
| `emp06_07_324_exporter` | numeric | (mean) emp06_07_324_exporter | stata |
| `emp96_97_324_exporter` | numeric | (mean) emp96_97_324_exporter | stata |
| `est96_97_324_exporter` | numeric | (mean) est96_97_324_exporter | stata |
| `emp87_88_324_exporter` | numeric | (mean) emp87_88_324_exporter | stata |
| `est87_88_324_exporter` | numeric | (mean) est87_88_324_exporter | stata |
| `emp77_78_324_exporter` | numeric | (mean) emp77_78_324_exporter | stata |
| `est77_78_324_exporter` | numeric | (mean) est77_78_324_exporter | stata |
| `emp70_71_324_exporter` | numeric | (mean) emp70_71_324_exporter | stata |
| `est70_71_324_exporter` | numeric | (mean) est70_71_324_exporter | stata |
| `emp56_324_exporter` | numeric | (mean) emp56_324_exporter | stata |
| `est56_324_exporter` | numeric | (mean) est56_324_exporter | stata |
| `est06_07_325_exporter` | numeric | (mean) est06_07_325_exporter | stata |
| `emp06_07_325_exporter` | numeric | (mean) emp06_07_325_exporter | stata |
| `emp96_97_325_exporter` | numeric | (mean) emp96_97_325_exporter | stata |
| `est96_97_325_exporter` | numeric | (mean) est96_97_325_exporter | stata |
| `emp87_88_325_exporter` | numeric | (mean) emp87_88_325_exporter | stata |
| `est87_88_325_exporter` | numeric | (mean) est87_88_325_exporter | stata |
| `emp77_78_325_exporter` | numeric | (mean) emp77_78_325_exporter | stata |
| `est77_78_325_exporter` | numeric | (mean) est77_78_325_exporter | stata |
| `emp70_71_325_exporter` | numeric | (mean) emp70_71_325_exporter | stata |
| `est70_71_325_exporter` | numeric | (mean) est70_71_325_exporter | stata |
| `emp56_325_exporter` | numeric | (mean) emp56_325_exporter | stata |
| `est56_325_exporter` | numeric | (mean) est56_325_exporter | stata |
| `est06_07_326_exporter` | numeric | (mean) est06_07_326_exporter | stata |
| `emp06_07_326_exporter` | numeric | (mean) emp06_07_326_exporter | stata |
| `emp96_97_326_exporter` | numeric | (mean) emp96_97_326_exporter | stata |
| `est96_97_326_exporter` | numeric | (mean) est96_97_326_exporter | stata |
| `emp87_88_326_exporter` | numeric | (mean) emp87_88_326_exporter | stata |
| `est87_88_326_exporter` | numeric | (mean) est87_88_326_exporter | stata |
| `emp77_78_326_exporter` | numeric | (mean) emp77_78_326_exporter | stata |
| `est77_78_326_exporter` | numeric | (mean) est77_78_326_exporter | stata |
| `emp70_71_326_exporter` | numeric | (mean) emp70_71_326_exporter | stata |
| `est70_71_326_exporter` | numeric | (mean) est70_71_326_exporter | stata |
| `emp56_326_exporter` | numeric | (mean) emp56_326_exporter | stata |
| `est56_326_exporter` | numeric | (mean) est56_326_exporter | stata |
| `est06_07_327_exporter` | numeric | (mean) est06_07_327_exporter | stata |
| `emp06_07_327_exporter` | numeric | (mean) emp06_07_327_exporter | stata |
| `emp96_97_327_exporter` | numeric | (mean) emp96_97_327_exporter | stata |
| `est96_97_327_exporter` | numeric | (mean) est96_97_327_exporter | stata |
| `emp87_88_327_exporter` | numeric | (mean) emp87_88_327_exporter | stata |
| `est87_88_327_exporter` | numeric | (mean) est87_88_327_exporter | stata |
| `emp77_78_327_exporter` | numeric | (mean) emp77_78_327_exporter | stata |
| `est77_78_327_exporter` | numeric | (mean) est77_78_327_exporter | stata |
| `emp70_71_327_exporter` | numeric | (mean) emp70_71_327_exporter | stata |
| `est70_71_327_exporter` | numeric | (mean) est70_71_327_exporter | stata |
| `emp56_327_exporter` | numeric | (mean) emp56_327_exporter | stata |
| `est56_327_exporter` | numeric | (mean) est56_327_exporter | stata |
| `est06_07_331_exporter` | numeric | (mean) est06_07_331_exporter | stata |
| `emp06_07_331_exporter` | numeric | (mean) emp06_07_331_exporter | stata |
| `emp96_97_331_exporter` | numeric | (mean) emp96_97_331_exporter | stata |
| `est96_97_331_exporter` | numeric | (mean) est96_97_331_exporter | stata |
| `emp87_88_331_exporter` | numeric | (mean) emp87_88_331_exporter | stata |
| `est87_88_331_exporter` | numeric | (mean) est87_88_331_exporter | stata |
| `emp77_78_331_exporter` | numeric | (mean) emp77_78_331_exporter | stata |
| `est77_78_331_exporter` | numeric | (mean) est77_78_331_exporter | stata |
| `emp70_71_331_exporter` | numeric | (mean) emp70_71_331_exporter | stata |
| `est70_71_331_exporter` | numeric | (mean) est70_71_331_exporter | stata |
| `emp56_331_exporter` | numeric | (mean) emp56_331_exporter | stata |
| `est56_331_exporter` | numeric | (mean) est56_331_exporter | stata |
| `est06_07_332_exporter` | numeric | (mean) est06_07_332_exporter | stata |
| `emp06_07_332_exporter` | numeric | (mean) emp06_07_332_exporter | stata |
| `emp96_97_332_exporter` | numeric | (mean) emp96_97_332_exporter | stata |
| `est96_97_332_exporter` | numeric | (mean) est96_97_332_exporter | stata |
| `emp87_88_332_exporter` | numeric | (mean) emp87_88_332_exporter | stata |
| `est87_88_332_exporter` | numeric | (mean) est87_88_332_exporter | stata |
| `emp77_78_332_exporter` | numeric | (mean) emp77_78_332_exporter | stata |
| `est77_78_332_exporter` | numeric | (mean) est77_78_332_exporter | stata |
| `emp70_71_332_exporter` | numeric | (mean) emp70_71_332_exporter | stata |
| `est70_71_332_exporter` | numeric | (mean) est70_71_332_exporter | stata |
| `emp56_332_exporter` | numeric | (mean) emp56_332_exporter | stata |
| `est56_332_exporter` | numeric | (mean) est56_332_exporter | stata |
| `est06_07_333_exporter` | numeric | (mean) est06_07_333_exporter | stata |
| `emp06_07_333_exporter` | numeric | (mean) emp06_07_333_exporter | stata |
| `emp96_97_333_exporter` | numeric | (mean) emp96_97_333_exporter | stata |
| `est96_97_333_exporter` | numeric | (mean) est96_97_333_exporter | stata |
| `emp87_88_333_exporter` | numeric | (mean) emp87_88_333_exporter | stata |
| `est87_88_333_exporter` | numeric | (mean) est87_88_333_exporter | stata |
| `emp77_78_333_exporter` | numeric | (mean) emp77_78_333_exporter | stata |
| `est77_78_333_exporter` | numeric | (mean) est77_78_333_exporter | stata |
| `emp70_71_333_exporter` | numeric | (mean) emp70_71_333_exporter | stata |
| `est70_71_333_exporter` | numeric | (mean) est70_71_333_exporter | stata |
| `emp56_333_exporter` | numeric | (mean) emp56_333_exporter | stata |
| `est56_333_exporter` | numeric | (mean) est56_333_exporter | stata |
| `est06_07_334_exporter` | numeric | (mean) est06_07_334_exporter | stata |
| `emp06_07_334_exporter` | numeric | (mean) emp06_07_334_exporter | stata |
| `emp96_97_334_exporter` | numeric | (mean) emp96_97_334_exporter | stata |
| `est96_97_334_exporter` | numeric | (mean) est96_97_334_exporter | stata |
| `emp87_88_334_exporter` | numeric | (mean) emp87_88_334_exporter | stata |
| `est87_88_334_exporter` | numeric | (mean) est87_88_334_exporter | stata |
| `emp77_78_334_exporter` | numeric | (mean) emp77_78_334_exporter | stata |
| `est77_78_334_exporter` | numeric | (mean) est77_78_334_exporter | stata |
| `emp70_71_334_exporter` | numeric | (mean) emp70_71_334_exporter | stata |
| `est70_71_334_exporter` | numeric | (mean) est70_71_334_exporter | stata |
| `emp56_334_exporter` | numeric | (mean) emp56_334_exporter | stata |
| `est56_334_exporter` | numeric | (mean) est56_334_exporter | stata |
| `est06_07_335_exporter` | numeric | (mean) est06_07_335_exporter | stata |
| `emp06_07_335_exporter` | numeric | (mean) emp06_07_335_exporter | stata |
| `emp96_97_335_exporter` | numeric | (mean) emp96_97_335_exporter | stata |
| `est96_97_335_exporter` | numeric | (mean) est96_97_335_exporter | stata |
| `emp87_88_335_exporter` | numeric | (mean) emp87_88_335_exporter | stata |
| `est87_88_335_exporter` | numeric | (mean) est87_88_335_exporter | stata |
| `emp77_78_335_exporter` | numeric | (mean) emp77_78_335_exporter | stata |
| `est77_78_335_exporter` | numeric | (mean) est77_78_335_exporter | stata |
| `emp70_71_335_exporter` | numeric | (mean) emp70_71_335_exporter | stata |
| `est70_71_335_exporter` | numeric | (mean) est70_71_335_exporter | stata |
| `emp56_335_exporter` | numeric | (mean) emp56_335_exporter | stata |
| `est56_335_exporter` | numeric | (mean) est56_335_exporter | stata |
| `est06_07_336_exporter` | numeric | (mean) est06_07_336_exporter | stata |
| `emp06_07_336_exporter` | numeric | (mean) emp06_07_336_exporter | stata |
| `emp96_97_336_exporter` | numeric | (mean) emp96_97_336_exporter | stata |
| `est96_97_336_exporter` | numeric | (mean) est96_97_336_exporter | stata |
| `emp87_88_336_exporter` | numeric | (mean) emp87_88_336_exporter | stata |
| `est87_88_336_exporter` | numeric | (mean) est87_88_336_exporter | stata |
| `emp77_78_336_exporter` | numeric | (mean) emp77_78_336_exporter | stata |
| `est77_78_336_exporter` | numeric | (mean) est77_78_336_exporter | stata |
| `emp70_71_336_exporter` | numeric | (mean) emp70_71_336_exporter | stata |
| `est70_71_336_exporter` | numeric | (mean) est70_71_336_exporter | stata |
| `emp56_336_exporter` | numeric | (mean) emp56_336_exporter | stata |
| `est56_336_exporter` | numeric | (mean) est56_336_exporter | stata |
| `est06_07_337_exporter` | numeric | (mean) est06_07_337_exporter | stata |
| `emp06_07_337_exporter` | numeric | (mean) emp06_07_337_exporter | stata |
| `emp96_97_337_exporter` | numeric | (mean) emp96_97_337_exporter | stata |
| `est96_97_337_exporter` | numeric | (mean) est96_97_337_exporter | stata |
| `emp87_88_337_exporter` | numeric | (mean) emp87_88_337_exporter | stata |
| `est87_88_337_exporter` | numeric | (mean) est87_88_337_exporter | stata |
| `emp77_78_337_exporter` | numeric | (mean) emp77_78_337_exporter | stata |
| `est77_78_337_exporter` | numeric | (mean) est77_78_337_exporter | stata |
| `emp70_71_337_exporter` | numeric | (mean) emp70_71_337_exporter | stata |
| `est70_71_337_exporter` | numeric | (mean) est70_71_337_exporter | stata |
| `emp56_337_exporter` | numeric | (mean) emp56_337_exporter | stata |
| `est56_337_exporter` | numeric | (mean) est56_337_exporter | stata |
| `est06_07_339_exporter` | numeric | (mean) est06_07_339_exporter | stata |
| `emp06_07_339_exporter` | numeric | (mean) emp06_07_339_exporter | stata |
| `emp96_97_339_exporter` | numeric | (mean) emp96_97_339_exporter | stata |
| `est96_97_339_exporter` | numeric | (mean) est96_97_339_exporter | stata |
| `emp87_88_339_exporter` | numeric | (mean) emp87_88_339_exporter | stata |
| `est87_88_339_exporter` | numeric | (mean) est87_88_339_exporter | stata |
| `emp77_78_339_exporter` | numeric | (mean) emp77_78_339_exporter | stata |
| `est77_78_339_exporter` | numeric | (mean) est77_78_339_exporter | stata |
| `emp70_71_339_exporter` | numeric | (mean) emp70_71_339_exporter | stata |
| `est70_71_339_exporter` | numeric | (mean) est70_71_339_exporter | stata |
| `emp56_339_exporter` | numeric | (mean) emp56_339_exporter | stata |
| `est56_339_exporter` | numeric | (mean) est56_339_exporter | stata |
| `est06_07_423_exporter` | numeric | (mean) est06_07_423_exporter | stata |
| `emp06_07_423_exporter` | numeric | (mean) emp06_07_423_exporter | stata |
| `emp96_97_423_exporter` | numeric | (mean) emp96_97_423_exporter | stata |
| `est96_97_423_exporter` | numeric | (mean) est96_97_423_exporter | stata |
| `emp87_88_423_exporter` | numeric | (mean) emp87_88_423_exporter | stata |
| `est87_88_423_exporter` | numeric | (mean) est87_88_423_exporter | stata |
| `emp77_78_423_exporter` | numeric | (mean) emp77_78_423_exporter | stata |
| `est77_78_423_exporter` | numeric | (mean) est77_78_423_exporter | stata |
| `emp70_71_423_exporter` | numeric | (mean) emp70_71_423_exporter | stata |
| `est70_71_423_exporter` | numeric | (mean) est70_71_423_exporter | stata |
| `emp56_423_exporter` | numeric | (mean) emp56_423_exporter | stata |
| `est56_423_exporter` | numeric | (mean) est56_423_exporter | stata |
| `est06_07_424_exporter` | numeric | (mean) est06_07_424_exporter | stata |
| `emp06_07_424_exporter` | numeric | (mean) emp06_07_424_exporter | stata |
| `emp96_97_424_exporter` | numeric | (mean) emp96_97_424_exporter | stata |
| `est96_97_424_exporter` | numeric | (mean) est96_97_424_exporter | stata |
| `emp87_88_424_exporter` | numeric | (mean) emp87_88_424_exporter | stata |
| `est87_88_424_exporter` | numeric | (mean) est87_88_424_exporter | stata |
| `emp77_78_424_exporter` | numeric | (mean) emp77_78_424_exporter | stata |
| `est77_78_424_exporter` | numeric | (mean) est77_78_424_exporter | stata |
| `emp70_71_424_exporter` | numeric | (mean) emp70_71_424_exporter | stata |
| `est70_71_424_exporter` | numeric | (mean) est70_71_424_exporter | stata |
| `emp56_424_exporter` | numeric | (mean) emp56_424_exporter | stata |
| `est56_424_exporter` | numeric | (mean) est56_424_exporter | stata |
| `est06_07_425_exporter` | numeric | (mean) est06_07_425_exporter | stata |
| `emp06_07_425_exporter` | numeric | (mean) emp06_07_425_exporter | stata |
| `emp96_97_425_exporter` | numeric | (mean) emp96_97_425_exporter | stata |
| `est96_97_425_exporter` | numeric | (mean) est96_97_425_exporter | stata |
| `emp87_88_425_exporter` | numeric | (mean) emp87_88_425_exporter | stata |
| `est87_88_425_exporter` | numeric | (mean) est87_88_425_exporter | stata |
| `emp77_78_425_exporter` | numeric | (mean) emp77_78_425_exporter | stata |
| `est77_78_425_exporter` | numeric | (mean) est77_78_425_exporter | stata |
| `emp70_71_425_exporter` | numeric | (mean) emp70_71_425_exporter | stata |
| `est70_71_425_exporter` | numeric | (mean) est70_71_425_exporter | stata |
| `emp56_425_exporter` | numeric | (mean) emp56_425_exporter | stata |
| `est56_425_exporter` | numeric | (mean) est56_425_exporter | stata |
| `est06_07_441_exporter` | numeric | (mean) est06_07_441_exporter | stata |
| `emp06_07_441_exporter` | numeric | (mean) emp06_07_441_exporter | stata |
| `emp96_97_441_exporter` | numeric | (mean) emp96_97_441_exporter | stata |
| `est96_97_441_exporter` | numeric | (mean) est96_97_441_exporter | stata |
| `emp87_88_441_exporter` | numeric | (mean) emp87_88_441_exporter | stata |
| `est87_88_441_exporter` | numeric | (mean) est87_88_441_exporter | stata |
| `emp77_78_441_exporter` | numeric | (mean) emp77_78_441_exporter | stata |
| `est77_78_441_exporter` | numeric | (mean) est77_78_441_exporter | stata |
| `emp70_71_441_exporter` | numeric | (mean) emp70_71_441_exporter | stata |
| `est70_71_441_exporter` | numeric | (mean) est70_71_441_exporter | stata |
| `emp56_441_exporter` | numeric | (mean) emp56_441_exporter | stata |
| `est56_441_exporter` | numeric | (mean) est56_441_exporter | stata |
| `est06_07_442_exporter` | numeric | (mean) est06_07_442_exporter | stata |
| `emp06_07_442_exporter` | numeric | (mean) emp06_07_442_exporter | stata |
| `emp96_97_442_exporter` | numeric | (mean) emp96_97_442_exporter | stata |
| `est96_97_442_exporter` | numeric | (mean) est96_97_442_exporter | stata |
| `emp87_88_442_exporter` | numeric | (mean) emp87_88_442_exporter | stata |
| `est87_88_442_exporter` | numeric | (mean) est87_88_442_exporter | stata |
| `emp77_78_442_exporter` | numeric | (mean) emp77_78_442_exporter | stata |
| `est77_78_442_exporter` | numeric | (mean) est77_78_442_exporter | stata |
| `emp70_71_442_exporter` | numeric | (mean) emp70_71_442_exporter | stata |
| `est70_71_442_exporter` | numeric | (mean) est70_71_442_exporter | stata |
| `emp56_442_exporter` | numeric | (mean) emp56_442_exporter | stata |
| `est56_442_exporter` | numeric | (mean) est56_442_exporter | stata |
| `est06_07_443_exporter` | numeric | (mean) est06_07_443_exporter | stata |
| `emp06_07_443_exporter` | numeric | (mean) emp06_07_443_exporter | stata |
| `emp96_97_443_exporter` | numeric | (mean) emp96_97_443_exporter | stata |
| `est96_97_443_exporter` | numeric | (mean) est96_97_443_exporter | stata |
| `emp87_88_443_exporter` | numeric | (mean) emp87_88_443_exporter | stata |
| `est87_88_443_exporter` | numeric | (mean) est87_88_443_exporter | stata |
| `emp77_78_443_exporter` | numeric | (mean) emp77_78_443_exporter | stata |
| `est77_78_443_exporter` | numeric | (mean) est77_78_443_exporter | stata |
| `emp70_71_443_exporter` | numeric | (mean) emp70_71_443_exporter | stata |
| `est70_71_443_exporter` | numeric | (mean) est70_71_443_exporter | stata |
| `emp56_443_exporter` | numeric | (mean) emp56_443_exporter | stata |
| `est56_443_exporter` | numeric | (mean) est56_443_exporter | stata |
| `est06_07_444_exporter` | numeric | (mean) est06_07_444_exporter | stata |
| `emp06_07_444_exporter` | numeric | (mean) emp06_07_444_exporter | stata |
| `emp96_97_444_exporter` | numeric | (mean) emp96_97_444_exporter | stata |
| `est96_97_444_exporter` | numeric | (mean) est96_97_444_exporter | stata |
| `emp87_88_444_exporter` | numeric | (mean) emp87_88_444_exporter | stata |
| `est87_88_444_exporter` | numeric | (mean) est87_88_444_exporter | stata |
| `emp77_78_444_exporter` | numeric | (mean) emp77_78_444_exporter | stata |
| `est77_78_444_exporter` | numeric | (mean) est77_78_444_exporter | stata |
| `emp70_71_444_exporter` | numeric | (mean) emp70_71_444_exporter | stata |
| `est70_71_444_exporter` | numeric | (mean) est70_71_444_exporter | stata |
| `emp56_444_exporter` | numeric | (mean) emp56_444_exporter | stata |
| `est56_444_exporter` | numeric | (mean) est56_444_exporter | stata |
| `est06_07_445_exporter` | numeric | (mean) est06_07_445_exporter | stata |
| `emp06_07_445_exporter` | numeric | (mean) emp06_07_445_exporter | stata |
| `emp96_97_445_exporter` | numeric | (mean) emp96_97_445_exporter | stata |
| `est96_97_445_exporter` | numeric | (mean) est96_97_445_exporter | stata |
| `emp87_88_445_exporter` | numeric | (mean) emp87_88_445_exporter | stata |
| `est87_88_445_exporter` | numeric | (mean) est87_88_445_exporter | stata |
| `emp77_78_445_exporter` | numeric | (mean) emp77_78_445_exporter | stata |
| `est77_78_445_exporter` | numeric | (mean) est77_78_445_exporter | stata |
| `emp70_71_445_exporter` | numeric | (mean) emp70_71_445_exporter | stata |
| `est70_71_445_exporter` | numeric | (mean) est70_71_445_exporter | stata |
| `emp56_445_exporter` | numeric | (mean) emp56_445_exporter | stata |
| `est56_445_exporter` | numeric | (mean) est56_445_exporter | stata |
| `est06_07_446_exporter` | numeric | (mean) est06_07_446_exporter | stata |
| `emp06_07_446_exporter` | numeric | (mean) emp06_07_446_exporter | stata |
| `emp96_97_446_exporter` | numeric | (mean) emp96_97_446_exporter | stata |
| `est96_97_446_exporter` | numeric | (mean) est96_97_446_exporter | stata |
| `emp87_88_446_exporter` | numeric | (mean) emp87_88_446_exporter | stata |
| `est87_88_446_exporter` | numeric | (mean) est87_88_446_exporter | stata |
| `emp77_78_446_exporter` | numeric | (mean) emp77_78_446_exporter | stata |
| `est77_78_446_exporter` | numeric | (mean) est77_78_446_exporter | stata |
| `emp70_71_446_exporter` | numeric | (mean) emp70_71_446_exporter | stata |
| `est70_71_446_exporter` | numeric | (mean) est70_71_446_exporter | stata |
| `emp56_446_exporter` | numeric | (mean) emp56_446_exporter | stata |
| `est56_446_exporter` | numeric | (mean) est56_446_exporter | stata |
| `est06_07_447_exporter` | numeric | (mean) est06_07_447_exporter | stata |
| `emp06_07_447_exporter` | numeric | (mean) emp06_07_447_exporter | stata |
| `emp96_97_447_exporter` | numeric | (mean) emp96_97_447_exporter | stata |
| `est96_97_447_exporter` | numeric | (mean) est96_97_447_exporter | stata |
| `emp87_88_447_exporter` | numeric | (mean) emp87_88_447_exporter | stata |
| `est87_88_447_exporter` | numeric | (mean) est87_88_447_exporter | stata |
| `emp77_78_447_exporter` | numeric | (mean) emp77_78_447_exporter | stata |
| `est77_78_447_exporter` | numeric | (mean) est77_78_447_exporter | stata |
| `emp70_71_447_exporter` | numeric | (mean) emp70_71_447_exporter | stata |
| `est70_71_447_exporter` | numeric | (mean) est70_71_447_exporter | stata |
| `emp56_447_exporter` | numeric | (mean) emp56_447_exporter | stata |
| `est56_447_exporter` | numeric | (mean) est56_447_exporter | stata |
| `est06_07_448_exporter` | numeric | (mean) est06_07_448_exporter | stata |
| `emp06_07_448_exporter` | numeric | (mean) emp06_07_448_exporter | stata |
| `emp96_97_448_exporter` | numeric | (mean) emp96_97_448_exporter | stata |
| `est96_97_448_exporter` | numeric | (mean) est96_97_448_exporter | stata |
| `emp87_88_448_exporter` | numeric | (mean) emp87_88_448_exporter | stata |
| `est87_88_448_exporter` | numeric | (mean) est87_88_448_exporter | stata |
| `emp77_78_448_exporter` | numeric | (mean) emp77_78_448_exporter | stata |
| `est77_78_448_exporter` | numeric | (mean) est77_78_448_exporter | stata |
| `emp70_71_448_exporter` | numeric | (mean) emp70_71_448_exporter | stata |
| `est70_71_448_exporter` | numeric | (mean) est70_71_448_exporter | stata |
| `emp56_448_exporter` | numeric | (mean) emp56_448_exporter | stata |
| `est56_448_exporter` | numeric | (mean) est56_448_exporter | stata |
| `est06_07_451_exporter` | numeric | (mean) est06_07_451_exporter | stata |
| `emp06_07_451_exporter` | numeric | (mean) emp06_07_451_exporter | stata |
| `emp96_97_451_exporter` | numeric | (mean) emp96_97_451_exporter | stata |
| `est96_97_451_exporter` | numeric | (mean) est96_97_451_exporter | stata |
| `emp87_88_451_exporter` | numeric | (mean) emp87_88_451_exporter | stata |
| `est87_88_451_exporter` | numeric | (mean) est87_88_451_exporter | stata |
| `emp77_78_451_exporter` | numeric | (mean) emp77_78_451_exporter | stata |
| `est77_78_451_exporter` | numeric | (mean) est77_78_451_exporter | stata |
| `emp70_71_451_exporter` | numeric | (mean) emp70_71_451_exporter | stata |
| `est70_71_451_exporter` | numeric | (mean) est70_71_451_exporter | stata |
| `emp56_451_exporter` | numeric | (mean) emp56_451_exporter | stata |
| `est56_451_exporter` | numeric | (mean) est56_451_exporter | stata |
| `est06_07_452_exporter` | numeric | (mean) est06_07_452_exporter | stata |
| `emp06_07_452_exporter` | numeric | (mean) emp06_07_452_exporter | stata |
| `emp96_97_452_exporter` | numeric | (mean) emp96_97_452_exporter | stata |
| `est96_97_452_exporter` | numeric | (mean) est96_97_452_exporter | stata |
| `emp87_88_452_exporter` | numeric | (mean) emp87_88_452_exporter | stata |
| `est87_88_452_exporter` | numeric | (mean) est87_88_452_exporter | stata |
| `emp77_78_452_exporter` | numeric | (mean) emp77_78_452_exporter | stata |
| `est77_78_452_exporter` | numeric | (mean) est77_78_452_exporter | stata |
| `emp70_71_452_exporter` | numeric | (mean) emp70_71_452_exporter | stata |
| `est70_71_452_exporter` | numeric | (mean) est70_71_452_exporter | stata |
| `emp56_452_exporter` | numeric | (mean) emp56_452_exporter | stata |
| `est56_452_exporter` | numeric | (mean) est56_452_exporter | stata |
| `est06_07_453_exporter` | numeric | (mean) est06_07_453_exporter | stata |
| `emp06_07_453_exporter` | numeric | (mean) emp06_07_453_exporter | stata |
| `emp96_97_453_exporter` | numeric | (mean) emp96_97_453_exporter | stata |
| `est96_97_453_exporter` | numeric | (mean) est96_97_453_exporter | stata |
| `emp87_88_453_exporter` | numeric | (mean) emp87_88_453_exporter | stata |
| `est87_88_453_exporter` | numeric | (mean) est87_88_453_exporter | stata |
| `emp77_78_453_exporter` | numeric | (mean) emp77_78_453_exporter | stata |
| `est77_78_453_exporter` | numeric | (mean) est77_78_453_exporter | stata |
| `emp70_71_453_exporter` | numeric | (mean) emp70_71_453_exporter | stata |
| `est70_71_453_exporter` | numeric | (mean) est70_71_453_exporter | stata |
| `emp56_453_exporter` | numeric | (mean) emp56_453_exporter | stata |
| `est56_453_exporter` | numeric | (mean) est56_453_exporter | stata |
| `est06_07_454_exporter` | numeric | (mean) est06_07_454_exporter | stata |
| `emp06_07_454_exporter` | numeric | (mean) emp06_07_454_exporter | stata |
| `emp96_97_454_exporter` | numeric | (mean) emp96_97_454_exporter | stata |
| `est96_97_454_exporter` | numeric | (mean) est96_97_454_exporter | stata |
| `emp87_88_454_exporter` | numeric | (mean) emp87_88_454_exporter | stata |
| `est87_88_454_exporter` | numeric | (mean) est87_88_454_exporter | stata |
| `emp77_78_454_exporter` | numeric | (mean) emp77_78_454_exporter | stata |
| `est77_78_454_exporter` | numeric | (mean) est77_78_454_exporter | stata |
| `emp70_71_454_exporter` | numeric | (mean) emp70_71_454_exporter | stata |
| `est70_71_454_exporter` | numeric | (mean) est70_71_454_exporter | stata |
| `emp56_454_exporter` | numeric | (mean) emp56_454_exporter | stata |
| `est56_454_exporter` | numeric | (mean) est56_454_exporter | stata |
| `est06_07_481_exporter` | numeric | (mean) est06_07_481_exporter | stata |
| `emp06_07_481_exporter` | numeric | (mean) emp06_07_481_exporter | stata |
| `emp96_97_481_exporter` | numeric | (mean) emp96_97_481_exporter | stata |
| `est96_97_481_exporter` | numeric | (mean) est96_97_481_exporter | stata |
| `emp87_88_481_exporter` | numeric | (mean) emp87_88_481_exporter | stata |
| `est87_88_481_exporter` | numeric | (mean) est87_88_481_exporter | stata |
| `emp77_78_481_exporter` | numeric | (mean) emp77_78_481_exporter | stata |
| `est77_78_481_exporter` | numeric | (mean) est77_78_481_exporter | stata |
| `emp70_71_481_exporter` | numeric | (mean) emp70_71_481_exporter | stata |
| `est70_71_481_exporter` | numeric | (mean) est70_71_481_exporter | stata |
| `emp56_481_exporter` | numeric | (mean) emp56_481_exporter | stata |
| `est56_481_exporter` | numeric | (mean) est56_481_exporter | stata |
| `est06_07_483_exporter` | numeric | (mean) est06_07_483_exporter | stata |
| `emp06_07_483_exporter` | numeric | (mean) emp06_07_483_exporter | stata |
| `emp96_97_483_exporter` | numeric | (mean) emp96_97_483_exporter | stata |
| `est96_97_483_exporter` | numeric | (mean) est96_97_483_exporter | stata |
| `emp87_88_483_exporter` | numeric | (mean) emp87_88_483_exporter | stata |
| `est87_88_483_exporter` | numeric | (mean) est87_88_483_exporter | stata |
| `emp77_78_483_exporter` | numeric | (mean) emp77_78_483_exporter | stata |
| `est77_78_483_exporter` | numeric | (mean) est77_78_483_exporter | stata |
| `emp70_71_483_exporter` | numeric | (mean) emp70_71_483_exporter | stata |
| `est70_71_483_exporter` | numeric | (mean) est70_71_483_exporter | stata |
| `emp56_483_exporter` | numeric | (mean) emp56_483_exporter | stata |
| `est56_483_exporter` | numeric | (mean) est56_483_exporter | stata |
| `est06_07_484_exporter` | numeric | (mean) est06_07_484_exporter | stata |
| `emp06_07_484_exporter` | numeric | (mean) emp06_07_484_exporter | stata |
| `emp96_97_484_exporter` | numeric | (mean) emp96_97_484_exporter | stata |
| `est96_97_484_exporter` | numeric | (mean) est96_97_484_exporter | stata |
| `emp87_88_484_exporter` | numeric | (mean) emp87_88_484_exporter | stata |
| `est87_88_484_exporter` | numeric | (mean) est87_88_484_exporter | stata |
| `emp77_78_484_exporter` | numeric | (mean) emp77_78_484_exporter | stata |
| `est77_78_484_exporter` | numeric | (mean) est77_78_484_exporter | stata |
| `emp70_71_484_exporter` | numeric | (mean) emp70_71_484_exporter | stata |
| `est70_71_484_exporter` | numeric | (mean) est70_71_484_exporter | stata |
| `emp56_484_exporter` | numeric | (mean) emp56_484_exporter | stata |
| `est56_484_exporter` | numeric | (mean) est56_484_exporter | stata |
| `est06_07_485_exporter` | numeric | (mean) est06_07_485_exporter | stata |
| `emp06_07_485_exporter` | numeric | (mean) emp06_07_485_exporter | stata |
| `emp96_97_485_exporter` | numeric | (mean) emp96_97_485_exporter | stata |
| `est96_97_485_exporter` | numeric | (mean) est96_97_485_exporter | stata |
| `emp87_88_485_exporter` | numeric | (mean) emp87_88_485_exporter | stata |
| `est87_88_485_exporter` | numeric | (mean) est87_88_485_exporter | stata |
| `emp77_78_485_exporter` | numeric | (mean) emp77_78_485_exporter | stata |
| `est77_78_485_exporter` | numeric | (mean) est77_78_485_exporter | stata |
| `emp70_71_485_exporter` | numeric | (mean) emp70_71_485_exporter | stata |
| `est70_71_485_exporter` | numeric | (mean) est70_71_485_exporter | stata |
| `emp56_485_exporter` | numeric | (mean) emp56_485_exporter | stata |
| `est56_485_exporter` | numeric | (mean) est56_485_exporter | stata |
| `est06_07_486_exporter` | numeric | (mean) est06_07_486_exporter | stata |
| `emp06_07_486_exporter` | numeric | (mean) emp06_07_486_exporter | stata |
| `emp96_97_486_exporter` | numeric | (mean) emp96_97_486_exporter | stata |
| `est96_97_486_exporter` | numeric | (mean) est96_97_486_exporter | stata |
| `emp87_88_486_exporter` | numeric | (mean) emp87_88_486_exporter | stata |
| `est87_88_486_exporter` | numeric | (mean) est87_88_486_exporter | stata |
| `emp77_78_486_exporter` | numeric | (mean) emp77_78_486_exporter | stata |
| `est77_78_486_exporter` | numeric | (mean) est77_78_486_exporter | stata |
| `emp70_71_486_exporter` | numeric | (mean) emp70_71_486_exporter | stata |
| `est70_71_486_exporter` | numeric | (mean) est70_71_486_exporter | stata |
| `emp56_486_exporter` | numeric | (mean) emp56_486_exporter | stata |
| `est56_486_exporter` | numeric | (mean) est56_486_exporter | stata |
| `est06_07_487_exporter` | numeric | (mean) est06_07_487_exporter | stata |
| `emp06_07_487_exporter` | numeric | (mean) emp06_07_487_exporter | stata |
| `emp96_97_487_exporter` | numeric | (mean) emp96_97_487_exporter | stata |
| `est96_97_487_exporter` | numeric | (mean) est96_97_487_exporter | stata |
| `emp87_88_487_exporter` | numeric | (mean) emp87_88_487_exporter | stata |
| `est87_88_487_exporter` | numeric | (mean) est87_88_487_exporter | stata |
| `emp77_78_487_exporter` | numeric | (mean) emp77_78_487_exporter | stata |
| `est77_78_487_exporter` | numeric | (mean) est77_78_487_exporter | stata |
| `emp70_71_487_exporter` | numeric | (mean) emp70_71_487_exporter | stata |
| `est70_71_487_exporter` | numeric | (mean) est70_71_487_exporter | stata |
| `emp56_487_exporter` | numeric | (mean) emp56_487_exporter | stata |
| `est56_487_exporter` | numeric | (mean) est56_487_exporter | stata |
| `est06_07_488_exporter` | numeric | (mean) est06_07_488_exporter | stata |
| `emp06_07_488_exporter` | numeric | (mean) emp06_07_488_exporter | stata |
| `emp96_97_488_exporter` | numeric | (mean) emp96_97_488_exporter | stata |
| `est96_97_488_exporter` | numeric | (mean) est96_97_488_exporter | stata |
| `emp87_88_488_exporter` | numeric | (mean) emp87_88_488_exporter | stata |
| `est87_88_488_exporter` | numeric | (mean) est87_88_488_exporter | stata |
| `emp77_78_488_exporter` | numeric | (mean) emp77_78_488_exporter | stata |
| `est77_78_488_exporter` | numeric | (mean) est77_78_488_exporter | stata |
| `emp70_71_488_exporter` | numeric | (mean) emp70_71_488_exporter | stata |
| `est70_71_488_exporter` | numeric | (mean) est70_71_488_exporter | stata |
| `emp56_488_exporter` | numeric | (mean) emp56_488_exporter | stata |
| `est56_488_exporter` | numeric | (mean) est56_488_exporter | stata |
| `est06_07_491_exporter` | numeric | (mean) est06_07_491_exporter | stata |
| `emp06_07_491_exporter` | numeric | (mean) emp06_07_491_exporter | stata |
| `emp96_97_491_exporter` | numeric | (mean) emp96_97_491_exporter | stata |
| `est96_97_491_exporter` | numeric | (mean) est96_97_491_exporter | stata |
| `emp87_88_491_exporter` | numeric | (mean) emp87_88_491_exporter | stata |
| `est87_88_491_exporter` | numeric | (mean) est87_88_491_exporter | stata |
| `emp77_78_491_exporter` | numeric | (mean) emp77_78_491_exporter | stata |
| `est77_78_491_exporter` | numeric | (mean) est77_78_491_exporter | stata |
| `emp70_71_491_exporter` | numeric | (mean) emp70_71_491_exporter | stata |
| `est70_71_491_exporter` | numeric | (mean) est70_71_491_exporter | stata |
| `emp56_491_exporter` | numeric | (mean) emp56_491_exporter | stata |
| `est56_491_exporter` | numeric | (mean) est56_491_exporter | stata |
| `est06_07_492_exporter` | numeric | (mean) est06_07_492_exporter | stata |
| `emp06_07_492_exporter` | numeric | (mean) emp06_07_492_exporter | stata |
| `emp96_97_492_exporter` | numeric | (mean) emp96_97_492_exporter | stata |
| `est96_97_492_exporter` | numeric | (mean) est96_97_492_exporter | stata |
| `emp87_88_492_exporter` | numeric | (mean) emp87_88_492_exporter | stata |
| `est87_88_492_exporter` | numeric | (mean) est87_88_492_exporter | stata |
| `emp77_78_492_exporter` | numeric | (mean) emp77_78_492_exporter | stata |
| `est77_78_492_exporter` | numeric | (mean) est77_78_492_exporter | stata |
| `emp70_71_492_exporter` | numeric | (mean) emp70_71_492_exporter | stata |
| `est70_71_492_exporter` | numeric | (mean) est70_71_492_exporter | stata |
| `emp56_492_exporter` | numeric | (mean) emp56_492_exporter | stata |
| `est56_492_exporter` | numeric | (mean) est56_492_exporter | stata |
| `est06_07_493_exporter` | numeric | (mean) est06_07_493_exporter | stata |
| `emp06_07_493_exporter` | numeric | (mean) emp06_07_493_exporter | stata |
| `emp96_97_493_exporter` | numeric | (mean) emp96_97_493_exporter | stata |
| `est96_97_493_exporter` | numeric | (mean) est96_97_493_exporter | stata |
| `emp87_88_493_exporter` | numeric | (mean) emp87_88_493_exporter | stata |
| `est87_88_493_exporter` | numeric | (mean) est87_88_493_exporter | stata |
| `emp77_78_493_exporter` | numeric | (mean) emp77_78_493_exporter | stata |
| `est77_78_493_exporter` | numeric | (mean) est77_78_493_exporter | stata |
| `emp70_71_493_exporter` | numeric | (mean) emp70_71_493_exporter | stata |
| `est70_71_493_exporter` | numeric | (mean) est70_71_493_exporter | stata |
| `emp56_493_exporter` | numeric | (mean) emp56_493_exporter | stata |
| `est56_493_exporter` | numeric | (mean) est56_493_exporter | stata |
| `est06_07_511_exporter` | numeric | (mean) est06_07_511_exporter | stata |
| `emp06_07_511_exporter` | numeric | (mean) emp06_07_511_exporter | stata |
| `emp96_97_511_exporter` | numeric | (mean) emp96_97_511_exporter | stata |
| `est96_97_511_exporter` | numeric | (mean) est96_97_511_exporter | stata |
| `emp87_88_511_exporter` | numeric | (mean) emp87_88_511_exporter | stata |
| `est87_88_511_exporter` | numeric | (mean) est87_88_511_exporter | stata |
| `emp77_78_511_exporter` | numeric | (mean) emp77_78_511_exporter | stata |
| `est77_78_511_exporter` | numeric | (mean) est77_78_511_exporter | stata |
| `emp70_71_511_exporter` | numeric | (mean) emp70_71_511_exporter | stata |
| `est70_71_511_exporter` | numeric | (mean) est70_71_511_exporter | stata |
| `emp56_511_exporter` | numeric | (mean) emp56_511_exporter | stata |
| `est56_511_exporter` | numeric | (mean) est56_511_exporter | stata |
| `est06_07_512_exporter` | numeric | (mean) est06_07_512_exporter | stata |
| `emp06_07_512_exporter` | numeric | (mean) emp06_07_512_exporter | stata |
| `emp96_97_512_exporter` | numeric | (mean) emp96_97_512_exporter | stata |
| `est96_97_512_exporter` | numeric | (mean) est96_97_512_exporter | stata |
| `emp87_88_512_exporter` | numeric | (mean) emp87_88_512_exporter | stata |
| `est87_88_512_exporter` | numeric | (mean) est87_88_512_exporter | stata |
| `emp77_78_512_exporter` | numeric | (mean) emp77_78_512_exporter | stata |
| `est77_78_512_exporter` | numeric | (mean) est77_78_512_exporter | stata |
| `emp70_71_512_exporter` | numeric | (mean) emp70_71_512_exporter | stata |
| `est70_71_512_exporter` | numeric | (mean) est70_71_512_exporter | stata |
| `emp56_512_exporter` | numeric | (mean) emp56_512_exporter | stata |
| `est56_512_exporter` | numeric | (mean) est56_512_exporter | stata |
| `est06_07_515_exporter` | numeric | (mean) est06_07_515_exporter | stata |
| `emp06_07_515_exporter` | numeric | (mean) emp06_07_515_exporter | stata |
| `emp96_97_515_exporter` | numeric | (mean) emp96_97_515_exporter | stata |
| `est96_97_515_exporter` | numeric | (mean) est96_97_515_exporter | stata |
| `emp87_88_515_exporter` | numeric | (mean) emp87_88_515_exporter | stata |
| `est87_88_515_exporter` | numeric | (mean) est87_88_515_exporter | stata |
| `emp77_78_515_exporter` | numeric | (mean) emp77_78_515_exporter | stata |
| `est77_78_515_exporter` | numeric | (mean) est77_78_515_exporter | stata |
| `emp70_71_515_exporter` | numeric | (mean) emp70_71_515_exporter | stata |
| `est70_71_515_exporter` | numeric | (mean) est70_71_515_exporter | stata |
| `emp56_515_exporter` | numeric | (mean) emp56_515_exporter | stata |
| `est56_515_exporter` | numeric | (mean) est56_515_exporter | stata |
| `est06_07_516_exporter` | numeric | (mean) est06_07_516_exporter | stata |
| `emp06_07_516_exporter` | numeric | (mean) emp06_07_516_exporter | stata |
| `emp96_97_516_exporter` | numeric | (mean) emp96_97_516_exporter | stata |
| `est96_97_516_exporter` | numeric | (mean) est96_97_516_exporter | stata |
| `emp87_88_516_exporter` | numeric | (mean) emp87_88_516_exporter | stata |
| `est87_88_516_exporter` | numeric | (mean) est87_88_516_exporter | stata |
| `emp77_78_516_exporter` | numeric | (mean) emp77_78_516_exporter | stata |
| `est77_78_516_exporter` | numeric | (mean) est77_78_516_exporter | stata |
| `emp70_71_516_exporter` | numeric | (mean) emp70_71_516_exporter | stata |
| `est70_71_516_exporter` | numeric | (mean) est70_71_516_exporter | stata |
| `emp56_516_exporter` | numeric | (mean) emp56_516_exporter | stata |
| `est56_516_exporter` | numeric | (mean) est56_516_exporter | stata |
| `est06_07_517_exporter` | numeric | (mean) est06_07_517_exporter | stata |
| `emp06_07_517_exporter` | numeric | (mean) emp06_07_517_exporter | stata |
| `emp96_97_517_exporter` | numeric | (mean) emp96_97_517_exporter | stata |
| `est96_97_517_exporter` | numeric | (mean) est96_97_517_exporter | stata |
| `emp87_88_517_exporter` | numeric | (mean) emp87_88_517_exporter | stata |
| `est87_88_517_exporter` | numeric | (mean) est87_88_517_exporter | stata |
| `emp77_78_517_exporter` | numeric | (mean) emp77_78_517_exporter | stata |
| `est77_78_517_exporter` | numeric | (mean) est77_78_517_exporter | stata |
| `emp70_71_517_exporter` | numeric | (mean) emp70_71_517_exporter | stata |
| `est70_71_517_exporter` | numeric | (mean) est70_71_517_exporter | stata |
| `emp56_517_exporter` | numeric | (mean) emp56_517_exporter | stata |
| `est56_517_exporter` | numeric | (mean) est56_517_exporter | stata |
| `est06_07_518_exporter` | numeric | (mean) est06_07_518_exporter | stata |
| `emp06_07_518_exporter` | numeric | (mean) emp06_07_518_exporter | stata |
| `emp96_97_518_exporter` | numeric | (mean) emp96_97_518_exporter | stata |
| `est96_97_518_exporter` | numeric | (mean) est96_97_518_exporter | stata |
| `emp87_88_518_exporter` | numeric | (mean) emp87_88_518_exporter | stata |
| `est87_88_518_exporter` | numeric | (mean) est87_88_518_exporter | stata |
| `emp77_78_518_exporter` | numeric | (mean) emp77_78_518_exporter | stata |
| `est77_78_518_exporter` | numeric | (mean) est77_78_518_exporter | stata |
| `emp70_71_518_exporter` | numeric | (mean) emp70_71_518_exporter | stata |
| `est70_71_518_exporter` | numeric | (mean) est70_71_518_exporter | stata |
| `emp56_518_exporter` | numeric | (mean) emp56_518_exporter | stata |
| `est56_518_exporter` | numeric | (mean) est56_518_exporter | stata |
| `est06_07_519_exporter` | numeric | (mean) est06_07_519_exporter | stata |
| `emp06_07_519_exporter` | numeric | (mean) emp06_07_519_exporter | stata |
| `emp96_97_519_exporter` | numeric | (mean) emp96_97_519_exporter | stata |
| `est96_97_519_exporter` | numeric | (mean) est96_97_519_exporter | stata |
| `emp87_88_519_exporter` | numeric | (mean) emp87_88_519_exporter | stata |
| `est87_88_519_exporter` | numeric | (mean) est87_88_519_exporter | stata |
| `emp77_78_519_exporter` | numeric | (mean) emp77_78_519_exporter | stata |
| `est77_78_519_exporter` | numeric | (mean) est77_78_519_exporter | stata |
| `emp70_71_519_exporter` | numeric | (mean) emp70_71_519_exporter | stata |
| `est70_71_519_exporter` | numeric | (mean) est70_71_519_exporter | stata |
| `emp56_519_exporter` | numeric | (mean) emp56_519_exporter | stata |
| `est56_519_exporter` | numeric | (mean) est56_519_exporter | stata |
| `est06_07_521_exporter` | numeric | (mean) est06_07_521_exporter | stata |
| `emp06_07_521_exporter` | numeric | (mean) emp06_07_521_exporter | stata |
| `emp96_97_521_exporter` | numeric | (mean) emp96_97_521_exporter | stata |
| `est96_97_521_exporter` | numeric | (mean) est96_97_521_exporter | stata |
| `emp87_88_521_exporter` | numeric | (mean) emp87_88_521_exporter | stata |
| `est87_88_521_exporter` | numeric | (mean) est87_88_521_exporter | stata |
| `emp77_78_521_exporter` | numeric | (mean) emp77_78_521_exporter | stata |
| `est77_78_521_exporter` | numeric | (mean) est77_78_521_exporter | stata |
| `emp70_71_521_exporter` | numeric | (mean) emp70_71_521_exporter | stata |
| `est70_71_521_exporter` | numeric | (mean) est70_71_521_exporter | stata |
| `emp56_521_exporter` | numeric | (mean) emp56_521_exporter | stata |
| `est56_521_exporter` | numeric | (mean) est56_521_exporter | stata |
| `est06_07_522_exporter` | numeric | (mean) est06_07_522_exporter | stata |
| `emp06_07_522_exporter` | numeric | (mean) emp06_07_522_exporter | stata |
| `emp96_97_522_exporter` | numeric | (mean) emp96_97_522_exporter | stata |
| `est96_97_522_exporter` | numeric | (mean) est96_97_522_exporter | stata |
| `emp87_88_522_exporter` | numeric | (mean) emp87_88_522_exporter | stata |
| `est87_88_522_exporter` | numeric | (mean) est87_88_522_exporter | stata |
| `emp77_78_522_exporter` | numeric | (mean) emp77_78_522_exporter | stata |
| `est77_78_522_exporter` | numeric | (mean) est77_78_522_exporter | stata |
| `emp70_71_522_exporter` | numeric | (mean) emp70_71_522_exporter | stata |
| `est70_71_522_exporter` | numeric | (mean) est70_71_522_exporter | stata |
| `emp56_522_exporter` | numeric | (mean) emp56_522_exporter | stata |
| `est56_522_exporter` | numeric | (mean) est56_522_exporter | stata |
| `est06_07_523_exporter` | numeric | (mean) est06_07_523_exporter | stata |
| `emp06_07_523_exporter` | numeric | (mean) emp06_07_523_exporter | stata |
| `emp96_97_523_exporter` | numeric | (mean) emp96_97_523_exporter | stata |
| `est96_97_523_exporter` | numeric | (mean) est96_97_523_exporter | stata |
| `emp87_88_523_exporter` | numeric | (mean) emp87_88_523_exporter | stata |
| `est87_88_523_exporter` | numeric | (mean) est87_88_523_exporter | stata |
| `emp77_78_523_exporter` | numeric | (mean) emp77_78_523_exporter | stata |
| `est77_78_523_exporter` | numeric | (mean) est77_78_523_exporter | stata |
| `emp70_71_523_exporter` | numeric | (mean) emp70_71_523_exporter | stata |
| `est70_71_523_exporter` | numeric | (mean) est70_71_523_exporter | stata |
| `emp56_523_exporter` | numeric | (mean) emp56_523_exporter | stata |
| `est56_523_exporter` | numeric | (mean) est56_523_exporter | stata |
| `est06_07_524_exporter` | numeric | (mean) est06_07_524_exporter | stata |
| `emp06_07_524_exporter` | numeric | (mean) emp06_07_524_exporter | stata |
| `emp96_97_524_exporter` | numeric | (mean) emp96_97_524_exporter | stata |
| `est96_97_524_exporter` | numeric | (mean) est96_97_524_exporter | stata |
| `emp87_88_524_exporter` | numeric | (mean) emp87_88_524_exporter | stata |
| `est87_88_524_exporter` | numeric | (mean) est87_88_524_exporter | stata |
| `emp77_78_524_exporter` | numeric | (mean) emp77_78_524_exporter | stata |
| `est77_78_524_exporter` | numeric | (mean) est77_78_524_exporter | stata |
| `emp70_71_524_exporter` | numeric | (mean) emp70_71_524_exporter | stata |
| `est70_71_524_exporter` | numeric | (mean) est70_71_524_exporter | stata |
| `emp56_524_exporter` | numeric | (mean) emp56_524_exporter | stata |
| `est56_524_exporter` | numeric | (mean) est56_524_exporter | stata |
| `est06_07_525_exporter` | numeric | (mean) est06_07_525_exporter | stata |
| `emp06_07_525_exporter` | numeric | (mean) emp06_07_525_exporter | stata |
| `emp96_97_525_exporter` | numeric | (mean) emp96_97_525_exporter | stata |
| `est96_97_525_exporter` | numeric | (mean) est96_97_525_exporter | stata |
| `emp87_88_525_exporter` | numeric | (mean) emp87_88_525_exporter | stata |
| `est87_88_525_exporter` | numeric | (mean) est87_88_525_exporter | stata |
| `emp77_78_525_exporter` | numeric | (mean) emp77_78_525_exporter | stata |
| `est77_78_525_exporter` | numeric | (mean) est77_78_525_exporter | stata |
| `emp70_71_525_exporter` | numeric | (mean) emp70_71_525_exporter | stata |
| `est70_71_525_exporter` | numeric | (mean) est70_71_525_exporter | stata |
| `emp56_525_exporter` | numeric | (mean) emp56_525_exporter | stata |
| `est56_525_exporter` | numeric | (mean) est56_525_exporter | stata |
| `est06_07_531_exporter` | numeric | (mean) est06_07_531_exporter | stata |
| `emp06_07_531_exporter` | numeric | (mean) emp06_07_531_exporter | stata |
| `emp96_97_531_exporter` | numeric | (mean) emp96_97_531_exporter | stata |
| `est96_97_531_exporter` | numeric | (mean) est96_97_531_exporter | stata |
| `emp87_88_531_exporter` | numeric | (mean) emp87_88_531_exporter | stata |
| `est87_88_531_exporter` | numeric | (mean) est87_88_531_exporter | stata |
| `emp77_78_531_exporter` | numeric | (mean) emp77_78_531_exporter | stata |
| `est77_78_531_exporter` | numeric | (mean) est77_78_531_exporter | stata |
| `emp70_71_531_exporter` | numeric | (mean) emp70_71_531_exporter | stata |
| `est70_71_531_exporter` | numeric | (mean) est70_71_531_exporter | stata |
| `emp56_531_exporter` | numeric | (mean) emp56_531_exporter | stata |
| `est56_531_exporter` | numeric | (mean) est56_531_exporter | stata |
| `est06_07_532_exporter` | numeric | (mean) est06_07_532_exporter | stata |
| `emp06_07_532_exporter` | numeric | (mean) emp06_07_532_exporter | stata |
| `emp96_97_532_exporter` | numeric | (mean) emp96_97_532_exporter | stata |
| `est96_97_532_exporter` | numeric | (mean) est96_97_532_exporter | stata |
| `emp87_88_532_exporter` | numeric | (mean) emp87_88_532_exporter | stata |
| `est87_88_532_exporter` | numeric | (mean) est87_88_532_exporter | stata |
| `emp77_78_532_exporter` | numeric | (mean) emp77_78_532_exporter | stata |
| `est77_78_532_exporter` | numeric | (mean) est77_78_532_exporter | stata |
| `emp70_71_532_exporter` | numeric | (mean) emp70_71_532_exporter | stata |
| `est70_71_532_exporter` | numeric | (mean) est70_71_532_exporter | stata |
| `emp56_532_exporter` | numeric | (mean) emp56_532_exporter | stata |
| `est56_532_exporter` | numeric | (mean) est56_532_exporter | stata |
| `est06_07_533_exporter` | numeric | (mean) est06_07_533_exporter | stata |
| `emp06_07_533_exporter` | numeric | (mean) emp06_07_533_exporter | stata |
| `emp96_97_533_exporter` | numeric | (mean) emp96_97_533_exporter | stata |
| `est96_97_533_exporter` | numeric | (mean) est96_97_533_exporter | stata |
| `emp87_88_533_exporter` | numeric | (mean) emp87_88_533_exporter | stata |
| `est87_88_533_exporter` | numeric | (mean) est87_88_533_exporter | stata |
| `emp77_78_533_exporter` | numeric | (mean) emp77_78_533_exporter | stata |
| `est77_78_533_exporter` | numeric | (mean) est77_78_533_exporter | stata |
| `emp70_71_533_exporter` | numeric | (mean) emp70_71_533_exporter | stata |
| `est70_71_533_exporter` | numeric | (mean) est70_71_533_exporter | stata |
| `emp56_533_exporter` | numeric | (mean) emp56_533_exporter | stata |
| `est56_533_exporter` | numeric | (mean) est56_533_exporter | stata |
| `est06_07_541_exporter` | numeric | (mean) est06_07_541_exporter | stata |
| `emp06_07_541_exporter` | numeric | (mean) emp06_07_541_exporter | stata |
| `emp96_97_541_exporter` | numeric | (mean) emp96_97_541_exporter | stata |
| `est96_97_541_exporter` | numeric | (mean) est96_97_541_exporter | stata |
| `emp87_88_541_exporter` | numeric | (mean) emp87_88_541_exporter | stata |
| `est87_88_541_exporter` | numeric | (mean) est87_88_541_exporter | stata |
| `emp77_78_541_exporter` | numeric | (mean) emp77_78_541_exporter | stata |
| `est77_78_541_exporter` | numeric | (mean) est77_78_541_exporter | stata |
| `emp70_71_541_exporter` | numeric | (mean) emp70_71_541_exporter | stata |
| `est70_71_541_exporter` | numeric | (mean) est70_71_541_exporter | stata |
| `emp56_541_exporter` | numeric | (mean) emp56_541_exporter | stata |
| `est56_541_exporter` | numeric | (mean) est56_541_exporter | stata |
| `est06_07_551_exporter` | numeric | (mean) est06_07_551_exporter | stata |
| `emp06_07_551_exporter` | numeric | (mean) emp06_07_551_exporter | stata |
| `emp96_97_551_exporter` | numeric | (mean) emp96_97_551_exporter | stata |
| `est96_97_551_exporter` | numeric | (mean) est96_97_551_exporter | stata |
| `emp87_88_551_exporter` | numeric | (mean) emp87_88_551_exporter | stata |
| `est87_88_551_exporter` | numeric | (mean) est87_88_551_exporter | stata |
| `emp77_78_551_exporter` | numeric | (mean) emp77_78_551_exporter | stata |
| `est77_78_551_exporter` | numeric | (mean) est77_78_551_exporter | stata |
| `emp70_71_551_exporter` | numeric | (mean) emp70_71_551_exporter | stata |
| `est70_71_551_exporter` | numeric | (mean) est70_71_551_exporter | stata |
| `emp56_551_exporter` | numeric | (mean) emp56_551_exporter | stata |
| `est56_551_exporter` | numeric | (mean) est56_551_exporter | stata |
| `est06_07_561_exporter` | numeric | (mean) est06_07_561_exporter | stata |
| `emp06_07_561_exporter` | numeric | (mean) emp06_07_561_exporter | stata |
| `emp96_97_561_exporter` | numeric | (mean) emp96_97_561_exporter | stata |
| `est96_97_561_exporter` | numeric | (mean) est96_97_561_exporter | stata |
| `emp87_88_561_exporter` | numeric | (mean) emp87_88_561_exporter | stata |
| `est87_88_561_exporter` | numeric | (mean) est87_88_561_exporter | stata |
| `emp77_78_561_exporter` | numeric | (mean) emp77_78_561_exporter | stata |
| `est77_78_561_exporter` | numeric | (mean) est77_78_561_exporter | stata |
| `emp70_71_561_exporter` | numeric | (mean) emp70_71_561_exporter | stata |
| `est70_71_561_exporter` | numeric | (mean) est70_71_561_exporter | stata |
| `emp56_561_exporter` | numeric | (mean) emp56_561_exporter | stata |
| `est56_561_exporter` | numeric | (mean) est56_561_exporter | stata |
| `est06_07_562_exporter` | numeric | (mean) est06_07_562_exporter | stata |
| `emp06_07_562_exporter` | numeric | (mean) emp06_07_562_exporter | stata |
| `emp96_97_562_exporter` | numeric | (mean) emp96_97_562_exporter | stata |
| `est96_97_562_exporter` | numeric | (mean) est96_97_562_exporter | stata |
| `emp87_88_562_exporter` | numeric | (mean) emp87_88_562_exporter | stata |
| `est87_88_562_exporter` | numeric | (mean) est87_88_562_exporter | stata |
| `emp77_78_562_exporter` | numeric | (mean) emp77_78_562_exporter | stata |
| `est77_78_562_exporter` | numeric | (mean) est77_78_562_exporter | stata |
| `emp70_71_562_exporter` | numeric | (mean) emp70_71_562_exporter | stata |
| `est70_71_562_exporter` | numeric | (mean) est70_71_562_exporter | stata |
| `emp56_562_exporter` | numeric | (mean) emp56_562_exporter | stata |
| `est56_562_exporter` | numeric | (mean) est56_562_exporter | stata |
| `est06_07_611_exporter` | numeric | (mean) est06_07_611_exporter | stata |
| `emp06_07_611_exporter` | numeric | (mean) emp06_07_611_exporter | stata |
| `emp96_97_611_exporter` | numeric | (mean) emp96_97_611_exporter | stata |
| `est96_97_611_exporter` | numeric | (mean) est96_97_611_exporter | stata |
| `emp87_88_611_exporter` | numeric | (mean) emp87_88_611_exporter | stata |
| `est87_88_611_exporter` | numeric | (mean) est87_88_611_exporter | stata |
| `emp77_78_611_exporter` | numeric | (mean) emp77_78_611_exporter | stata |
| `est77_78_611_exporter` | numeric | (mean) est77_78_611_exporter | stata |
| `emp70_71_611_exporter` | numeric | (mean) emp70_71_611_exporter | stata |
| `est70_71_611_exporter` | numeric | (mean) est70_71_611_exporter | stata |
| `emp56_611_exporter` | numeric | (mean) emp56_611_exporter | stata |
| `est56_611_exporter` | numeric | (mean) est56_611_exporter | stata |
| `est06_07_621_exporter` | numeric | (mean) est06_07_621_exporter | stata |
| `emp06_07_621_exporter` | numeric | (mean) emp06_07_621_exporter | stata |
| `emp96_97_621_exporter` | numeric | (mean) emp96_97_621_exporter | stata |
| `est96_97_621_exporter` | numeric | (mean) est96_97_621_exporter | stata |
| `emp87_88_621_exporter` | numeric | (mean) emp87_88_621_exporter | stata |
| `est87_88_621_exporter` | numeric | (mean) est87_88_621_exporter | stata |
| `emp77_78_621_exporter` | numeric | (mean) emp77_78_621_exporter | stata |
| `est77_78_621_exporter` | numeric | (mean) est77_78_621_exporter | stata |
| `emp70_71_621_exporter` | numeric | (mean) emp70_71_621_exporter | stata |
| `est70_71_621_exporter` | numeric | (mean) est70_71_621_exporter | stata |
| `emp56_621_exporter` | numeric | (mean) emp56_621_exporter | stata |
| `est56_621_exporter` | numeric | (mean) est56_621_exporter | stata |
| `est06_07_622_exporter` | numeric | (mean) est06_07_622_exporter | stata |
| `emp06_07_622_exporter` | numeric | (mean) emp06_07_622_exporter | stata |
| `emp96_97_622_exporter` | numeric | (mean) emp96_97_622_exporter | stata |
| `est96_97_622_exporter` | numeric | (mean) est96_97_622_exporter | stata |
| `emp87_88_622_exporter` | numeric | (mean) emp87_88_622_exporter | stata |
| `est87_88_622_exporter` | numeric | (mean) est87_88_622_exporter | stata |
| `emp77_78_622_exporter` | numeric | (mean) emp77_78_622_exporter | stata |
| `est77_78_622_exporter` | numeric | (mean) est77_78_622_exporter | stata |
| `emp70_71_622_exporter` | numeric | (mean) emp70_71_622_exporter | stata |
| `est70_71_622_exporter` | numeric | (mean) est70_71_622_exporter | stata |
| `emp56_622_exporter` | numeric | (mean) emp56_622_exporter | stata |
| `est56_622_exporter` | numeric | (mean) est56_622_exporter | stata |
| `est06_07_623_exporter` | numeric | (mean) est06_07_623_exporter | stata |
| `emp06_07_623_exporter` | numeric | (mean) emp06_07_623_exporter | stata |
| `emp96_97_623_exporter` | numeric | (mean) emp96_97_623_exporter | stata |
| `est96_97_623_exporter` | numeric | (mean) est96_97_623_exporter | stata |
| `emp87_88_623_exporter` | numeric | (mean) emp87_88_623_exporter | stata |
| `est87_88_623_exporter` | numeric | (mean) est87_88_623_exporter | stata |
| `emp77_78_623_exporter` | numeric | (mean) emp77_78_623_exporter | stata |
| `est77_78_623_exporter` | numeric | (mean) est77_78_623_exporter | stata |
| `emp70_71_623_exporter` | numeric | (mean) emp70_71_623_exporter | stata |
| `est70_71_623_exporter` | numeric | (mean) est70_71_623_exporter | stata |
| `emp56_623_exporter` | numeric | (mean) emp56_623_exporter | stata |
| `est56_623_exporter` | numeric | (mean) est56_623_exporter | stata |
| `est06_07_624_exporter` | numeric | (mean) est06_07_624_exporter | stata |
| `emp06_07_624_exporter` | numeric | (mean) emp06_07_624_exporter | stata |
| `emp96_97_624_exporter` | numeric | (mean) emp96_97_624_exporter | stata |
| `est96_97_624_exporter` | numeric | (mean) est96_97_624_exporter | stata |
| `emp87_88_624_exporter` | numeric | (mean) emp87_88_624_exporter | stata |
| `est87_88_624_exporter` | numeric | (mean) est87_88_624_exporter | stata |
| `emp77_78_624_exporter` | numeric | (mean) emp77_78_624_exporter | stata |
| `est77_78_624_exporter` | numeric | (mean) est77_78_624_exporter | stata |
| `emp70_71_624_exporter` | numeric | (mean) emp70_71_624_exporter | stata |
| `est70_71_624_exporter` | numeric | (mean) est70_71_624_exporter | stata |
| `emp56_624_exporter` | numeric | (mean) emp56_624_exporter | stata |
| `est56_624_exporter` | numeric | (mean) est56_624_exporter | stata |
| `est06_07_711_exporter` | numeric | (mean) est06_07_711_exporter | stata |
| `emp06_07_711_exporter` | numeric | (mean) emp06_07_711_exporter | stata |
| `emp96_97_711_exporter` | numeric | (mean) emp96_97_711_exporter | stata |
| `est96_97_711_exporter` | numeric | (mean) est96_97_711_exporter | stata |
| `emp87_88_711_exporter` | numeric | (mean) emp87_88_711_exporter | stata |
| `est87_88_711_exporter` | numeric | (mean) est87_88_711_exporter | stata |
| `emp77_78_711_exporter` | numeric | (mean) emp77_78_711_exporter | stata |
| `est77_78_711_exporter` | numeric | (mean) est77_78_711_exporter | stata |
| `emp70_71_711_exporter` | numeric | (mean) emp70_71_711_exporter | stata |
| `est70_71_711_exporter` | numeric | (mean) est70_71_711_exporter | stata |
| `emp56_711_exporter` | numeric | (mean) emp56_711_exporter | stata |
| `est56_711_exporter` | numeric | (mean) est56_711_exporter | stata |
| `est06_07_712_exporter` | numeric | (mean) est06_07_712_exporter | stata |
| `emp06_07_712_exporter` | numeric | (mean) emp06_07_712_exporter | stata |
| `emp96_97_712_exporter` | numeric | (mean) emp96_97_712_exporter | stata |
| `est96_97_712_exporter` | numeric | (mean) est96_97_712_exporter | stata |
| `emp87_88_712_exporter` | numeric | (mean) emp87_88_712_exporter | stata |
| `est87_88_712_exporter` | numeric | (mean) est87_88_712_exporter | stata |
| `emp77_78_712_exporter` | numeric | (mean) emp77_78_712_exporter | stata |
| `est77_78_712_exporter` | numeric | (mean) est77_78_712_exporter | stata |
| `emp70_71_712_exporter` | numeric | (mean) emp70_71_712_exporter | stata |
| `est70_71_712_exporter` | numeric | (mean) est70_71_712_exporter | stata |
| `emp56_712_exporter` | numeric | (mean) emp56_712_exporter | stata |
| `est56_712_exporter` | numeric | (mean) est56_712_exporter | stata |
| `est06_07_713_exporter` | numeric | (mean) est06_07_713_exporter | stata |
| `emp06_07_713_exporter` | numeric | (mean) emp06_07_713_exporter | stata |
| `emp96_97_713_exporter` | numeric | (mean) emp96_97_713_exporter | stata |
| `est96_97_713_exporter` | numeric | (mean) est96_97_713_exporter | stata |
| `emp87_88_713_exporter` | numeric | (mean) emp87_88_713_exporter | stata |
| `est87_88_713_exporter` | numeric | (mean) est87_88_713_exporter | stata |
| `emp77_78_713_exporter` | numeric | (mean) emp77_78_713_exporter | stata |
| `est77_78_713_exporter` | numeric | (mean) est77_78_713_exporter | stata |
| `emp70_71_713_exporter` | numeric | (mean) emp70_71_713_exporter | stata |
| `est70_71_713_exporter` | numeric | (mean) est70_71_713_exporter | stata |
| `emp56_713_exporter` | numeric | (mean) emp56_713_exporter | stata |
| `est56_713_exporter` | numeric | (mean) est56_713_exporter | stata |
| `est06_07_721_exporter` | numeric | (mean) est06_07_721_exporter | stata |
| `emp06_07_721_exporter` | numeric | (mean) emp06_07_721_exporter | stata |
| `emp96_97_721_exporter` | numeric | (mean) emp96_97_721_exporter | stata |
| `est96_97_721_exporter` | numeric | (mean) est96_97_721_exporter | stata |
| `emp87_88_721_exporter` | numeric | (mean) emp87_88_721_exporter | stata |
| `est87_88_721_exporter` | numeric | (mean) est87_88_721_exporter | stata |
| `emp77_78_721_exporter` | numeric | (mean) emp77_78_721_exporter | stata |
| `est77_78_721_exporter` | numeric | (mean) est77_78_721_exporter | stata |
| `emp70_71_721_exporter` | numeric | (mean) emp70_71_721_exporter | stata |
| `est70_71_721_exporter` | numeric | (mean) est70_71_721_exporter | stata |
| `emp56_721_exporter` | numeric | (mean) emp56_721_exporter | stata |
| `est56_721_exporter` | numeric | (mean) est56_721_exporter | stata |
| `est06_07_722_exporter` | numeric | (mean) est06_07_722_exporter | stata |
| `emp06_07_722_exporter` | numeric | (mean) emp06_07_722_exporter | stata |
| `emp96_97_722_exporter` | numeric | (mean) emp96_97_722_exporter | stata |
| `est96_97_722_exporter` | numeric | (mean) est96_97_722_exporter | stata |
| `emp87_88_722_exporter` | numeric | (mean) emp87_88_722_exporter | stata |
| `est87_88_722_exporter` | numeric | (mean) est87_88_722_exporter | stata |
| `emp77_78_722_exporter` | numeric | (mean) emp77_78_722_exporter | stata |
| `est77_78_722_exporter` | numeric | (mean) est77_78_722_exporter | stata |
| `emp70_71_722_exporter` | numeric | (mean) emp70_71_722_exporter | stata |
| `est70_71_722_exporter` | numeric | (mean) est70_71_722_exporter | stata |
| `emp56_722_exporter` | numeric | (mean) emp56_722_exporter | stata |
| `est56_722_exporter` | numeric | (mean) est56_722_exporter | stata |
| `est06_07_811_exporter` | numeric | (mean) est06_07_811_exporter | stata |
| `emp06_07_811_exporter` | numeric | (mean) emp06_07_811_exporter | stata |
| `emp96_97_811_exporter` | numeric | (mean) emp96_97_811_exporter | stata |
| `est96_97_811_exporter` | numeric | (mean) est96_97_811_exporter | stata |
| `emp87_88_811_exporter` | numeric | (mean) emp87_88_811_exporter | stata |
| `est87_88_811_exporter` | numeric | (mean) est87_88_811_exporter | stata |
| `emp77_78_811_exporter` | numeric | (mean) emp77_78_811_exporter | stata |
| `est77_78_811_exporter` | numeric | (mean) est77_78_811_exporter | stata |
| `emp70_71_811_exporter` | numeric | (mean) emp70_71_811_exporter | stata |
| `est70_71_811_exporter` | numeric | (mean) est70_71_811_exporter | stata |
| `emp56_811_exporter` | numeric | (mean) emp56_811_exporter | stata |
| `est56_811_exporter` | numeric | (mean) est56_811_exporter | stata |
| `est06_07_812_exporter` | numeric | (mean) est06_07_812_exporter | stata |
| `emp06_07_812_exporter` | numeric | (mean) emp06_07_812_exporter | stata |
| `emp96_97_812_exporter` | numeric | (mean) emp96_97_812_exporter | stata |
| `est96_97_812_exporter` | numeric | (mean) est96_97_812_exporter | stata |
| `emp87_88_812_exporter` | numeric | (mean) emp87_88_812_exporter | stata |
| `est87_88_812_exporter` | numeric | (mean) est87_88_812_exporter | stata |
| `emp77_78_812_exporter` | numeric | (mean) emp77_78_812_exporter | stata |
| `est77_78_812_exporter` | numeric | (mean) est77_78_812_exporter | stata |
| `emp70_71_812_exporter` | numeric | (mean) emp70_71_812_exporter | stata |
| `est70_71_812_exporter` | numeric | (mean) est70_71_812_exporter | stata |
| `emp56_812_exporter` | numeric | (mean) emp56_812_exporter | stata |
| `est56_812_exporter` | numeric | (mean) est56_812_exporter | stata |
| `est06_07_813_exporter` | numeric | (mean) est06_07_813_exporter | stata |
| `emp06_07_813_exporter` | numeric | (mean) emp06_07_813_exporter | stata |
| `emp96_97_813_exporter` | numeric | (mean) emp96_97_813_exporter | stata |
| `est96_97_813_exporter` | numeric | (mean) est96_97_813_exporter | stata |
| `emp87_88_813_exporter` | numeric | (mean) emp87_88_813_exporter | stata |
| `est87_88_813_exporter` | numeric | (mean) est87_88_813_exporter | stata |
| `emp77_78_813_exporter` | numeric | (mean) emp77_78_813_exporter | stata |
| `est77_78_813_exporter` | numeric | (mean) est77_78_813_exporter | stata |
| `emp70_71_813_exporter` | numeric | (mean) emp70_71_813_exporter | stata |
| `est70_71_813_exporter` | numeric | (mean) est70_71_813_exporter | stata |
| `emp56_813_exporter` | numeric | (mean) emp56_813_exporter | stata |
| `est56_813_exporter` | numeric | (mean) est56_813_exporter | stata |
| `est06_07_921_exporter` | numeric | (mean) est06_07_921_exporter | stata |
| `emp06_07_921_exporter` | numeric | (mean) emp06_07_921_exporter | stata |
| `emp96_97_921_exporter` | numeric | (mean) emp96_97_921_exporter | stata |
| `est96_97_921_exporter` | numeric | (mean) est96_97_921_exporter | stata |
| `emp87_88_921_exporter` | numeric | (mean) emp87_88_921_exporter | stata |
| `est87_88_921_exporter` | numeric | (mean) est87_88_921_exporter | stata |
| `emp77_78_921_exporter` | numeric | (mean) emp77_78_921_exporter | stata |
| `est77_78_921_exporter` | numeric | (mean) est77_78_921_exporter | stata |
| `emp70_71_921_exporter` | numeric | (mean) emp70_71_921_exporter | stata |
| `est70_71_921_exporter` | numeric | (mean) est70_71_921_exporter | stata |
| `emp56_921_exporter` | numeric | (mean) emp56_921_exporter | stata |
| `est56_921_exporter` | numeric | (mean) est56_921_exporter | stata |
| `est06_07_922_exporter` | numeric | (mean) est06_07_922_exporter | stata |
| `emp06_07_922_exporter` | numeric | (mean) emp06_07_922_exporter | stata |
| `emp96_97_922_exporter` | numeric | (mean) emp96_97_922_exporter | stata |
| `est96_97_922_exporter` | numeric | (mean) est96_97_922_exporter | stata |
| `emp87_88_922_exporter` | numeric | (mean) emp87_88_922_exporter | stata |
| `est87_88_922_exporter` | numeric | (mean) est87_88_922_exporter | stata |
| `emp77_78_922_exporter` | numeric | (mean) emp77_78_922_exporter | stata |
| `est77_78_922_exporter` | numeric | (mean) est77_78_922_exporter | stata |
| `emp70_71_922_exporter` | numeric | (mean) emp70_71_922_exporter | stata |
| `est70_71_922_exporter` | numeric | (mean) est70_71_922_exporter | stata |
| `emp56_922_exporter` | numeric | (mean) emp56_922_exporter | stata |
| `est56_922_exporter` | numeric | (mean) est56_922_exporter | stata |
| `manshare1978_exporter` | numeric | (mean) manshare1978_exporter | stata |
| `manshare1983_exporter` | numeric | (mean) manshare1983_exporter | stata |
| `manshare1988_exporter` | numeric | (mean) manshare1988_exporter | stata |
| `manshare1993_exporter` | numeric | (mean) manshare1993_exporter | stata |
| `manshare1998_exporter` | numeric | (mean) manshare1998_exporter | stata |
| `manshare2003_exporter` | numeric | (mean) manshare2003_exporter | stata |
| `pop1990_importer` | numeric | (mean) pop1990_importer | stata |
| `pop2000_importer` | numeric | (mean) pop2000_importer | stata |
| `sec_km_IH_07_importer` | numeric | (mean) sec_km_IH_07_importer | stata |
| `rd_km_IH_07_importer` | numeric | (mean) rd_km_IH_07_importer | stata |
| `ln_km_IH_07_importer` | numeric | (mean) ln_km_IH_07_importer | stata |
| `sec_km_IHU_07_importer` | numeric | (mean) sec_km_IHU_07_importer | stata |
| `rd_km_IHU_07_importer` | numeric | (mean) rd_km_IHU_07_importer | stata |
| `ln_km_IHU_07_importer` | numeric | (mean) ln_km_IHU_07_importer | stata |
| `sec_km_IH_87_importer` | numeric | (mean) sec_km_IH_87_importer | stata |
| `rd_km_IH_87_importer` | numeric | (mean) rd_km_IH_87_importer | stata |
| `ln_km_IH_87_importer` | numeric | (mean) ln_km_IH_87_importer | stata |
| `sec_km_IHU_87_importer` | numeric | (mean) sec_km_IHU_87_importer | stata |
| `rd_km_IHU_87_importer` | numeric | (mean) rd_km_IHU_87_importer | stata |
| `ln_km_IHU_87_importer` | numeric | (mean) ln_km_IHU_87_importer | stata |
| `sec_km_IH_93_importer` | numeric | (mean) sec_km_IH_93_importer | stata |
| `rd_km_IH_93_importer` | numeric | (mean) rd_km_IH_93_importer | stata |
| `ln_km_IH_93_importer` | numeric | (mean) ln_km_IH_93_importer | stata |
| `sec_km_IHU_93_importer` | numeric | (mean) sec_km_IHU_93_importer | stata |
| `rd_km_IHU_93_importer` | numeric | (mean) rd_km_IHU_93_importer | stata |
| `ln_km_IHU_93_importer` | numeric | (mean) ln_km_IHU_93_importer | stata |
| `sec_km_IH_97_importer` | numeric | (mean) sec_km_IH_97_importer | stata |
| `rd_km_IH_97_importer` | numeric | (mean) rd_km_IH_97_importer | stata |
| `ln_km_IH_97_importer` | numeric | (mean) ln_km_IH_97_importer | stata |
| `sec_km_IHU_97_importer` | numeric | (mean) sec_km_IHU_97_importer | stata |
| `rd_km_IHU_97_importer` | numeric | (mean) rd_km_IHU_97_importer | stata |
| `ln_km_IHU_97_importer` | numeric | (mean) ln_km_IHU_97_importer | stata |
| `l_sec_km_IH_87_importer` | numeric | (mean) l_sec_km_IH_87_importer | stata |
| `l_rd_km_IH_87_importer` | numeric | (mean) l_rd_km_IH_87_importer | stata |
| `l_ln_km_IH_87_importer` | numeric | (mean) l_ln_km_IH_87_importer | stata |
| `l_sec_km_IH_93_importer` | numeric | (mean) l_sec_km_IH_93_importer | stata |
| `l_rd_km_IH_93_importer` | numeric | (mean) l_rd_km_IH_93_importer | stata |
| `l_ln_km_IH_93_importer` | numeric | (mean) l_ln_km_IH_93_importer | stata |
| `l_sec_km_IH_97_importer` | numeric | (mean) l_sec_km_IH_97_importer | stata |
| `l_rd_km_IH_97_importer` | numeric | (mean) l_rd_km_IH_97_importer | stata |
| `l_ln_km_IH_97_importer` | numeric | (mean) l_ln_km_IH_97_importer | stata |
| `l_sec_km_IH_07_importer` | numeric | (mean) l_sec_km_IH_07_importer | stata |
| `l_rd_km_IH_07_importer` | numeric | (mean) l_rd_km_IH_07_importer | stata |
| `l_ln_km_IH_07_importer` | numeric | (mean) l_ln_km_IH_07_importer | stata |
| `l_sec_km_IHU_87_importer` | numeric | (mean) l_sec_km_IHU_87_importer | stata |
| `l_rd_km_IHU_87_importer` | numeric | (mean) l_rd_km_IHU_87_importer | stata |
| `l_ln_km_IHU_87_importer` | numeric | (mean) l_ln_km_IHU_87_importer | stata |
| `l_sec_km_IHU_93_importer` | numeric | (mean) l_sec_km_IHU_93_importer | stata |
| `l_rd_km_IHU_93_importer` | numeric | (mean) l_rd_km_IHU_93_importer | stata |
| `l_ln_km_IHU_93_importer` | numeric | (mean) l_ln_km_IHU_93_importer | stata |
| `l_sec_km_IHU_97_importer` | numeric | (mean) l_sec_km_IHU_97_importer | stata |
| `l_rd_km_IHU_97_importer` | numeric | (mean) l_rd_km_IHU_97_importer | stata |
| `l_ln_km_IHU_97_importer` | numeric | (mean) l_ln_km_IHU_97_importer | stata |
| `l_sec_km_IHU_07_importer` | numeric | (mean) l_sec_km_IHU_07_importer | stata |
| `l_rd_km_IHU_07_importer` | numeric | (mean) l_rd_km_IHU_07_importer | stata |
| `l_ln_km_IHU_07_importer` | numeric | (mean) l_ln_km_IHU_07_importer | stata |
| `NBS_IH_road_km50_importer` | numeric | (mean) NBS_IH_road_km50_importer | stata |
| `NBS_IH_road_km57_importer` | numeric | (mean) NBS_IH_road_km57_importer | stata |
| `NBS_IH_road_km67_importer` | numeric | (mean) NBS_IH_road_km67_importer | stata |
| `NBS_IH_road_km77_importer` | numeric | (mean) NBS_IH_road_km77_importer | stata |
| `NBS_IH_road_km87_importer` | numeric | (mean) NBS_IH_road_km87_importer | stata |
| `NBS_IH_road_km93_importer` | numeric | (mean) NBS_IH_road_km93_importer | stata |
| `NBS_hwy1947_km50_importer` | numeric | (mean) NBS_hwy1947_km50_importer | stata |
| `NBS_hwy1947_km57_importer` | numeric | (mean) NBS_hwy1947_km57_importer | stata |
| `NBS_hwy1947_km67_importer` | numeric | (mean) NBS_hwy1947_km67_importer | stata |
| `NBS_hwy1947_km77_importer` | numeric | (mean) NBS_hwy1947_km77_importer | stata |
| `NBS_hwy1947_km87_importer` | numeric | (mean) NBS_hwy1947_km87_importer | stata |
| `NBS_hwy1947_km93_importer` | numeric | (mean) NBS_hwy1947_km93_importer | stata |
| `rail04_2_km_importer` | numeric | (mean) rail04_2_km_importer | stata |
| `rail04_km_importer` | numeric | (mean) rail04_km_importer | stata |
| `csa_ua_hwy1947_importer` | numeric | (mean) csa_ua_hwy1947_importer | stata |
| `csa_ua_rail1898_importer` | numeric | (mean) csa_ua_rail1898_importer | stata |
| `csa_hwy1947_importer` | numeric | (mean) csa_hwy1947_importer | stata |
| `csa_rail1898_importer` | numeric | (mean) csa_rail1898_importer | stata |
| `cntr2rail1898_importer` | numeric | (mean) cntr2rail1898_importer | stata |
| `cntr2hwy1947_importer` | numeric | (mean) cntr2hwy1947_importer | stata |
| `cntr2IH05_importer` | numeric | (mean) cntr2IH05_importer | stata |
| `pix1528_importer` | numeric | (mean) pix1528_importer | stata |
| `pix1675_importer` | numeric | (mean) pix1675_importer | stata |
| `pix1800_importer` | numeric | (mean) pix1800_importer | stata |
| `pix1820_importer` | numeric | (mean) pix1820_importer | stata |
| `pix1835_importer` | numeric | (mean) pix1835_importer | stata |
| `l_pix1528_importer` | numeric | (mean) l_pix1528_importer | stata |
| `l_pix1675_importer` | numeric | (mean) l_pix1675_importer | stata |
| `l_pix1800_importer` | numeric | (mean) l_pix1800_importer | stata |
| `l_pix1820_importer` | numeric | (mean) l_pix1820_importer | stata |
| `l_pix1835_importer` | numeric | (mean) l_pix1835_importer | stata |
| `pix_exp_all_importer` | numeric | (mean) pix_exp_all_importer | stata |
| `l_pix_exp_all_importer` | numeric | (mean) l_pix_exp_all_importer | stata |
| `rail_1898_rays_importer` | numeric | (mean) rail_1898_rays_importer | stata |
| `hwy_1947_rays_importer` | numeric | (mean) hwy_1947_rays_importer | stata |
| `IH_2005_rays_importer` | numeric | (mean) IH_2005_rays_importer | stata |
| `rail2004_2_rays_importer` | numeric | (mean) rail2004_2_rays_importer | stata |
| `rail2004_1_rays_importer` | numeric | (mean) rail2004_1_rays_importer | stata |
| `csa_area_importer` | numeric | (mean) csa_area_importer | stata |
| `pop25_80_importer` | numeric | (mean) pop25_80_importer | stata |
| `pop25_90_importer` | numeric | (mean) pop25_90_importer | stata |
| `pop25_00_importer` | numeric | (mean) pop25_00_importer | stata |
| `pop25_less9_80_importer` | numeric | (mean) pop25_less9_80_importer | stata |
| `pop25_less9_90_importer` | numeric | (mean) pop25_less9_90_importer | stata |
| `pop25_less9_00_importer` | numeric | (mean) pop25_less9_00_importer | stata |
| `pop25_somehs_80_importer` | numeric | (mean) pop25_somehs_80_importer | stata |
| `pop25_somehs_90_importer` | numeric | (mean) pop25_somehs_90_importer | stata |
| `pop25_somehs_00_importer` | numeric | (mean) pop25_somehs_00_importer | stata |
| `pop25_hs_80_importer` | numeric | (mean) pop25_hs_80_importer | stata |
| `pop25_hs_90_importer` | numeric | (mean) pop25_hs_90_importer | stata |
| `pop25_hs_00_importer` | numeric | (mean) pop25_hs_00_importer | stata |
| `pop25_somecoll_80_importer` | numeric | (mean) pop25_somecoll_80_importer | stata |
| `pop25_somecoll_90_importer` | numeric | (mean) pop25_somecoll_90_importer | stata |
| `pop25_somecoll_00_importer` | numeric | (mean) pop25_somecoll_00_importer | stata |
| `pop25_coll_80_importer` | numeric | (mean) pop25_coll_80_importer | stata |
| `pop25_coll_90_importer` | numeric | (mean) pop25_coll_90_importer | stata |
| `pop25_coll_00_importer` | numeric | (mean) pop25_coll_00_importer | stata |
| `pop25_grad_00_importer` | numeric | (mean) pop25_grad_00_importer | stata |
| `pop1619_90_importer` | numeric | (mean) pop1619_90_importer | stata |
| `pop1619_00_importer` | numeric | (mean) pop1619_00_importer | stata |
| `pop1619_hsdrop_90_importer` | numeric | (mean) pop1619_hsdrop_90_importer | stata |
| `pop1619_hsdrop_00_importer` | numeric | (mean) pop1619_hsdrop_00_importer | stata |
| `pi_70_importer` | numeric | (mean) pi_70_importer | stata |
| `pi_80_importer` | numeric | (mean) pi_80_importer | stata |
| `pi_90_importer` | numeric | (mean) pi_90_importer | stata |
| `pi_00_importer` | numeric | (mean) pi_00_importer | stata |
| `pop_70_importer` | numeric | (mean) pop_70_importer | stata |
| `pop_80_importer` | numeric | (mean) pop_80_importer | stata |
| `pop_90_importer` | numeric | (mean) pop_90_importer | stata |
| `pop_00_importer` | numeric | (mean) pop_00_importer | stata |
| `pop1920_importer` | numeric | (mean) pop1920_importer | stata |
| `pop1930_importer` | numeric | (mean) pop1930_importer | stata |
| `pop1940_importer` | numeric | (mean) pop1940_importer | stata |
| `pop1950_importer` | numeric | (mean) pop1950_importer | stata |
| `pop1960_importer` | numeric | (mean) pop1960_importer | stata |
| `pop1970_importer` | numeric | (mean) pop1970_importer | stata |
| `pop1980_importer` | numeric | (mean) pop1980_importer | stata |
| `ocean_dis_importer` | numeric | (mean) ocean_dis_importer | stata |
| `atl_dist_importer` | numeric | (mean) atl_dist_importer | stata |
| `pac_dist_importer` | numeric | (mean) pac_dist_importer | stata |
| `miss_dist_importer` | numeric | (mean) miss_dist_importer | stata |
| `gulf_dist_importer` | numeric | (mean) gulf_dist_importer | stata |
| `glake_dist_importer` | numeric | (mean) glake_dist_importer | stata |
| `slope_importer` | numeric | (mean) slope_importer | stata |
| `division_importer` | numeric | (mean) division_importer | stata |
| `est06_07_111_importer` | numeric | (mean) est06_07_111_importer | stata |
| `emp06_07_111_importer` | numeric | (mean) emp06_07_111_importer | stata |
| `emp96_97_111_importer` | numeric | (mean) emp96_97_111_importer | stata |
| `est96_97_111_importer` | numeric | (mean) est96_97_111_importer | stata |
| `emp87_88_111_importer` | numeric | (mean) emp87_88_111_importer | stata |
| `est87_88_111_importer` | numeric | (mean) est87_88_111_importer | stata |
| `emp77_78_111_importer` | numeric | (mean) emp77_78_111_importer | stata |
| `est77_78_111_importer` | numeric | (mean) est77_78_111_importer | stata |
| `emp70_71_111_importer` | numeric | (mean) emp70_71_111_importer | stata |
| `est70_71_111_importer` | numeric | (mean) est70_71_111_importer | stata |
| `emp56_111_importer` | numeric | (mean) emp56_111_importer | stata |
| `est56_111_importer` | numeric | (mean) est56_111_importer | stata |
| `est06_07_112_importer` | numeric | (mean) est06_07_112_importer | stata |
| `emp06_07_112_importer` | numeric | (mean) emp06_07_112_importer | stata |
| `emp96_97_112_importer` | numeric | (mean) emp96_97_112_importer | stata |
| `est96_97_112_importer` | numeric | (mean) est96_97_112_importer | stata |
| `emp87_88_112_importer` | numeric | (mean) emp87_88_112_importer | stata |
| `est87_88_112_importer` | numeric | (mean) est87_88_112_importer | stata |
| `emp77_78_112_importer` | numeric | (mean) emp77_78_112_importer | stata |
| `est77_78_112_importer` | numeric | (mean) est77_78_112_importer | stata |
| `emp70_71_112_importer` | numeric | (mean) emp70_71_112_importer | stata |
| `est70_71_112_importer` | numeric | (mean) est70_71_112_importer | stata |
| `emp56_112_importer` | numeric | (mean) emp56_112_importer | stata |
| `est56_112_importer` | numeric | (mean) est56_112_importer | stata |
| `est06_07_113_importer` | numeric | (mean) est06_07_113_importer | stata |
| `emp06_07_113_importer` | numeric | (mean) emp06_07_113_importer | stata |
| `emp96_97_113_importer` | numeric | (mean) emp96_97_113_importer | stata |
| `est96_97_113_importer` | numeric | (mean) est96_97_113_importer | stata |
| `emp87_88_113_importer` | numeric | (mean) emp87_88_113_importer | stata |
| `est87_88_113_importer` | numeric | (mean) est87_88_113_importer | stata |
| `emp77_78_113_importer` | numeric | (mean) emp77_78_113_importer | stata |
| `est77_78_113_importer` | numeric | (mean) est77_78_113_importer | stata |
| `emp70_71_113_importer` | numeric | (mean) emp70_71_113_importer | stata |
| `est70_71_113_importer` | numeric | (mean) est70_71_113_importer | stata |
| `emp56_113_importer` | numeric | (mean) emp56_113_importer | stata |
| `est56_113_importer` | numeric | (mean) est56_113_importer | stata |
| `est06_07_114_importer` | numeric | (mean) est06_07_114_importer | stata |
| `emp06_07_114_importer` | numeric | (mean) emp06_07_114_importer | stata |
| `emp96_97_114_importer` | numeric | (mean) emp96_97_114_importer | stata |
| `est96_97_114_importer` | numeric | (mean) est96_97_114_importer | stata |
| `emp87_88_114_importer` | numeric | (mean) emp87_88_114_importer | stata |
| `est87_88_114_importer` | numeric | (mean) est87_88_114_importer | stata |
| `emp77_78_114_importer` | numeric | (mean) emp77_78_114_importer | stata |
| `est77_78_114_importer` | numeric | (mean) est77_78_114_importer | stata |
| `emp70_71_114_importer` | numeric | (mean) emp70_71_114_importer | stata |
| `est70_71_114_importer` | numeric | (mean) est70_71_114_importer | stata |
| `emp56_114_importer` | numeric | (mean) emp56_114_importer | stata |
| `est56_114_importer` | numeric | (mean) est56_114_importer | stata |
| `est06_07_115_importer` | numeric | (mean) est06_07_115_importer | stata |
| `emp06_07_115_importer` | numeric | (mean) emp06_07_115_importer | stata |
| `emp96_97_115_importer` | numeric | (mean) emp96_97_115_importer | stata |
| `est96_97_115_importer` | numeric | (mean) est96_97_115_importer | stata |
| `emp87_88_115_importer` | numeric | (mean) emp87_88_115_importer | stata |
| `est87_88_115_importer` | numeric | (mean) est87_88_115_importer | stata |
| `emp77_78_115_importer` | numeric | (mean) emp77_78_115_importer | stata |
| `est77_78_115_importer` | numeric | (mean) est77_78_115_importer | stata |
| `emp70_71_115_importer` | numeric | (mean) emp70_71_115_importer | stata |
| `est70_71_115_importer` | numeric | (mean) est70_71_115_importer | stata |
| `emp56_115_importer` | numeric | (mean) emp56_115_importer | stata |
| `est56_115_importer` | numeric | (mean) est56_115_importer | stata |
| `est06_07_211_importer` | numeric | (mean) est06_07_211_importer | stata |
| `emp06_07_211_importer` | numeric | (mean) emp06_07_211_importer | stata |
| `emp96_97_211_importer` | numeric | (mean) emp96_97_211_importer | stata |
| `est96_97_211_importer` | numeric | (mean) est96_97_211_importer | stata |
| `emp87_88_211_importer` | numeric | (mean) emp87_88_211_importer | stata |
| `est87_88_211_importer` | numeric | (mean) est87_88_211_importer | stata |
| `emp77_78_211_importer` | numeric | (mean) emp77_78_211_importer | stata |
| `est77_78_211_importer` | numeric | (mean) est77_78_211_importer | stata |
| `emp70_71_211_importer` | numeric | (mean) emp70_71_211_importer | stata |
| `est70_71_211_importer` | numeric | (mean) est70_71_211_importer | stata |
| `emp56_211_importer` | numeric | (mean) emp56_211_importer | stata |
| `est56_211_importer` | numeric | (mean) est56_211_importer | stata |
| `est06_07_212_importer` | numeric | (mean) est06_07_212_importer | stata |
| `emp06_07_212_importer` | numeric | (mean) emp06_07_212_importer | stata |
| `emp96_97_212_importer` | numeric | (mean) emp96_97_212_importer | stata |
| `est96_97_212_importer` | numeric | (mean) est96_97_212_importer | stata |
| `emp87_88_212_importer` | numeric | (mean) emp87_88_212_importer | stata |
| `est87_88_212_importer` | numeric | (mean) est87_88_212_importer | stata |
| `emp77_78_212_importer` | numeric | (mean) emp77_78_212_importer | stata |
| `est77_78_212_importer` | numeric | (mean) est77_78_212_importer | stata |
| `emp70_71_212_importer` | numeric | (mean) emp70_71_212_importer | stata |
| `est70_71_212_importer` | numeric | (mean) est70_71_212_importer | stata |
| `emp56_212_importer` | numeric | (mean) emp56_212_importer | stata |
| `est56_212_importer` | numeric | (mean) est56_212_importer | stata |
| `est06_07_213_importer` | numeric | (mean) est06_07_213_importer | stata |
| `emp06_07_213_importer` | numeric | (mean) emp06_07_213_importer | stata |
| `emp96_97_213_importer` | numeric | (mean) emp96_97_213_importer | stata |
| `est96_97_213_importer` | numeric | (mean) est96_97_213_importer | stata |
| `emp87_88_213_importer` | numeric | (mean) emp87_88_213_importer | stata |
| `est87_88_213_importer` | numeric | (mean) est87_88_213_importer | stata |
| `emp77_78_213_importer` | numeric | (mean) emp77_78_213_importer | stata |
| `est77_78_213_importer` | numeric | (mean) est77_78_213_importer | stata |
| `emp70_71_213_importer` | numeric | (mean) emp70_71_213_importer | stata |
| `est70_71_213_importer` | numeric | (mean) est70_71_213_importer | stata |
| `emp56_213_importer` | numeric | (mean) emp56_213_importer | stata |
| `est56_213_importer` | numeric | (mean) est56_213_importer | stata |
| `est06_07_221_importer` | numeric | (mean) est06_07_221_importer | stata |
| `emp06_07_221_importer` | numeric | (mean) emp06_07_221_importer | stata |
| `emp96_97_221_importer` | numeric | (mean) emp96_97_221_importer | stata |
| `est96_97_221_importer` | numeric | (mean) est96_97_221_importer | stata |
| `emp87_88_221_importer` | numeric | (mean) emp87_88_221_importer | stata |
| `est87_88_221_importer` | numeric | (mean) est87_88_221_importer | stata |
| `emp77_78_221_importer` | numeric | (mean) emp77_78_221_importer | stata |
| `est77_78_221_importer` | numeric | (mean) est77_78_221_importer | stata |
| `emp70_71_221_importer` | numeric | (mean) emp70_71_221_importer | stata |
| `est70_71_221_importer` | numeric | (mean) est70_71_221_importer | stata |
| `emp56_221_importer` | numeric | (mean) emp56_221_importer | stata |
| `est56_221_importer` | numeric | (mean) est56_221_importer | stata |
| `est06_07_236_importer` | numeric | (mean) est06_07_236_importer | stata |
| `emp06_07_236_importer` | numeric | (mean) emp06_07_236_importer | stata |
| `emp96_97_236_importer` | numeric | (mean) emp96_97_236_importer | stata |
| `est96_97_236_importer` | numeric | (mean) est96_97_236_importer | stata |
| `emp87_88_236_importer` | numeric | (mean) emp87_88_236_importer | stata |
| `est87_88_236_importer` | numeric | (mean) est87_88_236_importer | stata |
| `emp77_78_236_importer` | numeric | (mean) emp77_78_236_importer | stata |
| `est77_78_236_importer` | numeric | (mean) est77_78_236_importer | stata |
| `emp70_71_236_importer` | numeric | (mean) emp70_71_236_importer | stata |
| `est70_71_236_importer` | numeric | (mean) est70_71_236_importer | stata |
| `emp56_236_importer` | numeric | (mean) emp56_236_importer | stata |
| `est56_236_importer` | numeric | (mean) est56_236_importer | stata |
| `est06_07_237_importer` | numeric | (mean) est06_07_237_importer | stata |
| `emp06_07_237_importer` | numeric | (mean) emp06_07_237_importer | stata |
| `emp96_97_237_importer` | numeric | (mean) emp96_97_237_importer | stata |
| `est96_97_237_importer` | numeric | (mean) est96_97_237_importer | stata |
| `emp87_88_237_importer` | numeric | (mean) emp87_88_237_importer | stata |
| `est87_88_237_importer` | numeric | (mean) est87_88_237_importer | stata |
| `emp77_78_237_importer` | numeric | (mean) emp77_78_237_importer | stata |
| `est77_78_237_importer` | numeric | (mean) est77_78_237_importer | stata |
| `emp70_71_237_importer` | numeric | (mean) emp70_71_237_importer | stata |
| `est70_71_237_importer` | numeric | (mean) est70_71_237_importer | stata |
| `emp56_237_importer` | numeric | (mean) emp56_237_importer | stata |
| `est56_237_importer` | numeric | (mean) est56_237_importer | stata |
| `est06_07_238_importer` | numeric | (mean) est06_07_238_importer | stata |
| `emp06_07_238_importer` | numeric | (mean) emp06_07_238_importer | stata |
| `emp96_97_238_importer` | numeric | (mean) emp96_97_238_importer | stata |
| `est96_97_238_importer` | numeric | (mean) est96_97_238_importer | stata |
| `emp87_88_238_importer` | numeric | (mean) emp87_88_238_importer | stata |
| `est87_88_238_importer` | numeric | (mean) est87_88_238_importer | stata |
| `emp77_78_238_importer` | numeric | (mean) emp77_78_238_importer | stata |
| `est77_78_238_importer` | numeric | (mean) est77_78_238_importer | stata |
| `emp70_71_238_importer` | numeric | (mean) emp70_71_238_importer | stata |
| `est70_71_238_importer` | numeric | (mean) est70_71_238_importer | stata |
| `emp56_238_importer` | numeric | (mean) emp56_238_importer | stata |
| `est56_238_importer` | numeric | (mean) est56_238_importer | stata |
| `est06_07_311_importer` | numeric | (mean) est06_07_311_importer | stata |
| `emp06_07_311_importer` | numeric | (mean) emp06_07_311_importer | stata |
| `emp96_97_311_importer` | numeric | (mean) emp96_97_311_importer | stata |
| `est96_97_311_importer` | numeric | (mean) est96_97_311_importer | stata |
| `emp87_88_311_importer` | numeric | (mean) emp87_88_311_importer | stata |
| `est87_88_311_importer` | numeric | (mean) est87_88_311_importer | stata |
| `emp77_78_311_importer` | numeric | (mean) emp77_78_311_importer | stata |
| `est77_78_311_importer` | numeric | (mean) est77_78_311_importer | stata |
| `emp70_71_311_importer` | numeric | (mean) emp70_71_311_importer | stata |
| `est70_71_311_importer` | numeric | (mean) est70_71_311_importer | stata |
| `emp56_311_importer` | numeric | (mean) emp56_311_importer | stata |
| `est56_311_importer` | numeric | (mean) est56_311_importer | stata |
| `est06_07_312_importer` | numeric | (mean) est06_07_312_importer | stata |
| `emp06_07_312_importer` | numeric | (mean) emp06_07_312_importer | stata |
| `emp96_97_312_importer` | numeric | (mean) emp96_97_312_importer | stata |
| `est96_97_312_importer` | numeric | (mean) est96_97_312_importer | stata |
| `emp87_88_312_importer` | numeric | (mean) emp87_88_312_importer | stata |
| `est87_88_312_importer` | numeric | (mean) est87_88_312_importer | stata |
| `emp77_78_312_importer` | numeric | (mean) emp77_78_312_importer | stata |
| `est77_78_312_importer` | numeric | (mean) est77_78_312_importer | stata |
| `emp70_71_312_importer` | numeric | (mean) emp70_71_312_importer | stata |
| `est70_71_312_importer` | numeric | (mean) est70_71_312_importer | stata |
| `emp56_312_importer` | numeric | (mean) emp56_312_importer | stata |
| `est56_312_importer` | numeric | (mean) est56_312_importer | stata |
| `est06_07_313_importer` | numeric | (mean) est06_07_313_importer | stata |
| `emp06_07_313_importer` | numeric | (mean) emp06_07_313_importer | stata |
| `emp96_97_313_importer` | numeric | (mean) emp96_97_313_importer | stata |
| `est96_97_313_importer` | numeric | (mean) est96_97_313_importer | stata |
| `emp87_88_313_importer` | numeric | (mean) emp87_88_313_importer | stata |
| `est87_88_313_importer` | numeric | (mean) est87_88_313_importer | stata |
| `emp77_78_313_importer` | numeric | (mean) emp77_78_313_importer | stata |
| `est77_78_313_importer` | numeric | (mean) est77_78_313_importer | stata |
| `emp70_71_313_importer` | numeric | (mean) emp70_71_313_importer | stata |
| `est70_71_313_importer` | numeric | (mean) est70_71_313_importer | stata |
| `emp56_313_importer` | numeric | (mean) emp56_313_importer | stata |
| `est56_313_importer` | numeric | (mean) est56_313_importer | stata |
| `est06_07_314_importer` | numeric | (mean) est06_07_314_importer | stata |
| `emp06_07_314_importer` | numeric | (mean) emp06_07_314_importer | stata |
| `emp96_97_314_importer` | numeric | (mean) emp96_97_314_importer | stata |
| `est96_97_314_importer` | numeric | (mean) est96_97_314_importer | stata |
| `emp87_88_314_importer` | numeric | (mean) emp87_88_314_importer | stata |
| `est87_88_314_importer` | numeric | (mean) est87_88_314_importer | stata |
| `emp77_78_314_importer` | numeric | (mean) emp77_78_314_importer | stata |
| `est77_78_314_importer` | numeric | (mean) est77_78_314_importer | stata |
| `emp70_71_314_importer` | numeric | (mean) emp70_71_314_importer | stata |
| `est70_71_314_importer` | numeric | (mean) est70_71_314_importer | stata |
| `emp56_314_importer` | numeric | (mean) emp56_314_importer | stata |
| `est56_314_importer` | numeric | (mean) est56_314_importer | stata |
| `est06_07_315_importer` | numeric | (mean) est06_07_315_importer | stata |
| `emp06_07_315_importer` | numeric | (mean) emp06_07_315_importer | stata |
| `emp96_97_315_importer` | numeric | (mean) emp96_97_315_importer | stata |
| `est96_97_315_importer` | numeric | (mean) est96_97_315_importer | stata |
| `emp87_88_315_importer` | numeric | (mean) emp87_88_315_importer | stata |
| `est87_88_315_importer` | numeric | (mean) est87_88_315_importer | stata |
| `emp77_78_315_importer` | numeric | (mean) emp77_78_315_importer | stata |
| `est77_78_315_importer` | numeric | (mean) est77_78_315_importer | stata |
| `emp70_71_315_importer` | numeric | (mean) emp70_71_315_importer | stata |
| `est70_71_315_importer` | numeric | (mean) est70_71_315_importer | stata |
| `emp56_315_importer` | numeric | (mean) emp56_315_importer | stata |
| `est56_315_importer` | numeric | (mean) est56_315_importer | stata |
| `est06_07_316_importer` | numeric | (mean) est06_07_316_importer | stata |
| `emp06_07_316_importer` | numeric | (mean) emp06_07_316_importer | stata |
| `emp96_97_316_importer` | numeric | (mean) emp96_97_316_importer | stata |
| `est96_97_316_importer` | numeric | (mean) est96_97_316_importer | stata |
| `emp87_88_316_importer` | numeric | (mean) emp87_88_316_importer | stata |
| `est87_88_316_importer` | numeric | (mean) est87_88_316_importer | stata |
| `emp77_78_316_importer` | numeric | (mean) emp77_78_316_importer | stata |
| `est77_78_316_importer` | numeric | (mean) est77_78_316_importer | stata |
| `emp70_71_316_importer` | numeric | (mean) emp70_71_316_importer | stata |
| `est70_71_316_importer` | numeric | (mean) est70_71_316_importer | stata |
| `emp56_316_importer` | numeric | (mean) emp56_316_importer | stata |
| `est56_316_importer` | numeric | (mean) est56_316_importer | stata |
| `est06_07_321_importer` | numeric | (mean) est06_07_321_importer | stata |
| `emp06_07_321_importer` | numeric | (mean) emp06_07_321_importer | stata |
| `emp96_97_321_importer` | numeric | (mean) emp96_97_321_importer | stata |
| `est96_97_321_importer` | numeric | (mean) est96_97_321_importer | stata |
| `emp87_88_321_importer` | numeric | (mean) emp87_88_321_importer | stata |
| `est87_88_321_importer` | numeric | (mean) est87_88_321_importer | stata |
| `emp77_78_321_importer` | numeric | (mean) emp77_78_321_importer | stata |
| `est77_78_321_importer` | numeric | (mean) est77_78_321_importer | stata |
| `emp70_71_321_importer` | numeric | (mean) emp70_71_321_importer | stata |
| `est70_71_321_importer` | numeric | (mean) est70_71_321_importer | stata |
| `emp56_321_importer` | numeric | (mean) emp56_321_importer | stata |
| `est56_321_importer` | numeric | (mean) est56_321_importer | stata |
| `est06_07_322_importer` | numeric | (mean) est06_07_322_importer | stata |
| `emp06_07_322_importer` | numeric | (mean) emp06_07_322_importer | stata |
| `emp96_97_322_importer` | numeric | (mean) emp96_97_322_importer | stata |
| `est96_97_322_importer` | numeric | (mean) est96_97_322_importer | stata |
| `emp87_88_322_importer` | numeric | (mean) emp87_88_322_importer | stata |
| `est87_88_322_importer` | numeric | (mean) est87_88_322_importer | stata |
| `emp77_78_322_importer` | numeric | (mean) emp77_78_322_importer | stata |
| `est77_78_322_importer` | numeric | (mean) est77_78_322_importer | stata |
| `emp70_71_322_importer` | numeric | (mean) emp70_71_322_importer | stata |
| `est70_71_322_importer` | numeric | (mean) est70_71_322_importer | stata |
| `emp56_322_importer` | numeric | (mean) emp56_322_importer | stata |
| `est56_322_importer` | numeric | (mean) est56_322_importer | stata |
| `est06_07_323_importer` | numeric | (mean) est06_07_323_importer | stata |
| `emp06_07_323_importer` | numeric | (mean) emp06_07_323_importer | stata |
| `emp96_97_323_importer` | numeric | (mean) emp96_97_323_importer | stata |
| `est96_97_323_importer` | numeric | (mean) est96_97_323_importer | stata |
| `emp87_88_323_importer` | numeric | (mean) emp87_88_323_importer | stata |
| `est87_88_323_importer` | numeric | (mean) est87_88_323_importer | stata |
| `emp77_78_323_importer` | numeric | (mean) emp77_78_323_importer | stata |
| `est77_78_323_importer` | numeric | (mean) est77_78_323_importer | stata |
| `emp70_71_323_importer` | numeric | (mean) emp70_71_323_importer | stata |
| `est70_71_323_importer` | numeric | (mean) est70_71_323_importer | stata |
| `emp56_323_importer` | numeric | (mean) emp56_323_importer | stata |
| `est56_323_importer` | numeric | (mean) est56_323_importer | stata |
| `est06_07_324_importer` | numeric | (mean) est06_07_324_importer | stata |
| `emp06_07_324_importer` | numeric | (mean) emp06_07_324_importer | stata |
| `emp96_97_324_importer` | numeric | (mean) emp96_97_324_importer | stata |
| `est96_97_324_importer` | numeric | (mean) est96_97_324_importer | stata |
| `emp87_88_324_importer` | numeric | (mean) emp87_88_324_importer | stata |
| `est87_88_324_importer` | numeric | (mean) est87_88_324_importer | stata |
| `emp77_78_324_importer` | numeric | (mean) emp77_78_324_importer | stata |
| `est77_78_324_importer` | numeric | (mean) est77_78_324_importer | stata |
| `emp70_71_324_importer` | numeric | (mean) emp70_71_324_importer | stata |
| `est70_71_324_importer` | numeric | (mean) est70_71_324_importer | stata |
| `emp56_324_importer` | numeric | (mean) emp56_324_importer | stata |
| `est56_324_importer` | numeric | (mean) est56_324_importer | stata |
| `est06_07_325_importer` | numeric | (mean) est06_07_325_importer | stata |
| `emp06_07_325_importer` | numeric | (mean) emp06_07_325_importer | stata |
| `emp96_97_325_importer` | numeric | (mean) emp96_97_325_importer | stata |
| `est96_97_325_importer` | numeric | (mean) est96_97_325_importer | stata |
| `emp87_88_325_importer` | numeric | (mean) emp87_88_325_importer | stata |
| `est87_88_325_importer` | numeric | (mean) est87_88_325_importer | stata |
| `emp77_78_325_importer` | numeric | (mean) emp77_78_325_importer | stata |
| `est77_78_325_importer` | numeric | (mean) est77_78_325_importer | stata |
| `emp70_71_325_importer` | numeric | (mean) emp70_71_325_importer | stata |
| `est70_71_325_importer` | numeric | (mean) est70_71_325_importer | stata |
| `emp56_325_importer` | numeric | (mean) emp56_325_importer | stata |
| `est56_325_importer` | numeric | (mean) est56_325_importer | stata |
| `est06_07_326_importer` | numeric | (mean) est06_07_326_importer | stata |
| `emp06_07_326_importer` | numeric | (mean) emp06_07_326_importer | stata |
| `emp96_97_326_importer` | numeric | (mean) emp96_97_326_importer | stata |
| `est96_97_326_importer` | numeric | (mean) est96_97_326_importer | stata |
| `emp87_88_326_importer` | numeric | (mean) emp87_88_326_importer | stata |
| `est87_88_326_importer` | numeric | (mean) est87_88_326_importer | stata |
| `emp77_78_326_importer` | numeric | (mean) emp77_78_326_importer | stata |
| `est77_78_326_importer` | numeric | (mean) est77_78_326_importer | stata |
| `emp70_71_326_importer` | numeric | (mean) emp70_71_326_importer | stata |
| `est70_71_326_importer` | numeric | (mean) est70_71_326_importer | stata |
| `emp56_326_importer` | numeric | (mean) emp56_326_importer | stata |
| `est56_326_importer` | numeric | (mean) est56_326_importer | stata |
| `est06_07_327_importer` | numeric | (mean) est06_07_327_importer | stata |
| `emp06_07_327_importer` | numeric | (mean) emp06_07_327_importer | stata |
| `emp96_97_327_importer` | numeric | (mean) emp96_97_327_importer | stata |
| `est96_97_327_importer` | numeric | (mean) est96_97_327_importer | stata |
| `emp87_88_327_importer` | numeric | (mean) emp87_88_327_importer | stata |
| `est87_88_327_importer` | numeric | (mean) est87_88_327_importer | stata |
| `emp77_78_327_importer` | numeric | (mean) emp77_78_327_importer | stata |
| `est77_78_327_importer` | numeric | (mean) est77_78_327_importer | stata |
| `emp70_71_327_importer` | numeric | (mean) emp70_71_327_importer | stata |
| `est70_71_327_importer` | numeric | (mean) est70_71_327_importer | stata |
| `emp56_327_importer` | numeric | (mean) emp56_327_importer | stata |
| `est56_327_importer` | numeric | (mean) est56_327_importer | stata |
| `est06_07_331_importer` | numeric | (mean) est06_07_331_importer | stata |
| `emp06_07_331_importer` | numeric | (mean) emp06_07_331_importer | stata |
| `emp96_97_331_importer` | numeric | (mean) emp96_97_331_importer | stata |
| `est96_97_331_importer` | numeric | (mean) est96_97_331_importer | stata |
| `emp87_88_331_importer` | numeric | (mean) emp87_88_331_importer | stata |
| `est87_88_331_importer` | numeric | (mean) est87_88_331_importer | stata |
| `emp77_78_331_importer` | numeric | (mean) emp77_78_331_importer | stata |
| `est77_78_331_importer` | numeric | (mean) est77_78_331_importer | stata |
| `emp70_71_331_importer` | numeric | (mean) emp70_71_331_importer | stata |
| `est70_71_331_importer` | numeric | (mean) est70_71_331_importer | stata |
| `emp56_331_importer` | numeric | (mean) emp56_331_importer | stata |
| `est56_331_importer` | numeric | (mean) est56_331_importer | stata |
| `est06_07_332_importer` | numeric | (mean) est06_07_332_importer | stata |
| `emp06_07_332_importer` | numeric | (mean) emp06_07_332_importer | stata |
| `emp96_97_332_importer` | numeric | (mean) emp96_97_332_importer | stata |
| `est96_97_332_importer` | numeric | (mean) est96_97_332_importer | stata |
| `emp87_88_332_importer` | numeric | (mean) emp87_88_332_importer | stata |
| `est87_88_332_importer` | numeric | (mean) est87_88_332_importer | stata |
| `emp77_78_332_importer` | numeric | (mean) emp77_78_332_importer | stata |
| `est77_78_332_importer` | numeric | (mean) est77_78_332_importer | stata |
| `emp70_71_332_importer` | numeric | (mean) emp70_71_332_importer | stata |
| `est70_71_332_importer` | numeric | (mean) est70_71_332_importer | stata |
| `emp56_332_importer` | numeric | (mean) emp56_332_importer | stata |
| `est56_332_importer` | numeric | (mean) est56_332_importer | stata |
| `est06_07_333_importer` | numeric | (mean) est06_07_333_importer | stata |
| `emp06_07_333_importer` | numeric | (mean) emp06_07_333_importer | stata |
| `emp96_97_333_importer` | numeric | (mean) emp96_97_333_importer | stata |
| `est96_97_333_importer` | numeric | (mean) est96_97_333_importer | stata |
| `emp87_88_333_importer` | numeric | (mean) emp87_88_333_importer | stata |
| `est87_88_333_importer` | numeric | (mean) est87_88_333_importer | stata |
| `emp77_78_333_importer` | numeric | (mean) emp77_78_333_importer | stata |
| `est77_78_333_importer` | numeric | (mean) est77_78_333_importer | stata |
| `emp70_71_333_importer` | numeric | (mean) emp70_71_333_importer | stata |
| `est70_71_333_importer` | numeric | (mean) est70_71_333_importer | stata |
| `emp56_333_importer` | numeric | (mean) emp56_333_importer | stata |
| `est56_333_importer` | numeric | (mean) est56_333_importer | stata |
| `est06_07_334_importer` | numeric | (mean) est06_07_334_importer | stata |
| `emp06_07_334_importer` | numeric | (mean) emp06_07_334_importer | stata |
| `emp96_97_334_importer` | numeric | (mean) emp96_97_334_importer | stata |
| `est96_97_334_importer` | numeric | (mean) est96_97_334_importer | stata |
| `emp87_88_334_importer` | numeric | (mean) emp87_88_334_importer | stata |
| `est87_88_334_importer` | numeric | (mean) est87_88_334_importer | stata |
| `emp77_78_334_importer` | numeric | (mean) emp77_78_334_importer | stata |
| `est77_78_334_importer` | numeric | (mean) est77_78_334_importer | stata |
| `emp70_71_334_importer` | numeric | (mean) emp70_71_334_importer | stata |
| `est70_71_334_importer` | numeric | (mean) est70_71_334_importer | stata |
| `emp56_334_importer` | numeric | (mean) emp56_334_importer | stata |
| `est56_334_importer` | numeric | (mean) est56_334_importer | stata |
| `est06_07_335_importer` | numeric | (mean) est06_07_335_importer | stata |
| `emp06_07_335_importer` | numeric | (mean) emp06_07_335_importer | stata |
| `emp96_97_335_importer` | numeric | (mean) emp96_97_335_importer | stata |
| `est96_97_335_importer` | numeric | (mean) est96_97_335_importer | stata |
| `emp87_88_335_importer` | numeric | (mean) emp87_88_335_importer | stata |
| `est87_88_335_importer` | numeric | (mean) est87_88_335_importer | stata |
| `emp77_78_335_importer` | numeric | (mean) emp77_78_335_importer | stata |
| `est77_78_335_importer` | numeric | (mean) est77_78_335_importer | stata |
| `emp70_71_335_importer` | numeric | (mean) emp70_71_335_importer | stata |
| `est70_71_335_importer` | numeric | (mean) est70_71_335_importer | stata |
| `emp56_335_importer` | numeric | (mean) emp56_335_importer | stata |
| `est56_335_importer` | numeric | (mean) est56_335_importer | stata |
| `est06_07_336_importer` | numeric | (mean) est06_07_336_importer | stata |
| `emp06_07_336_importer` | numeric | (mean) emp06_07_336_importer | stata |
| `emp96_97_336_importer` | numeric | (mean) emp96_97_336_importer | stata |
| `est96_97_336_importer` | numeric | (mean) est96_97_336_importer | stata |
| `emp87_88_336_importer` | numeric | (mean) emp87_88_336_importer | stata |
| `est87_88_336_importer` | numeric | (mean) est87_88_336_importer | stata |
| `emp77_78_336_importer` | numeric | (mean) emp77_78_336_importer | stata |
| `est77_78_336_importer` | numeric | (mean) est77_78_336_importer | stata |
| `emp70_71_336_importer` | numeric | (mean) emp70_71_336_importer | stata |
| `est70_71_336_importer` | numeric | (mean) est70_71_336_importer | stata |
| `emp56_336_importer` | numeric | (mean) emp56_336_importer | stata |
| `est56_336_importer` | numeric | (mean) est56_336_importer | stata |
| `est06_07_337_importer` | numeric | (mean) est06_07_337_importer | stata |
| `emp06_07_337_importer` | numeric | (mean) emp06_07_337_importer | stata |
| `emp96_97_337_importer` | numeric | (mean) emp96_97_337_importer | stata |
| `est96_97_337_importer` | numeric | (mean) est96_97_337_importer | stata |
| `emp87_88_337_importer` | numeric | (mean) emp87_88_337_importer | stata |
| `est87_88_337_importer` | numeric | (mean) est87_88_337_importer | stata |
| `emp77_78_337_importer` | numeric | (mean) emp77_78_337_importer | stata |
| `est77_78_337_importer` | numeric | (mean) est77_78_337_importer | stata |
| `emp70_71_337_importer` | numeric | (mean) emp70_71_337_importer | stata |
| `est70_71_337_importer` | numeric | (mean) est70_71_337_importer | stata |
| `emp56_337_importer` | numeric | (mean) emp56_337_importer | stata |
| `est56_337_importer` | numeric | (mean) est56_337_importer | stata |
| `est06_07_339_importer` | numeric | (mean) est06_07_339_importer | stata |
| `emp06_07_339_importer` | numeric | (mean) emp06_07_339_importer | stata |
| `emp96_97_339_importer` | numeric | (mean) emp96_97_339_importer | stata |
| `est96_97_339_importer` | numeric | (mean) est96_97_339_importer | stata |
| `emp87_88_339_importer` | numeric | (mean) emp87_88_339_importer | stata |
| `est87_88_339_importer` | numeric | (mean) est87_88_339_importer | stata |
| `emp77_78_339_importer` | numeric | (mean) emp77_78_339_importer | stata |
| `est77_78_339_importer` | numeric | (mean) est77_78_339_importer | stata |
| `emp70_71_339_importer` | numeric | (mean) emp70_71_339_importer | stata |
| `est70_71_339_importer` | numeric | (mean) est70_71_339_importer | stata |
| `emp56_339_importer` | numeric | (mean) emp56_339_importer | stata |
| `est56_339_importer` | numeric | (mean) est56_339_importer | stata |
| `est06_07_423_importer` | numeric | (mean) est06_07_423_importer | stata |
| `emp06_07_423_importer` | numeric | (mean) emp06_07_423_importer | stata |
| `emp96_97_423_importer` | numeric | (mean) emp96_97_423_importer | stata |
| `est96_97_423_importer` | numeric | (mean) est96_97_423_importer | stata |
| `emp87_88_423_importer` | numeric | (mean) emp87_88_423_importer | stata |
| `est87_88_423_importer` | numeric | (mean) est87_88_423_importer | stata |
| `emp77_78_423_importer` | numeric | (mean) emp77_78_423_importer | stata |
| `est77_78_423_importer` | numeric | (mean) est77_78_423_importer | stata |
| `emp70_71_423_importer` | numeric | (mean) emp70_71_423_importer | stata |
| `est70_71_423_importer` | numeric | (mean) est70_71_423_importer | stata |
| `emp56_423_importer` | numeric | (mean) emp56_423_importer | stata |
| `est56_423_importer` | numeric | (mean) est56_423_importer | stata |
| `est06_07_424_importer` | numeric | (mean) est06_07_424_importer | stata |
| `emp06_07_424_importer` | numeric | (mean) emp06_07_424_importer | stata |
| `emp96_97_424_importer` | numeric | (mean) emp96_97_424_importer | stata |
| `est96_97_424_importer` | numeric | (mean) est96_97_424_importer | stata |
| `emp87_88_424_importer` | numeric | (mean) emp87_88_424_importer | stata |
| `est87_88_424_importer` | numeric | (mean) est87_88_424_importer | stata |
| `emp77_78_424_importer` | numeric | (mean) emp77_78_424_importer | stata |
| `est77_78_424_importer` | numeric | (mean) est77_78_424_importer | stata |
| `emp70_71_424_importer` | numeric | (mean) emp70_71_424_importer | stata |
| `est70_71_424_importer` | numeric | (mean) est70_71_424_importer | stata |
| `emp56_424_importer` | numeric | (mean) emp56_424_importer | stata |
| `est56_424_importer` | numeric | (mean) est56_424_importer | stata |
| `est06_07_425_importer` | numeric | (mean) est06_07_425_importer | stata |
| `emp06_07_425_importer` | numeric | (mean) emp06_07_425_importer | stata |
| `emp96_97_425_importer` | numeric | (mean) emp96_97_425_importer | stata |
| `est96_97_425_importer` | numeric | (mean) est96_97_425_importer | stata |
| `emp87_88_425_importer` | numeric | (mean) emp87_88_425_importer | stata |
| `est87_88_425_importer` | numeric | (mean) est87_88_425_importer | stata |
| `emp77_78_425_importer` | numeric | (mean) emp77_78_425_importer | stata |
| `est77_78_425_importer` | numeric | (mean) est77_78_425_importer | stata |
| `emp70_71_425_importer` | numeric | (mean) emp70_71_425_importer | stata |
| `est70_71_425_importer` | numeric | (mean) est70_71_425_importer | stata |
| `emp56_425_importer` | numeric | (mean) emp56_425_importer | stata |
| `est56_425_importer` | numeric | (mean) est56_425_importer | stata |
| `est06_07_441_importer` | numeric | (mean) est06_07_441_importer | stata |
| `emp06_07_441_importer` | numeric | (mean) emp06_07_441_importer | stata |
| `emp96_97_441_importer` | numeric | (mean) emp96_97_441_importer | stata |
| `est96_97_441_importer` | numeric | (mean) est96_97_441_importer | stata |
| `emp87_88_441_importer` | numeric | (mean) emp87_88_441_importer | stata |
| `est87_88_441_importer` | numeric | (mean) est87_88_441_importer | stata |
| `emp77_78_441_importer` | numeric | (mean) emp77_78_441_importer | stata |
| `est77_78_441_importer` | numeric | (mean) est77_78_441_importer | stata |
| `emp70_71_441_importer` | numeric | (mean) emp70_71_441_importer | stata |
| `est70_71_441_importer` | numeric | (mean) est70_71_441_importer | stata |
| `emp56_441_importer` | numeric | (mean) emp56_441_importer | stata |
| `est56_441_importer` | numeric | (mean) est56_441_importer | stata |
| `est06_07_442_importer` | numeric | (mean) est06_07_442_importer | stata |
| `emp06_07_442_importer` | numeric | (mean) emp06_07_442_importer | stata |
| `emp96_97_442_importer` | numeric | (mean) emp96_97_442_importer | stata |
| `est96_97_442_importer` | numeric | (mean) est96_97_442_importer | stata |
| `emp87_88_442_importer` | numeric | (mean) emp87_88_442_importer | stata |
| `est87_88_442_importer` | numeric | (mean) est87_88_442_importer | stata |
| `emp77_78_442_importer` | numeric | (mean) emp77_78_442_importer | stata |
| `est77_78_442_importer` | numeric | (mean) est77_78_442_importer | stata |
| `emp70_71_442_importer` | numeric | (mean) emp70_71_442_importer | stata |
| `est70_71_442_importer` | numeric | (mean) est70_71_442_importer | stata |
| `emp56_442_importer` | numeric | (mean) emp56_442_importer | stata |
| `est56_442_importer` | numeric | (mean) est56_442_importer | stata |
| `est06_07_443_importer` | numeric | (mean) est06_07_443_importer | stata |
| `emp06_07_443_importer` | numeric | (mean) emp06_07_443_importer | stata |
| `emp96_97_443_importer` | numeric | (mean) emp96_97_443_importer | stata |
| `est96_97_443_importer` | numeric | (mean) est96_97_443_importer | stata |
| `emp87_88_443_importer` | numeric | (mean) emp87_88_443_importer | stata |
| `est87_88_443_importer` | numeric | (mean) est87_88_443_importer | stata |
| `emp77_78_443_importer` | numeric | (mean) emp77_78_443_importer | stata |
| `est77_78_443_importer` | numeric | (mean) est77_78_443_importer | stata |
| `emp70_71_443_importer` | numeric | (mean) emp70_71_443_importer | stata |
| `est70_71_443_importer` | numeric | (mean) est70_71_443_importer | stata |
| `emp56_443_importer` | numeric | (mean) emp56_443_importer | stata |
| `est56_443_importer` | numeric | (mean) est56_443_importer | stata |
| `est06_07_444_importer` | numeric | (mean) est06_07_444_importer | stata |
| `emp06_07_444_importer` | numeric | (mean) emp06_07_444_importer | stata |
| `emp96_97_444_importer` | numeric | (mean) emp96_97_444_importer | stata |
| `est96_97_444_importer` | numeric | (mean) est96_97_444_importer | stata |
| `emp87_88_444_importer` | numeric | (mean) emp87_88_444_importer | stata |
| `est87_88_444_importer` | numeric | (mean) est87_88_444_importer | stata |
| `emp77_78_444_importer` | numeric | (mean) emp77_78_444_importer | stata |
| `est77_78_444_importer` | numeric | (mean) est77_78_444_importer | stata |
| `emp70_71_444_importer` | numeric | (mean) emp70_71_444_importer | stata |
| `est70_71_444_importer` | numeric | (mean) est70_71_444_importer | stata |
| `emp56_444_importer` | numeric | (mean) emp56_444_importer | stata |
| `est56_444_importer` | numeric | (mean) est56_444_importer | stata |
| `est06_07_445_importer` | numeric | (mean) est06_07_445_importer | stata |
| `emp06_07_445_importer` | numeric | (mean) emp06_07_445_importer | stata |
| `emp96_97_445_importer` | numeric | (mean) emp96_97_445_importer | stata |
| `est96_97_445_importer` | numeric | (mean) est96_97_445_importer | stata |
| `emp87_88_445_importer` | numeric | (mean) emp87_88_445_importer | stata |
| `est87_88_445_importer` | numeric | (mean) est87_88_445_importer | stata |
| `emp77_78_445_importer` | numeric | (mean) emp77_78_445_importer | stata |
| `est77_78_445_importer` | numeric | (mean) est77_78_445_importer | stata |
| `emp70_71_445_importer` | numeric | (mean) emp70_71_445_importer | stata |
| `est70_71_445_importer` | numeric | (mean) est70_71_445_importer | stata |
| `emp56_445_importer` | numeric | (mean) emp56_445_importer | stata |
| `est56_445_importer` | numeric | (mean) est56_445_importer | stata |
| `est06_07_446_importer` | numeric | (mean) est06_07_446_importer | stata |
| `emp06_07_446_importer` | numeric | (mean) emp06_07_446_importer | stata |
| `emp96_97_446_importer` | numeric | (mean) emp96_97_446_importer | stata |
| `est96_97_446_importer` | numeric | (mean) est96_97_446_importer | stata |
| `emp87_88_446_importer` | numeric | (mean) emp87_88_446_importer | stata |
| `est87_88_446_importer` | numeric | (mean) est87_88_446_importer | stata |
| `emp77_78_446_importer` | numeric | (mean) emp77_78_446_importer | stata |
| `est77_78_446_importer` | numeric | (mean) est77_78_446_importer | stata |
| `emp70_71_446_importer` | numeric | (mean) emp70_71_446_importer | stata |
| `est70_71_446_importer` | numeric | (mean) est70_71_446_importer | stata |
| `emp56_446_importer` | numeric | (mean) emp56_446_importer | stata |
| `est56_446_importer` | numeric | (mean) est56_446_importer | stata |
| `est06_07_447_importer` | numeric | (mean) est06_07_447_importer | stata |
| `emp06_07_447_importer` | numeric | (mean) emp06_07_447_importer | stata |
| `emp96_97_447_importer` | numeric | (mean) emp96_97_447_importer | stata |
| `est96_97_447_importer` | numeric | (mean) est96_97_447_importer | stata |
| `emp87_88_447_importer` | numeric | (mean) emp87_88_447_importer | stata |
| `est87_88_447_importer` | numeric | (mean) est87_88_447_importer | stata |
| `emp77_78_447_importer` | numeric | (mean) emp77_78_447_importer | stata |
| `est77_78_447_importer` | numeric | (mean) est77_78_447_importer | stata |
| `emp70_71_447_importer` | numeric | (mean) emp70_71_447_importer | stata |
| `est70_71_447_importer` | numeric | (mean) est70_71_447_importer | stata |
| `emp56_447_importer` | numeric | (mean) emp56_447_importer | stata |
| `est56_447_importer` | numeric | (mean) est56_447_importer | stata |
| `est06_07_448_importer` | numeric | (mean) est06_07_448_importer | stata |
| `emp06_07_448_importer` | numeric | (mean) emp06_07_448_importer | stata |
| `emp96_97_448_importer` | numeric | (mean) emp96_97_448_importer | stata |
| `est96_97_448_importer` | numeric | (mean) est96_97_448_importer | stata |
| `emp87_88_448_importer` | numeric | (mean) emp87_88_448_importer | stata |
| `est87_88_448_importer` | numeric | (mean) est87_88_448_importer | stata |
| `emp77_78_448_importer` | numeric | (mean) emp77_78_448_importer | stata |
| `est77_78_448_importer` | numeric | (mean) est77_78_448_importer | stata |
| `emp70_71_448_importer` | numeric | (mean) emp70_71_448_importer | stata |
| `est70_71_448_importer` | numeric | (mean) est70_71_448_importer | stata |
| `emp56_448_importer` | numeric | (mean) emp56_448_importer | stata |
| `est56_448_importer` | numeric | (mean) est56_448_importer | stata |
| `est06_07_451_importer` | numeric | (mean) est06_07_451_importer | stata |
| `emp06_07_451_importer` | numeric | (mean) emp06_07_451_importer | stata |
| `emp96_97_451_importer` | numeric | (mean) emp96_97_451_importer | stata |
| `est96_97_451_importer` | numeric | (mean) est96_97_451_importer | stata |
| `emp87_88_451_importer` | numeric | (mean) emp87_88_451_importer | stata |
| `est87_88_451_importer` | numeric | (mean) est87_88_451_importer | stata |
| `emp77_78_451_importer` | numeric | (mean) emp77_78_451_importer | stata |
| `est77_78_451_importer` | numeric | (mean) est77_78_451_importer | stata |
| `emp70_71_451_importer` | numeric | (mean) emp70_71_451_importer | stata |
| `est70_71_451_importer` | numeric | (mean) est70_71_451_importer | stata |
| `emp56_451_importer` | numeric | (mean) emp56_451_importer | stata |
| `est56_451_importer` | numeric | (mean) est56_451_importer | stata |
| `est06_07_452_importer` | numeric | (mean) est06_07_452_importer | stata |
| `emp06_07_452_importer` | numeric | (mean) emp06_07_452_importer | stata |
| `emp96_97_452_importer` | numeric | (mean) emp96_97_452_importer | stata |
| `est96_97_452_importer` | numeric | (mean) est96_97_452_importer | stata |
| `emp87_88_452_importer` | numeric | (mean) emp87_88_452_importer | stata |
| `est87_88_452_importer` | numeric | (mean) est87_88_452_importer | stata |
| `emp77_78_452_importer` | numeric | (mean) emp77_78_452_importer | stata |
| `est77_78_452_importer` | numeric | (mean) est77_78_452_importer | stata |
| `emp70_71_452_importer` | numeric | (mean) emp70_71_452_importer | stata |
| `est70_71_452_importer` | numeric | (mean) est70_71_452_importer | stata |
| `emp56_452_importer` | numeric | (mean) emp56_452_importer | stata |
| `est56_452_importer` | numeric | (mean) est56_452_importer | stata |
| `est06_07_453_importer` | numeric | (mean) est06_07_453_importer | stata |
| `emp06_07_453_importer` | numeric | (mean) emp06_07_453_importer | stata |
| `emp96_97_453_importer` | numeric | (mean) emp96_97_453_importer | stata |
| `est96_97_453_importer` | numeric | (mean) est96_97_453_importer | stata |
| `emp87_88_453_importer` | numeric | (mean) emp87_88_453_importer | stata |
| `est87_88_453_importer` | numeric | (mean) est87_88_453_importer | stata |
| `emp77_78_453_importer` | numeric | (mean) emp77_78_453_importer | stata |
| `est77_78_453_importer` | numeric | (mean) est77_78_453_importer | stata |
| `emp70_71_453_importer` | numeric | (mean) emp70_71_453_importer | stata |
| `est70_71_453_importer` | numeric | (mean) est70_71_453_importer | stata |
| `emp56_453_importer` | numeric | (mean) emp56_453_importer | stata |
| `est56_453_importer` | numeric | (mean) est56_453_importer | stata |
| `est06_07_454_importer` | numeric | (mean) est06_07_454_importer | stata |
| `emp06_07_454_importer` | numeric | (mean) emp06_07_454_importer | stata |
| `emp96_97_454_importer` | numeric | (mean) emp96_97_454_importer | stata |
| `est96_97_454_importer` | numeric | (mean) est96_97_454_importer | stata |
| `emp87_88_454_importer` | numeric | (mean) emp87_88_454_importer | stata |
| `est87_88_454_importer` | numeric | (mean) est87_88_454_importer | stata |
| `emp77_78_454_importer` | numeric | (mean) emp77_78_454_importer | stata |
| `est77_78_454_importer` | numeric | (mean) est77_78_454_importer | stata |
| `emp70_71_454_importer` | numeric | (mean) emp70_71_454_importer | stata |
| `est70_71_454_importer` | numeric | (mean) est70_71_454_importer | stata |
| `emp56_454_importer` | numeric | (mean) emp56_454_importer | stata |
| `est56_454_importer` | numeric | (mean) est56_454_importer | stata |
| `est06_07_481_importer` | numeric | (mean) est06_07_481_importer | stata |
| `emp06_07_481_importer` | numeric | (mean) emp06_07_481_importer | stata |
| `emp96_97_481_importer` | numeric | (mean) emp96_97_481_importer | stata |
| `est96_97_481_importer` | numeric | (mean) est96_97_481_importer | stata |
| `emp87_88_481_importer` | numeric | (mean) emp87_88_481_importer | stata |
| `est87_88_481_importer` | numeric | (mean) est87_88_481_importer | stata |
| `emp77_78_481_importer` | numeric | (mean) emp77_78_481_importer | stata |
| `est77_78_481_importer` | numeric | (mean) est77_78_481_importer | stata |
| `emp70_71_481_importer` | numeric | (mean) emp70_71_481_importer | stata |
| `est70_71_481_importer` | numeric | (mean) est70_71_481_importer | stata |
| `emp56_481_importer` | numeric | (mean) emp56_481_importer | stata |
| `est56_481_importer` | numeric | (mean) est56_481_importer | stata |
| `est06_07_483_importer` | numeric | (mean) est06_07_483_importer | stata |
| `emp06_07_483_importer` | numeric | (mean) emp06_07_483_importer | stata |
| `emp96_97_483_importer` | numeric | (mean) emp96_97_483_importer | stata |
| `est96_97_483_importer` | numeric | (mean) est96_97_483_importer | stata |
| `emp87_88_483_importer` | numeric | (mean) emp87_88_483_importer | stata |
| `est87_88_483_importer` | numeric | (mean) est87_88_483_importer | stata |
| `emp77_78_483_importer` | numeric | (mean) emp77_78_483_importer | stata |
| `est77_78_483_importer` | numeric | (mean) est77_78_483_importer | stata |
| `emp70_71_483_importer` | numeric | (mean) emp70_71_483_importer | stata |
| `est70_71_483_importer` | numeric | (mean) est70_71_483_importer | stata |
| `emp56_483_importer` | numeric | (mean) emp56_483_importer | stata |
| `est56_483_importer` | numeric | (mean) est56_483_importer | stata |
| `est06_07_484_importer` | numeric | (mean) est06_07_484_importer | stata |
| `emp06_07_484_importer` | numeric | (mean) emp06_07_484_importer | stata |
| `emp96_97_484_importer` | numeric | (mean) emp96_97_484_importer | stata |
| `est96_97_484_importer` | numeric | (mean) est96_97_484_importer | stata |
| `emp87_88_484_importer` | numeric | (mean) emp87_88_484_importer | stata |
| `est87_88_484_importer` | numeric | (mean) est87_88_484_importer | stata |
| `emp77_78_484_importer` | numeric | (mean) emp77_78_484_importer | stata |
| `est77_78_484_importer` | numeric | (mean) est77_78_484_importer | stata |
| `emp70_71_484_importer` | numeric | (mean) emp70_71_484_importer | stata |
| `est70_71_484_importer` | numeric | (mean) est70_71_484_importer | stata |
| `emp56_484_importer` | numeric | (mean) emp56_484_importer | stata |
| `est56_484_importer` | numeric | (mean) est56_484_importer | stata |
| `est06_07_485_importer` | numeric | (mean) est06_07_485_importer | stata |
| `emp06_07_485_importer` | numeric | (mean) emp06_07_485_importer | stata |
| `emp96_97_485_importer` | numeric | (mean) emp96_97_485_importer | stata |
| `est96_97_485_importer` | numeric | (mean) est96_97_485_importer | stata |
| `emp87_88_485_importer` | numeric | (mean) emp87_88_485_importer | stata |
| `est87_88_485_importer` | numeric | (mean) est87_88_485_importer | stata |
| `emp77_78_485_importer` | numeric | (mean) emp77_78_485_importer | stata |
| `est77_78_485_importer` | numeric | (mean) est77_78_485_importer | stata |
| `emp70_71_485_importer` | numeric | (mean) emp70_71_485_importer | stata |
| `est70_71_485_importer` | numeric | (mean) est70_71_485_importer | stata |
| `emp56_485_importer` | numeric | (mean) emp56_485_importer | stata |
| `est56_485_importer` | numeric | (mean) est56_485_importer | stata |
| `est06_07_486_importer` | numeric | (mean) est06_07_486_importer | stata |
| `emp06_07_486_importer` | numeric | (mean) emp06_07_486_importer | stata |
| `emp96_97_486_importer` | numeric | (mean) emp96_97_486_importer | stata |
| `est96_97_486_importer` | numeric | (mean) est96_97_486_importer | stata |
| `emp87_88_486_importer` | numeric | (mean) emp87_88_486_importer | stata |
| `est87_88_486_importer` | numeric | (mean) est87_88_486_importer | stata |
| `emp77_78_486_importer` | numeric | (mean) emp77_78_486_importer | stata |
| `est77_78_486_importer` | numeric | (mean) est77_78_486_importer | stata |
| `emp70_71_486_importer` | numeric | (mean) emp70_71_486_importer | stata |
| `est70_71_486_importer` | numeric | (mean) est70_71_486_importer | stata |
| `emp56_486_importer` | numeric | (mean) emp56_486_importer | stata |
| `est56_486_importer` | numeric | (mean) est56_486_importer | stata |
| `est06_07_487_importer` | numeric | (mean) est06_07_487_importer | stata |
| `emp06_07_487_importer` | numeric | (mean) emp06_07_487_importer | stata |
| `emp96_97_487_importer` | numeric | (mean) emp96_97_487_importer | stata |
| `est96_97_487_importer` | numeric | (mean) est96_97_487_importer | stata |
| `emp87_88_487_importer` | numeric | (mean) emp87_88_487_importer | stata |
| `est87_88_487_importer` | numeric | (mean) est87_88_487_importer | stata |
| `emp77_78_487_importer` | numeric | (mean) emp77_78_487_importer | stata |
| `est77_78_487_importer` | numeric | (mean) est77_78_487_importer | stata |
| `emp70_71_487_importer` | numeric | (mean) emp70_71_487_importer | stata |
| `est70_71_487_importer` | numeric | (mean) est70_71_487_importer | stata |
| `emp56_487_importer` | numeric | (mean) emp56_487_importer | stata |
| `est56_487_importer` | numeric | (mean) est56_487_importer | stata |
| `est06_07_488_importer` | numeric | (mean) est06_07_488_importer | stata |
| `emp06_07_488_importer` | numeric | (mean) emp06_07_488_importer | stata |
| `emp96_97_488_importer` | numeric | (mean) emp96_97_488_importer | stata |
| `est96_97_488_importer` | numeric | (mean) est96_97_488_importer | stata |
| `emp87_88_488_importer` | numeric | (mean) emp87_88_488_importer | stata |
| `est87_88_488_importer` | numeric | (mean) est87_88_488_importer | stata |
| `emp77_78_488_importer` | numeric | (mean) emp77_78_488_importer | stata |
| `est77_78_488_importer` | numeric | (mean) est77_78_488_importer | stata |
| `emp70_71_488_importer` | numeric | (mean) emp70_71_488_importer | stata |
| `est70_71_488_importer` | numeric | (mean) est70_71_488_importer | stata |
| `emp56_488_importer` | numeric | (mean) emp56_488_importer | stata |
| `est56_488_importer` | numeric | (mean) est56_488_importer | stata |
| `est06_07_491_importer` | numeric | (mean) est06_07_491_importer | stata |
| `emp06_07_491_importer` | numeric | (mean) emp06_07_491_importer | stata |
| `emp96_97_491_importer` | numeric | (mean) emp96_97_491_importer | stata |
| `est96_97_491_importer` | numeric | (mean) est96_97_491_importer | stata |
| `emp87_88_491_importer` | numeric | (mean) emp87_88_491_importer | stata |
| `est87_88_491_importer` | numeric | (mean) est87_88_491_importer | stata |
| `emp77_78_491_importer` | numeric | (mean) emp77_78_491_importer | stata |
| `est77_78_491_importer` | numeric | (mean) est77_78_491_importer | stata |
| `emp70_71_491_importer` | numeric | (mean) emp70_71_491_importer | stata |
| `est70_71_491_importer` | numeric | (mean) est70_71_491_importer | stata |
| `emp56_491_importer` | numeric | (mean) emp56_491_importer | stata |
| `est56_491_importer` | numeric | (mean) est56_491_importer | stata |
| `est06_07_492_importer` | numeric | (mean) est06_07_492_importer | stata |
| `emp06_07_492_importer` | numeric | (mean) emp06_07_492_importer | stata |
| `emp96_97_492_importer` | numeric | (mean) emp96_97_492_importer | stata |
| `est96_97_492_importer` | numeric | (mean) est96_97_492_importer | stata |
| `emp87_88_492_importer` | numeric | (mean) emp87_88_492_importer | stata |
| `est87_88_492_importer` | numeric | (mean) est87_88_492_importer | stata |
| `emp77_78_492_importer` | numeric | (mean) emp77_78_492_importer | stata |
| `est77_78_492_importer` | numeric | (mean) est77_78_492_importer | stata |
| `emp70_71_492_importer` | numeric | (mean) emp70_71_492_importer | stata |
| `est70_71_492_importer` | numeric | (mean) est70_71_492_importer | stata |
| `emp56_492_importer` | numeric | (mean) emp56_492_importer | stata |
| `est56_492_importer` | numeric | (mean) est56_492_importer | stata |
| `est06_07_493_importer` | numeric | (mean) est06_07_493_importer | stata |
| `emp06_07_493_importer` | numeric | (mean) emp06_07_493_importer | stata |
| `emp96_97_493_importer` | numeric | (mean) emp96_97_493_importer | stata |
| `est96_97_493_importer` | numeric | (mean) est96_97_493_importer | stata |
| `emp87_88_493_importer` | numeric | (mean) emp87_88_493_importer | stata |
| `est87_88_493_importer` | numeric | (mean) est87_88_493_importer | stata |
| `emp77_78_493_importer` | numeric | (mean) emp77_78_493_importer | stata |
| `est77_78_493_importer` | numeric | (mean) est77_78_493_importer | stata |
| `emp70_71_493_importer` | numeric | (mean) emp70_71_493_importer | stata |
| `est70_71_493_importer` | numeric | (mean) est70_71_493_importer | stata |
| `emp56_493_importer` | numeric | (mean) emp56_493_importer | stata |
| `est56_493_importer` | numeric | (mean) est56_493_importer | stata |
| `est06_07_511_importer` | numeric | (mean) est06_07_511_importer | stata |
| `emp06_07_511_importer` | numeric | (mean) emp06_07_511_importer | stata |
| `emp96_97_511_importer` | numeric | (mean) emp96_97_511_importer | stata |
| `est96_97_511_importer` | numeric | (mean) est96_97_511_importer | stata |
| `emp87_88_511_importer` | numeric | (mean) emp87_88_511_importer | stata |
| `est87_88_511_importer` | numeric | (mean) est87_88_511_importer | stata |
| `emp77_78_511_importer` | numeric | (mean) emp77_78_511_importer | stata |
| `est77_78_511_importer` | numeric | (mean) est77_78_511_importer | stata |
| `emp70_71_511_importer` | numeric | (mean) emp70_71_511_importer | stata |
| `est70_71_511_importer` | numeric | (mean) est70_71_511_importer | stata |
| `emp56_511_importer` | numeric | (mean) emp56_511_importer | stata |
| `est56_511_importer` | numeric | (mean) est56_511_importer | stata |
| `est06_07_512_importer` | numeric | (mean) est06_07_512_importer | stata |
| `emp06_07_512_importer` | numeric | (mean) emp06_07_512_importer | stata |
| `emp96_97_512_importer` | numeric | (mean) emp96_97_512_importer | stata |
| `est96_97_512_importer` | numeric | (mean) est96_97_512_importer | stata |
| `emp87_88_512_importer` | numeric | (mean) emp87_88_512_importer | stata |
| `est87_88_512_importer` | numeric | (mean) est87_88_512_importer | stata |
| `emp77_78_512_importer` | numeric | (mean) emp77_78_512_importer | stata |
| `est77_78_512_importer` | numeric | (mean) est77_78_512_importer | stata |
| `emp70_71_512_importer` | numeric | (mean) emp70_71_512_importer | stata |
| `est70_71_512_importer` | numeric | (mean) est70_71_512_importer | stata |
| `emp56_512_importer` | numeric | (mean) emp56_512_importer | stata |
| `est56_512_importer` | numeric | (mean) est56_512_importer | stata |
| `est06_07_515_importer` | numeric | (mean) est06_07_515_importer | stata |
| `emp06_07_515_importer` | numeric | (mean) emp06_07_515_importer | stata |
| `emp96_97_515_importer` | numeric | (mean) emp96_97_515_importer | stata |
| `est96_97_515_importer` | numeric | (mean) est96_97_515_importer | stata |
| `emp87_88_515_importer` | numeric | (mean) emp87_88_515_importer | stata |
| `est87_88_515_importer` | numeric | (mean) est87_88_515_importer | stata |
| `emp77_78_515_importer` | numeric | (mean) emp77_78_515_importer | stata |
| `est77_78_515_importer` | numeric | (mean) est77_78_515_importer | stata |
| `emp70_71_515_importer` | numeric | (mean) emp70_71_515_importer | stata |
| `est70_71_515_importer` | numeric | (mean) est70_71_515_importer | stata |
| `emp56_515_importer` | numeric | (mean) emp56_515_importer | stata |
| `est56_515_importer` | numeric | (mean) est56_515_importer | stata |
| `est06_07_516_importer` | numeric | (mean) est06_07_516_importer | stata |
| `emp06_07_516_importer` | numeric | (mean) emp06_07_516_importer | stata |
| `emp96_97_516_importer` | numeric | (mean) emp96_97_516_importer | stata |
| `est96_97_516_importer` | numeric | (mean) est96_97_516_importer | stata |
| `emp87_88_516_importer` | numeric | (mean) emp87_88_516_importer | stata |
| `est87_88_516_importer` | numeric | (mean) est87_88_516_importer | stata |
| `emp77_78_516_importer` | numeric | (mean) emp77_78_516_importer | stata |
| `est77_78_516_importer` | numeric | (mean) est77_78_516_importer | stata |
| `emp70_71_516_importer` | numeric | (mean) emp70_71_516_importer | stata |
| `est70_71_516_importer` | numeric | (mean) est70_71_516_importer | stata |
| `emp56_516_importer` | numeric | (mean) emp56_516_importer | stata |
| `est56_516_importer` | numeric | (mean) est56_516_importer | stata |
| `est06_07_517_importer` | numeric | (mean) est06_07_517_importer | stata |
| `emp06_07_517_importer` | numeric | (mean) emp06_07_517_importer | stata |
| `emp96_97_517_importer` | numeric | (mean) emp96_97_517_importer | stata |
| `est96_97_517_importer` | numeric | (mean) est96_97_517_importer | stata |
| `emp87_88_517_importer` | numeric | (mean) emp87_88_517_importer | stata |
| `est87_88_517_importer` | numeric | (mean) est87_88_517_importer | stata |
| `emp77_78_517_importer` | numeric | (mean) emp77_78_517_importer | stata |
| `est77_78_517_importer` | numeric | (mean) est77_78_517_importer | stata |
| `emp70_71_517_importer` | numeric | (mean) emp70_71_517_importer | stata |
| `est70_71_517_importer` | numeric | (mean) est70_71_517_importer | stata |
| `emp56_517_importer` | numeric | (mean) emp56_517_importer | stata |
| `est56_517_importer` | numeric | (mean) est56_517_importer | stata |
| `est06_07_518_importer` | numeric | (mean) est06_07_518_importer | stata |
| `emp06_07_518_importer` | numeric | (mean) emp06_07_518_importer | stata |
| `emp96_97_518_importer` | numeric | (mean) emp96_97_518_importer | stata |
| `est96_97_518_importer` | numeric | (mean) est96_97_518_importer | stata |
| `emp87_88_518_importer` | numeric | (mean) emp87_88_518_importer | stata |
| `est87_88_518_importer` | numeric | (mean) est87_88_518_importer | stata |
| `emp77_78_518_importer` | numeric | (mean) emp77_78_518_importer | stata |
| `est77_78_518_importer` | numeric | (mean) est77_78_518_importer | stata |
| `emp70_71_518_importer` | numeric | (mean) emp70_71_518_importer | stata |
| `est70_71_518_importer` | numeric | (mean) est70_71_518_importer | stata |
| `emp56_518_importer` | numeric | (mean) emp56_518_importer | stata |
| `est56_518_importer` | numeric | (mean) est56_518_importer | stata |
| `est06_07_519_importer` | numeric | (mean) est06_07_519_importer | stata |
| `emp06_07_519_importer` | numeric | (mean) emp06_07_519_importer | stata |
| `emp96_97_519_importer` | numeric | (mean) emp96_97_519_importer | stata |
| `est96_97_519_importer` | numeric | (mean) est96_97_519_importer | stata |
| `emp87_88_519_importer` | numeric | (mean) emp87_88_519_importer | stata |
| `est87_88_519_importer` | numeric | (mean) est87_88_519_importer | stata |
| `emp77_78_519_importer` | numeric | (mean) emp77_78_519_importer | stata |
| `est77_78_519_importer` | numeric | (mean) est77_78_519_importer | stata |
| `emp70_71_519_importer` | numeric | (mean) emp70_71_519_importer | stata |
| `est70_71_519_importer` | numeric | (mean) est70_71_519_importer | stata |
| `emp56_519_importer` | numeric | (mean) emp56_519_importer | stata |
| `est56_519_importer` | numeric | (mean) est56_519_importer | stata |
| `est06_07_521_importer` | numeric | (mean) est06_07_521_importer | stata |
| `emp06_07_521_importer` | numeric | (mean) emp06_07_521_importer | stata |
| `emp96_97_521_importer` | numeric | (mean) emp96_97_521_importer | stata |
| `est96_97_521_importer` | numeric | (mean) est96_97_521_importer | stata |
| `emp87_88_521_importer` | numeric | (mean) emp87_88_521_importer | stata |
| `est87_88_521_importer` | numeric | (mean) est87_88_521_importer | stata |
| `emp77_78_521_importer` | numeric | (mean) emp77_78_521_importer | stata |
| `est77_78_521_importer` | numeric | (mean) est77_78_521_importer | stata |
| `emp70_71_521_importer` | numeric | (mean) emp70_71_521_importer | stata |
| `est70_71_521_importer` | numeric | (mean) est70_71_521_importer | stata |
| `emp56_521_importer` | numeric | (mean) emp56_521_importer | stata |
| `est56_521_importer` | numeric | (mean) est56_521_importer | stata |
| `est06_07_522_importer` | numeric | (mean) est06_07_522_importer | stata |
| `emp06_07_522_importer` | numeric | (mean) emp06_07_522_importer | stata |
| `emp96_97_522_importer` | numeric | (mean) emp96_97_522_importer | stata |
| `est96_97_522_importer` | numeric | (mean) est96_97_522_importer | stata |
| `emp87_88_522_importer` | numeric | (mean) emp87_88_522_importer | stata |
| `est87_88_522_importer` | numeric | (mean) est87_88_522_importer | stata |
| `emp77_78_522_importer` | numeric | (mean) emp77_78_522_importer | stata |
| `est77_78_522_importer` | numeric | (mean) est77_78_522_importer | stata |
| `emp70_71_522_importer` | numeric | (mean) emp70_71_522_importer | stata |
| `est70_71_522_importer` | numeric | (mean) est70_71_522_importer | stata |
| `emp56_522_importer` | numeric | (mean) emp56_522_importer | stata |
| `est56_522_importer` | numeric | (mean) est56_522_importer | stata |
| `est06_07_523_importer` | numeric | (mean) est06_07_523_importer | stata |
| `emp06_07_523_importer` | numeric | (mean) emp06_07_523_importer | stata |
| `emp96_97_523_importer` | numeric | (mean) emp96_97_523_importer | stata |
| `est96_97_523_importer` | numeric | (mean) est96_97_523_importer | stata |
| `emp87_88_523_importer` | numeric | (mean) emp87_88_523_importer | stata |
| `est87_88_523_importer` | numeric | (mean) est87_88_523_importer | stata |
| `emp77_78_523_importer` | numeric | (mean) emp77_78_523_importer | stata |
| `est77_78_523_importer` | numeric | (mean) est77_78_523_importer | stata |
| `emp70_71_523_importer` | numeric | (mean) emp70_71_523_importer | stata |
| `est70_71_523_importer` | numeric | (mean) est70_71_523_importer | stata |
| `emp56_523_importer` | numeric | (mean) emp56_523_importer | stata |
| `est56_523_importer` | numeric | (mean) est56_523_importer | stata |
| `est06_07_524_importer` | numeric | (mean) est06_07_524_importer | stata |
| `emp06_07_524_importer` | numeric | (mean) emp06_07_524_importer | stata |
| `emp96_97_524_importer` | numeric | (mean) emp96_97_524_importer | stata |
| `est96_97_524_importer` | numeric | (mean) est96_97_524_importer | stata |
| `emp87_88_524_importer` | numeric | (mean) emp87_88_524_importer | stata |
| `est87_88_524_importer` | numeric | (mean) est87_88_524_importer | stata |
| `emp77_78_524_importer` | numeric | (mean) emp77_78_524_importer | stata |
| `est77_78_524_importer` | numeric | (mean) est77_78_524_importer | stata |
| `emp70_71_524_importer` | numeric | (mean) emp70_71_524_importer | stata |
| `est70_71_524_importer` | numeric | (mean) est70_71_524_importer | stata |
| `emp56_524_importer` | numeric | (mean) emp56_524_importer | stata |
| `est56_524_importer` | numeric | (mean) est56_524_importer | stata |
| `est06_07_525_importer` | numeric | (mean) est06_07_525_importer | stata |
| `emp06_07_525_importer` | numeric | (mean) emp06_07_525_importer | stata |
| `emp96_97_525_importer` | numeric | (mean) emp96_97_525_importer | stata |
| `est96_97_525_importer` | numeric | (mean) est96_97_525_importer | stata |
| `emp87_88_525_importer` | numeric | (mean) emp87_88_525_importer | stata |
| `est87_88_525_importer` | numeric | (mean) est87_88_525_importer | stata |
| `emp77_78_525_importer` | numeric | (mean) emp77_78_525_importer | stata |
| `est77_78_525_importer` | numeric | (mean) est77_78_525_importer | stata |
| `emp70_71_525_importer` | numeric | (mean) emp70_71_525_importer | stata |
| `est70_71_525_importer` | numeric | (mean) est70_71_525_importer | stata |
| `emp56_525_importer` | numeric | (mean) emp56_525_importer | stata |
| `est56_525_importer` | numeric | (mean) est56_525_importer | stata |
| `est06_07_531_importer` | numeric | (mean) est06_07_531_importer | stata |
| `emp06_07_531_importer` | numeric | (mean) emp06_07_531_importer | stata |
| `emp96_97_531_importer` | numeric | (mean) emp96_97_531_importer | stata |
| `est96_97_531_importer` | numeric | (mean) est96_97_531_importer | stata |
| `emp87_88_531_importer` | numeric | (mean) emp87_88_531_importer | stata |
| `est87_88_531_importer` | numeric | (mean) est87_88_531_importer | stata |
| `emp77_78_531_importer` | numeric | (mean) emp77_78_531_importer | stata |
| `est77_78_531_importer` | numeric | (mean) est77_78_531_importer | stata |
| `emp70_71_531_importer` | numeric | (mean) emp70_71_531_importer | stata |
| `est70_71_531_importer` | numeric | (mean) est70_71_531_importer | stata |
| `emp56_531_importer` | numeric | (mean) emp56_531_importer | stata |
| `est56_531_importer` | numeric | (mean) est56_531_importer | stata |
| `est06_07_532_importer` | numeric | (mean) est06_07_532_importer | stata |
| `emp06_07_532_importer` | numeric | (mean) emp06_07_532_importer | stata |
| `emp96_97_532_importer` | numeric | (mean) emp96_97_532_importer | stata |
| `est96_97_532_importer` | numeric | (mean) est96_97_532_importer | stata |
| `emp87_88_532_importer` | numeric | (mean) emp87_88_532_importer | stata |
| `est87_88_532_importer` | numeric | (mean) est87_88_532_importer | stata |
| `emp77_78_532_importer` | numeric | (mean) emp77_78_532_importer | stata |
| `est77_78_532_importer` | numeric | (mean) est77_78_532_importer | stata |
| `emp70_71_532_importer` | numeric | (mean) emp70_71_532_importer | stata |
| `est70_71_532_importer` | numeric | (mean) est70_71_532_importer | stata |
| `emp56_532_importer` | numeric | (mean) emp56_532_importer | stata |
| `est56_532_importer` | numeric | (mean) est56_532_importer | stata |
| `est06_07_533_importer` | numeric | (mean) est06_07_533_importer | stata |
| `emp06_07_533_importer` | numeric | (mean) emp06_07_533_importer | stata |
| `emp96_97_533_importer` | numeric | (mean) emp96_97_533_importer | stata |
| `est96_97_533_importer` | numeric | (mean) est96_97_533_importer | stata |
| `emp87_88_533_importer` | numeric | (mean) emp87_88_533_importer | stata |
| `est87_88_533_importer` | numeric | (mean) est87_88_533_importer | stata |
| `emp77_78_533_importer` | numeric | (mean) emp77_78_533_importer | stata |
| `est77_78_533_importer` | numeric | (mean) est77_78_533_importer | stata |
| `emp70_71_533_importer` | numeric | (mean) emp70_71_533_importer | stata |
| `est70_71_533_importer` | numeric | (mean) est70_71_533_importer | stata |
| `emp56_533_importer` | numeric | (mean) emp56_533_importer | stata |
| `est56_533_importer` | numeric | (mean) est56_533_importer | stata |
| `est06_07_541_importer` | numeric | (mean) est06_07_541_importer | stata |
| `emp06_07_541_importer` | numeric | (mean) emp06_07_541_importer | stata |
| `emp96_97_541_importer` | numeric | (mean) emp96_97_541_importer | stata |
| `est96_97_541_importer` | numeric | (mean) est96_97_541_importer | stata |
| `emp87_88_541_importer` | numeric | (mean) emp87_88_541_importer | stata |
| `est87_88_541_importer` | numeric | (mean) est87_88_541_importer | stata |
| `emp77_78_541_importer` | numeric | (mean) emp77_78_541_importer | stata |
| `est77_78_541_importer` | numeric | (mean) est77_78_541_importer | stata |
| `emp70_71_541_importer` | numeric | (mean) emp70_71_541_importer | stata |
| `est70_71_541_importer` | numeric | (mean) est70_71_541_importer | stata |
| `emp56_541_importer` | numeric | (mean) emp56_541_importer | stata |
| `est56_541_importer` | numeric | (mean) est56_541_importer | stata |
| `est06_07_551_importer` | numeric | (mean) est06_07_551_importer | stata |
| `emp06_07_551_importer` | numeric | (mean) emp06_07_551_importer | stata |
| `emp96_97_551_importer` | numeric | (mean) emp96_97_551_importer | stata |
| `est96_97_551_importer` | numeric | (mean) est96_97_551_importer | stata |
| `emp87_88_551_importer` | numeric | (mean) emp87_88_551_importer | stata |
| `est87_88_551_importer` | numeric | (mean) est87_88_551_importer | stata |
| `emp77_78_551_importer` | numeric | (mean) emp77_78_551_importer | stata |
| `est77_78_551_importer` | numeric | (mean) est77_78_551_importer | stata |
| `emp70_71_551_importer` | numeric | (mean) emp70_71_551_importer | stata |
| `est70_71_551_importer` | numeric | (mean) est70_71_551_importer | stata |
| `emp56_551_importer` | numeric | (mean) emp56_551_importer | stata |
| `est56_551_importer` | numeric | (mean) est56_551_importer | stata |
| `est06_07_561_importer` | numeric | (mean) est06_07_561_importer | stata |
| `emp06_07_561_importer` | numeric | (mean) emp06_07_561_importer | stata |
| `emp96_97_561_importer` | numeric | (mean) emp96_97_561_importer | stata |
| `est96_97_561_importer` | numeric | (mean) est96_97_561_importer | stata |
| `emp87_88_561_importer` | numeric | (mean) emp87_88_561_importer | stata |
| `est87_88_561_importer` | numeric | (mean) est87_88_561_importer | stata |
| `emp77_78_561_importer` | numeric | (mean) emp77_78_561_importer | stata |
| `est77_78_561_importer` | numeric | (mean) est77_78_561_importer | stata |
| `emp70_71_561_importer` | numeric | (mean) emp70_71_561_importer | stata |
| `est70_71_561_importer` | numeric | (mean) est70_71_561_importer | stata |
| `emp56_561_importer` | numeric | (mean) emp56_561_importer | stata |
| `est56_561_importer` | numeric | (mean) est56_561_importer | stata |
| `est06_07_562_importer` | numeric | (mean) est06_07_562_importer | stata |
| `emp06_07_562_importer` | numeric | (mean) emp06_07_562_importer | stata |
| `emp96_97_562_importer` | numeric | (mean) emp96_97_562_importer | stata |
| `est96_97_562_importer` | numeric | (mean) est96_97_562_importer | stata |
| `emp87_88_562_importer` | numeric | (mean) emp87_88_562_importer | stata |
| `est87_88_562_importer` | numeric | (mean) est87_88_562_importer | stata |
| `emp77_78_562_importer` | numeric | (mean) emp77_78_562_importer | stata |
| `est77_78_562_importer` | numeric | (mean) est77_78_562_importer | stata |
| `emp70_71_562_importer` | numeric | (mean) emp70_71_562_importer | stata |
| `est70_71_562_importer` | numeric | (mean) est70_71_562_importer | stata |
| `emp56_562_importer` | numeric | (mean) emp56_562_importer | stata |
| `est56_562_importer` | numeric | (mean) est56_562_importer | stata |
| `est06_07_611_importer` | numeric | (mean) est06_07_611_importer | stata |
| `emp06_07_611_importer` | numeric | (mean) emp06_07_611_importer | stata |
| `emp96_97_611_importer` | numeric | (mean) emp96_97_611_importer | stata |
| `est96_97_611_importer` | numeric | (mean) est96_97_611_importer | stata |
| `emp87_88_611_importer` | numeric | (mean) emp87_88_611_importer | stata |
| `est87_88_611_importer` | numeric | (mean) est87_88_611_importer | stata |
| `emp77_78_611_importer` | numeric | (mean) emp77_78_611_importer | stata |
| `est77_78_611_importer` | numeric | (mean) est77_78_611_importer | stata |
| `emp70_71_611_importer` | numeric | (mean) emp70_71_611_importer | stata |
| `est70_71_611_importer` | numeric | (mean) est70_71_611_importer | stata |
| `emp56_611_importer` | numeric | (mean) emp56_611_importer | stata |
| `est56_611_importer` | numeric | (mean) est56_611_importer | stata |
| `est06_07_621_importer` | numeric | (mean) est06_07_621_importer | stata |
| `emp06_07_621_importer` | numeric | (mean) emp06_07_621_importer | stata |
| `emp96_97_621_importer` | numeric | (mean) emp96_97_621_importer | stata |
| `est96_97_621_importer` | numeric | (mean) est96_97_621_importer | stata |
| `emp87_88_621_importer` | numeric | (mean) emp87_88_621_importer | stata |
| `est87_88_621_importer` | numeric | (mean) est87_88_621_importer | stata |
| `emp77_78_621_importer` | numeric | (mean) emp77_78_621_importer | stata |
| `est77_78_621_importer` | numeric | (mean) est77_78_621_importer | stata |
| `emp70_71_621_importer` | numeric | (mean) emp70_71_621_importer | stata |
| `est70_71_621_importer` | numeric | (mean) est70_71_621_importer | stata |
| `emp56_621_importer` | numeric | (mean) emp56_621_importer | stata |
| `est56_621_importer` | numeric | (mean) est56_621_importer | stata |
| `est06_07_622_importer` | numeric | (mean) est06_07_622_importer | stata |
| `emp06_07_622_importer` | numeric | (mean) emp06_07_622_importer | stata |
| `emp96_97_622_importer` | numeric | (mean) emp96_97_622_importer | stata |
| `est96_97_622_importer` | numeric | (mean) est96_97_622_importer | stata |
| `emp87_88_622_importer` | numeric | (mean) emp87_88_622_importer | stata |
| `est87_88_622_importer` | numeric | (mean) est87_88_622_importer | stata |
| `emp77_78_622_importer` | numeric | (mean) emp77_78_622_importer | stata |
| `est77_78_622_importer` | numeric | (mean) est77_78_622_importer | stata |
| `emp70_71_622_importer` | numeric | (mean) emp70_71_622_importer | stata |
| `est70_71_622_importer` | numeric | (mean) est70_71_622_importer | stata |
| `emp56_622_importer` | numeric | (mean) emp56_622_importer | stata |
| `est56_622_importer` | numeric | (mean) est56_622_importer | stata |
| `est06_07_623_importer` | numeric | (mean) est06_07_623_importer | stata |
| `emp06_07_623_importer` | numeric | (mean) emp06_07_623_importer | stata |
| `emp96_97_623_importer` | numeric | (mean) emp96_97_623_importer | stata |
| `est96_97_623_importer` | numeric | (mean) est96_97_623_importer | stata |
| `emp87_88_623_importer` | numeric | (mean) emp87_88_623_importer | stata |
| `est87_88_623_importer` | numeric | (mean) est87_88_623_importer | stata |
| `emp77_78_623_importer` | numeric | (mean) emp77_78_623_importer | stata |
| `est77_78_623_importer` | numeric | (mean) est77_78_623_importer | stata |
| `emp70_71_623_importer` | numeric | (mean) emp70_71_623_importer | stata |
| `est70_71_623_importer` | numeric | (mean) est70_71_623_importer | stata |
| `emp56_623_importer` | numeric | (mean) emp56_623_importer | stata |
| `est56_623_importer` | numeric | (mean) est56_623_importer | stata |
| `est06_07_624_importer` | numeric | (mean) est06_07_624_importer | stata |
| `emp06_07_624_importer` | numeric | (mean) emp06_07_624_importer | stata |
| `emp96_97_624_importer` | numeric | (mean) emp96_97_624_importer | stata |
| `est96_97_624_importer` | numeric | (mean) est96_97_624_importer | stata |
| `emp87_88_624_importer` | numeric | (mean) emp87_88_624_importer | stata |
| `est87_88_624_importer` | numeric | (mean) est87_88_624_importer | stata |
| `emp77_78_624_importer` | numeric | (mean) emp77_78_624_importer | stata |
| `est77_78_624_importer` | numeric | (mean) est77_78_624_importer | stata |
| `emp70_71_624_importer` | numeric | (mean) emp70_71_624_importer | stata |
| `est70_71_624_importer` | numeric | (mean) est70_71_624_importer | stata |
| `emp56_624_importer` | numeric | (mean) emp56_624_importer | stata |
| `est56_624_importer` | numeric | (mean) est56_624_importer | stata |
| `est06_07_711_importer` | numeric | (mean) est06_07_711_importer | stata |
| `emp06_07_711_importer` | numeric | (mean) emp06_07_711_importer | stata |
| `emp96_97_711_importer` | numeric | (mean) emp96_97_711_importer | stata |
| `est96_97_711_importer` | numeric | (mean) est96_97_711_importer | stata |
| `emp87_88_711_importer` | numeric | (mean) emp87_88_711_importer | stata |
| `est87_88_711_importer` | numeric | (mean) est87_88_711_importer | stata |
| `emp77_78_711_importer` | numeric | (mean) emp77_78_711_importer | stata |
| `est77_78_711_importer` | numeric | (mean) est77_78_711_importer | stata |
| `emp70_71_711_importer` | numeric | (mean) emp70_71_711_importer | stata |
| `est70_71_711_importer` | numeric | (mean) est70_71_711_importer | stata |
| `emp56_711_importer` | numeric | (mean) emp56_711_importer | stata |
| `est56_711_importer` | numeric | (mean) est56_711_importer | stata |
| `est06_07_712_importer` | numeric | (mean) est06_07_712_importer | stata |
| `emp06_07_712_importer` | numeric | (mean) emp06_07_712_importer | stata |
| `emp96_97_712_importer` | numeric | (mean) emp96_97_712_importer | stata |
| `est96_97_712_importer` | numeric | (mean) est96_97_712_importer | stata |
| `emp87_88_712_importer` | numeric | (mean) emp87_88_712_importer | stata |
| `est87_88_712_importer` | numeric | (mean) est87_88_712_importer | stata |
| `emp77_78_712_importer` | numeric | (mean) emp77_78_712_importer | stata |
| `est77_78_712_importer` | numeric | (mean) est77_78_712_importer | stata |
| `emp70_71_712_importer` | numeric | (mean) emp70_71_712_importer | stata |
| `est70_71_712_importer` | numeric | (mean) est70_71_712_importer | stata |
| `emp56_712_importer` | numeric | (mean) emp56_712_importer | stata |
| `est56_712_importer` | numeric | (mean) est56_712_importer | stata |
| `est06_07_713_importer` | numeric | (mean) est06_07_713_importer | stata |
| `emp06_07_713_importer` | numeric | (mean) emp06_07_713_importer | stata |
| `emp96_97_713_importer` | numeric | (mean) emp96_97_713_importer | stata |
| `est96_97_713_importer` | numeric | (mean) est96_97_713_importer | stata |
| `emp87_88_713_importer` | numeric | (mean) emp87_88_713_importer | stata |
| `est87_88_713_importer` | numeric | (mean) est87_88_713_importer | stata |
| `emp77_78_713_importer` | numeric | (mean) emp77_78_713_importer | stata |
| `est77_78_713_importer` | numeric | (mean) est77_78_713_importer | stata |
| `emp70_71_713_importer` | numeric | (mean) emp70_71_713_importer | stata |
| `est70_71_713_importer` | numeric | (mean) est70_71_713_importer | stata |
| `emp56_713_importer` | numeric | (mean) emp56_713_importer | stata |
| `est56_713_importer` | numeric | (mean) est56_713_importer | stata |
| `est06_07_721_importer` | numeric | (mean) est06_07_721_importer | stata |
| `emp06_07_721_importer` | numeric | (mean) emp06_07_721_importer | stata |
| `emp96_97_721_importer` | numeric | (mean) emp96_97_721_importer | stata |
| `est96_97_721_importer` | numeric | (mean) est96_97_721_importer | stata |
| `emp87_88_721_importer` | numeric | (mean) emp87_88_721_importer | stata |
| `est87_88_721_importer` | numeric | (mean) est87_88_721_importer | stata |
| `emp77_78_721_importer` | numeric | (mean) emp77_78_721_importer | stata |
| `est77_78_721_importer` | numeric | (mean) est77_78_721_importer | stata |
| `emp70_71_721_importer` | numeric | (mean) emp70_71_721_importer | stata |
| `est70_71_721_importer` | numeric | (mean) est70_71_721_importer | stata |
| `emp56_721_importer` | numeric | (mean) emp56_721_importer | stata |
| `est56_721_importer` | numeric | (mean) est56_721_importer | stata |
| `est06_07_722_importer` | numeric | (mean) est06_07_722_importer | stata |
| `emp06_07_722_importer` | numeric | (mean) emp06_07_722_importer | stata |
| `emp96_97_722_importer` | numeric | (mean) emp96_97_722_importer | stata |
| `est96_97_722_importer` | numeric | (mean) est96_97_722_importer | stata |
| `emp87_88_722_importer` | numeric | (mean) emp87_88_722_importer | stata |
| `est87_88_722_importer` | numeric | (mean) est87_88_722_importer | stata |
| `emp77_78_722_importer` | numeric | (mean) emp77_78_722_importer | stata |
| `est77_78_722_importer` | numeric | (mean) est77_78_722_importer | stata |
| `emp70_71_722_importer` | numeric | (mean) emp70_71_722_importer | stata |
| `est70_71_722_importer` | numeric | (mean) est70_71_722_importer | stata |
| `emp56_722_importer` | numeric | (mean) emp56_722_importer | stata |
| `est56_722_importer` | numeric | (mean) est56_722_importer | stata |
| `est06_07_811_importer` | numeric | (mean) est06_07_811_importer | stata |
| `emp06_07_811_importer` | numeric | (mean) emp06_07_811_importer | stata |
| `emp96_97_811_importer` | numeric | (mean) emp96_97_811_importer | stata |
| `est96_97_811_importer` | numeric | (mean) est96_97_811_importer | stata |
| `emp87_88_811_importer` | numeric | (mean) emp87_88_811_importer | stata |
| `est87_88_811_importer` | numeric | (mean) est87_88_811_importer | stata |
| `emp77_78_811_importer` | numeric | (mean) emp77_78_811_importer | stata |
| `est77_78_811_importer` | numeric | (mean) est77_78_811_importer | stata |
| `emp70_71_811_importer` | numeric | (mean) emp70_71_811_importer | stata |
| `est70_71_811_importer` | numeric | (mean) est70_71_811_importer | stata |
| `emp56_811_importer` | numeric | (mean) emp56_811_importer | stata |
| `est56_811_importer` | numeric | (mean) est56_811_importer | stata |
| `est06_07_812_importer` | numeric | (mean) est06_07_812_importer | stata |
| `emp06_07_812_importer` | numeric | (mean) emp06_07_812_importer | stata |
| `emp96_97_812_importer` | numeric | (mean) emp96_97_812_importer | stata |
| `est96_97_812_importer` | numeric | (mean) est96_97_812_importer | stata |
| `emp87_88_812_importer` | numeric | (mean) emp87_88_812_importer | stata |
| `est87_88_812_importer` | numeric | (mean) est87_88_812_importer | stata |
| `emp77_78_812_importer` | numeric | (mean) emp77_78_812_importer | stata |
| `est77_78_812_importer` | numeric | (mean) est77_78_812_importer | stata |
| `emp70_71_812_importer` | numeric | (mean) emp70_71_812_importer | stata |
| `est70_71_812_importer` | numeric | (mean) est70_71_812_importer | stata |
| `emp56_812_importer` | numeric | (mean) emp56_812_importer | stata |
| `est56_812_importer` | numeric | (mean) est56_812_importer | stata |
| `est06_07_813_importer` | numeric | (mean) est06_07_813_importer | stata |
| `emp06_07_813_importer` | numeric | (mean) emp06_07_813_importer | stata |
| `emp96_97_813_importer` | numeric | (mean) emp96_97_813_importer | stata |
| `est96_97_813_importer` | numeric | (mean) est96_97_813_importer | stata |
| `emp87_88_813_importer` | numeric | (mean) emp87_88_813_importer | stata |
| `est87_88_813_importer` | numeric | (mean) est87_88_813_importer | stata |
| `emp77_78_813_importer` | numeric | (mean) emp77_78_813_importer | stata |
| `est77_78_813_importer` | numeric | (mean) est77_78_813_importer | stata |
| `emp70_71_813_importer` | numeric | (mean) emp70_71_813_importer | stata |
| `est70_71_813_importer` | numeric | (mean) est70_71_813_importer | stata |
| `emp56_813_importer` | numeric | (mean) emp56_813_importer | stata |
| `est56_813_importer` | numeric | (mean) est56_813_importer | stata |
| `est06_07_921_importer` | numeric | (mean) est06_07_921_importer | stata |
| `emp06_07_921_importer` | numeric | (mean) emp06_07_921_importer | stata |
| `emp96_97_921_importer` | numeric | (mean) emp96_97_921_importer | stata |
| `est96_97_921_importer` | numeric | (mean) est96_97_921_importer | stata |
| `emp87_88_921_importer` | numeric | (mean) emp87_88_921_importer | stata |
| `est87_88_921_importer` | numeric | (mean) est87_88_921_importer | stata |
| `emp77_78_921_importer` | numeric | (mean) emp77_78_921_importer | stata |
| `est77_78_921_importer` | numeric | (mean) est77_78_921_importer | stata |
| `emp70_71_921_importer` | numeric | (mean) emp70_71_921_importer | stata |
| `est70_71_921_importer` | numeric | (mean) est70_71_921_importer | stata |
| `emp56_921_importer` | numeric | (mean) emp56_921_importer | stata |
| `est56_921_importer` | numeric | (mean) est56_921_importer | stata |
| `est06_07_922_importer` | numeric | (mean) est06_07_922_importer | stata |
| `emp06_07_922_importer` | numeric | (mean) emp06_07_922_importer | stata |
| `emp96_97_922_importer` | numeric | (mean) emp96_97_922_importer | stata |
| `est96_97_922_importer` | numeric | (mean) est96_97_922_importer | stata |
| `emp87_88_922_importer` | numeric | (mean) emp87_88_922_importer | stata |
| `est87_88_922_importer` | numeric | (mean) est87_88_922_importer | stata |
| `emp77_78_922_importer` | numeric | (mean) emp77_78_922_importer | stata |
| `est77_78_922_importer` | numeric | (mean) est77_78_922_importer | stata |
| `emp70_71_922_importer` | numeric | (mean) emp70_71_922_importer | stata |
| `est70_71_922_importer` | numeric | (mean) est70_71_922_importer | stata |
| `emp56_922_importer` | numeric | (mean) emp56_922_importer | stata |
| `est56_922_importer` | numeric | (mean) est56_922_importer | stata |
| `manshare1978_importer` | numeric | (mean) manshare1978_importer | stata |
| `manshare1983_importer` | numeric | (mean) manshare1983_importer | stata |
| `manshare1988_importer` | numeric | (mean) manshare1988_importer | stata |
| `manshare1993_importer` | numeric | (mean) manshare1993_importer | stata |
| `manshare1998_importer` | numeric | (mean) manshare1998_importer | stata |
| `manshare2003_importer` | numeric | (mean) manshare2003_importer | stata |
| `border` | numeric | (mean) border | stata |
| `man_emp_share_lib_1956_exporter` | numeric | (mean) man_emp_share_lib_1956_exporter | stata |
| `man_emp_share_con_1956_exporter` | numeric | (mean) man_emp_share_con_1956_exporter | stata |
| `l_weight_lib_1956_exporter` | numeric | Average Weight-1956 | stata |
| `l_weight_con_1956_exporter` | numeric | Average Weight-1956 | stata |
| `man_emp_share_lib_1971_exporter` | numeric | (mean) man_emp_share_lib_1971_exporter | stata |
| `man_emp_share_con_1971_exporter` | numeric | (mean) man_emp_share_con_1971_exporter | stata |
| `l_weight_lib_1971_exporter` | numeric | (mean) l_weight_lib_1971_exporter | stata |
| `l_weight_con_1971_exporter` | numeric | (mean) l_weight_con_1971_exporter | stata |
| `man_emp_share_lib_1978_exporter` | numeric | (mean) man_emp_share_lib_1978_exporter | stata |
| `man_emp_share_con_1978_exporter` | numeric | (mean) man_emp_share_con_1978_exporter | stata |
| `l_weight_lib_1978_exporter` | numeric | (mean) l_weight_lib_1978_exporter | stata |
| `l_weight_con_1978_exporter` | numeric | (mean) l_weight_con_1978_exporter | stata |
| `man_emp_share_lib_1988_exporter` | numeric | (mean) man_emp_share_lib_1988_exporter | stata |
| `man_emp_share_con_1988_exporter` | numeric | (mean) man_emp_share_con_1988_exporter | stata |
| `l_weight_lib_1988_exporter` | numeric | (mean) l_weight_lib_1988_exporter | stata |
| `l_weight_con_1988_exporter` | numeric | (mean) l_weight_con_1988_exporter | stata |
| `man_emp_share_lib_1997_exporter` | numeric | (mean) man_emp_share_lib_1997_exporter | stata |
| `man_emp_share_con_1997_exporter` | numeric | (mean) man_emp_share_con_1997_exporter | stata |
| `l_weight_lib_1997_exporter` | numeric | (mean) l_weight_lib_1997_exporter | stata |
| `l_weight_con_1997_exporter` | numeric | (mean) l_weight_con_1997_exporter | stata |
| `man_emp_share_lib_2007_exporter` | numeric | (mean) man_emp_share_lib_2007_exporter | stata |
| `man_emp_share_con_2007_exporter` | numeric | (mean) man_emp_share_con_2007_exporter | stata |
| `l_weight_lib_2007_exporter` | numeric | (mean) l_weight_lib_2007_exporter | stata |
| `l_weight_con_2007_exporter` | numeric | (mean) l_weight_con_2007_exporter | stata |
| `impinc_lin_05_val_exporter` | numeric | (sum) impinc_lin_05_val_exporter | stata |
| `impinc_iv_05_val_exporter` | numeric | (sum) impinc_iv_05_val_exporter | stata |
| `impinc_qd_05_val_exporter` | numeric | (sum) impinc_qd_05_val_exporter | stata |
| `impinc_iv_qd_05_val_exporter` | numeric | (sum) impinc_iv_qd_05_val_exporter | stata |
| `impinc_qr_05_val_exporter` | numeric | (sum) impinc_qr_05_val_exporter | stata |
| `impinc_iv_qr_05_val_exporter` | numeric | (sum) impinc_iv_qr_05_val_exporter | stata |
| `impinc_lin_dist_val_exporter` | numeric | (sum) impinc_lin_dist_val_exporter | stata |
| `impinc_lin_both_val_exporter` | numeric | (sum) impinc_lin_both_val_exporter | stata |
| `impinc2_lin_05_val_exporter` | numeric | (sum) impinc2_lin_05_val_exporter | stata |
| `impinc2_iv_05_val_exporter` | numeric | (sum) impinc2_iv_05_val_exporter | stata |
| `impinc2_qd_05_val_exporter` | numeric | (sum) impinc2_qd_05_val_exporter | stata |
| `impinc2_iv_qd_05_val_exporter` | numeric | (sum) impinc2_iv_qd_05_val_exporter | stata |
| `impinc2_qr_05_val_exporter` | numeric | (sum) impinc2_qr_05_val_exporter | stata |
| `impinc2_iv_qr_05_val_exporter` | numeric | (sum) impinc2_iv_qr_05_val_exporter | stata |
| `impinc2_lin_dist_val_exporter` | numeric | (sum) impinc2_lin_dist_val_exporter | stata |
| `impinc2_lin_both_val_exporter` | numeric | (sum) impinc2_lin_both_val_exporter | stata |
| `impinc3_lin_05_val_exporter` | numeric | (sum) impinc3_lin_05_val_exporter | stata |
| `impinc3_iv_05_val_exporter` | numeric | (sum) impinc3_iv_05_val_exporter | stata |
| `impinc3_qd_05_val_exporter` | numeric | (sum) impinc3_qd_05_val_exporter | stata |
| `impinc3_iv_qd_05_val_exporter` | numeric | (sum) impinc3_iv_qd_05_val_exporter | stata |
| `impinc3_qr_05_val_exporter` | numeric | (sum) impinc3_qr_05_val_exporter | stata |
| `impinc3_iv_qr_05_val_exporter` | numeric | (sum) impinc3_iv_qr_05_val_exporter | stata |
| `impinc3_lin_dist_val_exporter` | numeric | (sum) impinc3_lin_dist_val_exporter | stata |
| `impinc3_lin_both_val_exporter` | numeric | (sum) impinc3_lin_both_val_exporter | stata |
| `impinc4_lin_05_val_exporter` | numeric | (sum) impinc4_lin_05_val_exporter | stata |
| `impinc4_iv_05_val_exporter` | numeric | (sum) impinc4_iv_05_val_exporter | stata |
| `impinc4_qd_05_val_exporter` | numeric | (sum) impinc4_qd_05_val_exporter | stata |
| `impinc4_iv_qd_05_val_exporter` | numeric | (sum) impinc4_iv_qd_05_val_exporter | stata |
| `impinc4_qr_05_val_exporter` | numeric | (sum) impinc4_qr_05_val_exporter | stata |
| `impinc4_iv_qr_05_val_exporter` | numeric | (sum) impinc4_iv_qr_05_val_exporter | stata |
| `impinc4_lin_dist_val_exporter` | numeric | (sum) impinc4_lin_dist_val_exporter | stata |
| `impinc4_lin_both_val_exporter` | numeric | (sum) impinc4_lin_both_val_exporter | stata |
| `impinc5_lin_05_val_exporter` | numeric | (sum) impinc5_lin_05_val_exporter | stata |
| `impinc5_iv_05_val_exporter` | numeric | (sum) impinc5_iv_05_val_exporter | stata |
| `impinc5_qd_05_val_exporter` | numeric | (sum) impinc5_qd_05_val_exporter | stata |
| `impinc5_iv_qd_05_val_exporter` | numeric | (sum) impinc5_iv_qd_05_val_exporter | stata |
| `impinc5_qr_05_val_exporter` | numeric | (sum) impinc5_qr_05_val_exporter | stata |
| `impinc5_iv_qr_05_val_exporter` | numeric | (sum) impinc5_iv_qr_05_val_exporter | stata |
| `impinc5_lin_dist_val_exporter` | numeric | (sum) impinc5_lin_dist_val_exporter | stata |
| `impinc5_lin_both_val_exporter` | numeric | (sum) impinc5_lin_both_val_exporter | stata |
| `impinc6_lin_05_val_exporter` | numeric | (sum) impinc6_lin_05_val_exporter | stata |
| `impinc6_iv_05_val_exporter` | numeric | (sum) impinc6_iv_05_val_exporter | stata |
| `impinc6_qd_05_val_exporter` | numeric | (sum) impinc6_qd_05_val_exporter | stata |
| `impinc6_iv_qd_05_val_exporter` | numeric | (sum) impinc6_iv_qd_05_val_exporter | stata |
| `impinc6_qr_05_val_exporter` | numeric | (sum) impinc6_qr_05_val_exporter | stata |
| `impinc6_iv_qr_05_val_exporter` | numeric | (sum) impinc6_iv_qr_05_val_exporter | stata |
| `impinc6_lin_dist_val_exporter` | numeric | (sum) impinc6_lin_dist_val_exporter | stata |
| `impinc6_lin_both_val_exporter` | numeric | (sum) impinc6_lin_both_val_exporter | stata |
| `impinc7_lin_05_val_exporter` | numeric | (sum) impinc7_lin_05_val_exporter | stata |
| `impinc7_iv_05_val_exporter` | numeric | (sum) impinc7_iv_05_val_exporter | stata |
| `impinc7_qd_05_val_exporter` | numeric | (sum) impinc7_qd_05_val_exporter | stata |
| `impinc7_iv_qd_05_val_exporter` | numeric | (sum) impinc7_iv_qd_05_val_exporter | stata |
| `impinc7_qr_05_val_exporter` | numeric | (sum) impinc7_qr_05_val_exporter | stata |
| `impinc7_iv_qr_05_val_exporter` | numeric | (sum) impinc7_iv_qr_05_val_exporter | stata |
| `impinc7_lin_dist_val_exporter` | numeric | (sum) impinc7_lin_dist_val_exporter | stata |
| `impinc7_lin_both_val_exporter` | numeric | (sum) impinc7_lin_both_val_exporter | stata |
| `impinc8_lin_05_val_exporter` | numeric | (sum) impinc8_lin_05_val_exporter | stata |
| `impinc8_iv_05_val_exporter` | numeric | (sum) impinc8_iv_05_val_exporter | stata |
| `impinc8_qd_05_val_exporter` | numeric | (sum) impinc8_qd_05_val_exporter | stata |
| `impinc8_iv_qd_05_val_exporter` | numeric | (sum) impinc8_iv_qd_05_val_exporter | stata |
| `impinc8_qr_05_val_exporter` | numeric | (sum) impinc8_qr_05_val_exporter | stata |
| `impinc8_iv_qr_05_val_exporter` | numeric | (sum) impinc8_iv_qr_05_val_exporter | stata |
| `impinc8_lin_dist_val_exporter` | numeric | (sum) impinc8_lin_dist_val_exporter | stata |
| `impinc8_lin_both_val_exporter` | numeric | (sum) impinc8_lin_both_val_exporter | stata |
| `impinc9_lin_05_val_exporter` | numeric | (sum) impinc9_lin_05_val_exporter | stata |
| `impinc9_iv_05_val_exporter` | numeric | (sum) impinc9_iv_05_val_exporter | stata |
| `impinc9_qd_05_val_exporter` | numeric | (sum) impinc9_qd_05_val_exporter | stata |
| `impinc9_iv_qd_05_val_exporter` | numeric | (sum) impinc9_iv_qd_05_val_exporter | stata |
| `impinc9_qr_05_val_exporter` | numeric | (sum) impinc9_qr_05_val_exporter | stata |
| `impinc9_iv_qr_05_val_exporter` | numeric | (sum) impinc9_iv_qr_05_val_exporter | stata |
| `impinc9_lin_dist_val_exporter` | numeric | (sum) impinc9_lin_dist_val_exporter | stata |
| `impinc9_lin_both_val_exporter` | numeric | (sum) impinc9_lin_both_val_exporter | stata |
| `exporter_fe_val_lin_05` | numeric | (mean) exporter_fe_val_lin_05 | stata |
| `exporter_fe_val_iv_05` | numeric | (mean) exporter_fe_val_iv_05 | stata |
| `exporter_fe_val_qd_05` | numeric | (mean) exporter_fe_val_qd_05 | stata |
| `exporter_fe_val_iv_qd_05` | numeric | (mean) exporter_fe_val_iv_qd_05 | stata |
| `exporter_fe_val_qr_05` | numeric | (mean) exporter_fe_val_qr_05 | stata |
| `exporter_fe_val_iv_qr_05` | numeric | (mean) exporter_fe_val_iv_qr_05 | stata |
| `exporter_fe_val_lin_dist` | numeric | (mean) exporter_fe_val_lin_dist | stata |
| `exporter_fe_val_lin_both` | numeric | (mean) exporter_fe_val_lin_both | stata |
| `l_val_exporter` | numeric | (log) Value of Truck Shipments (exporter) | stata |
| `l_tons_exporter` | numeric | (log) Weight of Truck Shipments (exporter) | stata |
| `share_road_val_exporter` | numeric | Share of Truck in Total Shipments Value (exporter) | stata |
| `share_road_tons_exporter` | numeric | Share of Truck in Total Shipments Tons (exporter) | stata |
| `share2_road_val_exporter` | numeric | Share of Truck in Total Shipments Value (inclusive,exporter) | stata |
| `share2_road_tons_exporter` | numeric | Share of Truck in Total Shipments Tons (inclusive,exporter) | stata |
| `share_rail_val_exporter` | numeric | Share of Rail in Total Shipments Value (exporter) | stata |
| `share_rail_tons_exporter` | numeric | Share of Rail in Total Shipments Tons (exporter) | stata |
| `share_external_val_exporter` | numeric | Share of External Trade-Value | stata |
| `share_external_tons_exporter` | numeric | Share of External Trade-Tons | stata |
| `l_man_emp_sh_l_56_exporter` | numeric | log(\% manuf. emp.,1956) | stata |
| `l_man_emp_sh_c_56_exporter` | numeric | log(\% manuf. emp.,1956) | stata |
| `l_mp_val_lin_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_lin_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_val_lin_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_lin_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_lin_05_exporter` | numeric | Masten-Poirier IV: l mp5 val lin 05 exporter | auto |
| `l_mp6_val_lin_05_exporter` | numeric | Masten-Poirier IV: l mp6 val lin 05 exporter | auto |
| `l_mp7_val_lin_05_exporter` | numeric | Masten-Poirier IV: l mp7 val lin 05 exporter | auto |
| `l_mp8_val_lin_05_exporter` | numeric | Masten-Poirier IV: l mp8 val lin 05 exporter | auto |
| `l_mp9_val_lin_05_exporter` | numeric | Masten-Poirier IV: l mp9 val lin 05 exporter | auto |
| `l_mp_val_iv_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_iv_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_val_iv_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_iv_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_iv_05_exporter` | numeric | Masten-Poirier IV: l mp5 val iv 05 exporter | auto |
| `l_mp6_val_iv_05_exporter` | numeric | Masten-Poirier IV: l mp6 val iv 05 exporter | auto |
| `l_mp7_val_iv_05_exporter` | numeric | Masten-Poirier IV: l mp7 val iv 05 exporter | auto |
| `l_mp8_val_iv_05_exporter` | numeric | Masten-Poirier IV: l mp8 val iv 05 exporter | auto |
| `l_mp9_val_iv_05_exporter` | numeric | Masten-Poirier IV: l mp9 val iv 05 exporter | auto |
| `l_mp_val_qd_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_qd_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_val_qd_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_qd_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_qd_05_exporter` | numeric | Masten-Poirier IV: l mp5 val qd 05 exporter | auto |
| `l_mp6_val_qd_05_exporter` | numeric | Masten-Poirier IV: l mp6 val qd 05 exporter | auto |
| `l_mp7_val_qd_05_exporter` | numeric | Masten-Poirier IV: l mp7 val qd 05 exporter | auto |
| `l_mp8_val_qd_05_exporter` | numeric | Masten-Poirier IV: l mp8 val qd 05 exporter | auto |
| `l_mp9_val_qd_05_exporter` | numeric | Masten-Poirier IV: l mp9 val qd 05 exporter | auto |
| `l_mp_val_iv_qd_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_iv_qd_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_val_iv_qd_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_iv_qd_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp5 val iv qd 05 exporter | auto |
| `l_mp6_val_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp6 val iv qd 05 exporter | auto |
| `l_mp7_val_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp7 val iv qd 05 exporter | auto |
| `l_mp8_val_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp8 val iv qd 05 exporter | auto |
| `l_mp9_val_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp9 val iv qd 05 exporter | auto |
| `l_mp_val_qr_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_qr_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_val_qr_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_qr_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_qr_05_exporter` | numeric | Masten-Poirier IV: l mp5 val qr 05 exporter | auto |
| `l_mp6_val_qr_05_exporter` | numeric | Masten-Poirier IV: l mp6 val qr 05 exporter | auto |
| `l_mp7_val_qr_05_exporter` | numeric | Masten-Poirier IV: l mp7 val qr 05 exporter | auto |
| `l_mp8_val_qr_05_exporter` | numeric | Masten-Poirier IV: l mp8 val qr 05 exporter | auto |
| `l_mp9_val_qr_05_exporter` | numeric | Masten-Poirier IV: l mp9 val qr 05 exporter | auto |
| `l_mp_val_iv_qr_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_iv_qr_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_val_iv_qr_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_iv_qr_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp5 val iv qr 05 exporter | auto |
| `l_mp6_val_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp6 val iv qr 05 exporter | auto |
| `l_mp7_val_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp7 val iv qr 05 exporter | auto |
| `l_mp8_val_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp8 val iv qr 05 exporter | auto |
| `l_mp9_val_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp9 val iv qr 05 exporter | auto |
| `l_mp_val_lin_dist_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_lin_dist_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_val_lin_dist_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_lin_dist_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp5 val lin dist exporter | auto |
| `l_mp6_val_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp6 val lin dist exporter | auto |
| `l_mp7_val_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp7 val lin dist exporter | auto |
| `l_mp8_val_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp8 val lin dist exporter | auto |
| `l_mp9_val_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp9 val lin dist exporter | auto |
| `l_mp_val_lin_both_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_lin_both_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_val_lin_both_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_lin_both_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_lin_both_exporter` | numeric | Masten-Poirier IV: l mp5 val lin both exporter | auto |
| `l_mp6_val_lin_both_exporter` | numeric | Masten-Poirier IV: l mp6 val lin both exporter | auto |
| `l_mp7_val_lin_both_exporter` | numeric | Masten-Poirier IV: l mp7 val lin both exporter | auto |
| `l_mp8_val_lin_both_exporter` | numeric | Masten-Poirier IV: l mp8 val lin both exporter | auto |
| `l_mp9_val_lin_both_exporter` | numeric | Masten-Poirier IV: l mp9 val lin both exporter | auto |
| `impinc_lin_05_tons_exporter` | numeric | (sum) impinc_lin_05_tons_exporter | stata |
| `impinc_iv_05_tons_exporter` | numeric | (sum) impinc_iv_05_tons_exporter | stata |
| `impinc_qd_05_tons_exporter` | numeric | (sum) impinc_qd_05_tons_exporter | stata |
| `impinc_iv_qd_05_tons_exporter` | numeric | (sum) impinc_iv_qd_05_tons_exporter | stata |
| `impinc_qr_05_tons_exporter` | numeric | (sum) impinc_qr_05_tons_exporter | stata |
| `impinc_iv_qr_05_tons_exporter` | numeric | (sum) impinc_iv_qr_05_tons_exporter | stata |
| `impinc_lin_dist_tons_exporter` | numeric | (sum) impinc_lin_dist_tons_exporter | stata |
| `impinc_lin_both_tons_exporter` | numeric | (sum) impinc_lin_both_tons_exporter | stata |
| `impinc2_lin_05_tons_exporter` | numeric | (sum) impinc2_lin_05_tons_exporter | stata |
| `impinc2_iv_05_tons_exporter` | numeric | (sum) impinc2_iv_05_tons_exporter | stata |
| `impinc2_qd_05_tons_exporter` | numeric | (sum) impinc2_qd_05_tons_exporter | stata |
| `impinc2_iv_qd_05_tons_exporter` | numeric | (sum) impinc2_iv_qd_05_tons_exporter | stata |
| `impinc2_qr_05_tons_exporter` | numeric | (sum) impinc2_qr_05_tons_exporter | stata |
| `impinc2_iv_qr_05_tons_exporter` | numeric | (sum) impinc2_iv_qr_05_tons_exporter | stata |
| `impinc2_lin_dist_tons_exporter` | numeric | (sum) impinc2_lin_dist_tons_exporter | stata |
| `impinc2_lin_both_tons_exporter` | numeric | (sum) impinc2_lin_both_tons_exporter | stata |
| `impinc3_lin_05_tons_exporter` | numeric | (sum) impinc3_lin_05_tons_exporter | stata |
| `impinc3_iv_05_tons_exporter` | numeric | (sum) impinc3_iv_05_tons_exporter | stata |
| `impinc3_qd_05_tons_exporter` | numeric | (sum) impinc3_qd_05_tons_exporter | stata |
| `impinc3_iv_qd_05_tons_exporter` | numeric | (sum) impinc3_iv_qd_05_tons_exporter | stata |
| `impinc3_qr_05_tons_exporter` | numeric | (sum) impinc3_qr_05_tons_exporter | stata |
| `impinc3_iv_qr_05_tons_exporter` | numeric | (sum) impinc3_iv_qr_05_tons_exporter | stata |
| `impinc3_lin_dist_tons_exporter` | numeric | (sum) impinc3_lin_dist_tons_exporter | stata |
| `impinc3_lin_both_tons_exporter` | numeric | (sum) impinc3_lin_both_tons_exporter | stata |
| `impinc4_lin_05_tons_exporter` | numeric | (sum) impinc4_lin_05_tons_exporter | stata |
| `impinc4_iv_05_tons_exporter` | numeric | (sum) impinc4_iv_05_tons_exporter | stata |
| `impinc4_qd_05_tons_exporter` | numeric | (sum) impinc4_qd_05_tons_exporter | stata |
| `impinc4_iv_qd_05_tons_exporter` | numeric | (sum) impinc4_iv_qd_05_tons_exporter | stata |
| `impinc4_qr_05_tons_exporter` | numeric | (sum) impinc4_qr_05_tons_exporter | stata |
| `impinc4_iv_qr_05_tons_exporter` | numeric | (sum) impinc4_iv_qr_05_tons_exporter | stata |
| `impinc4_lin_dist_tons_exporter` | numeric | (sum) impinc4_lin_dist_tons_exporter | stata |
| `impinc4_lin_both_tons_exporter` | numeric | (sum) impinc4_lin_both_tons_exporter | stata |
| `impinc5_lin_05_tons_exporter` | numeric | (sum) impinc5_lin_05_tons_exporter | stata |
| `impinc5_iv_05_tons_exporter` | numeric | (sum) impinc5_iv_05_tons_exporter | stata |
| `impinc5_qd_05_tons_exporter` | numeric | (sum) impinc5_qd_05_tons_exporter | stata |
| `impinc5_iv_qd_05_tons_exporter` | numeric | (sum) impinc5_iv_qd_05_tons_exporter | stata |
| `impinc5_qr_05_tons_exporter` | numeric | (sum) impinc5_qr_05_tons_exporter | stata |
| `impinc5_iv_qr_05_tons_exporter` | numeric | (sum) impinc5_iv_qr_05_tons_exporter | stata |
| `impinc5_lin_dist_tons_exporter` | numeric | (sum) impinc5_lin_dist_tons_exporter | stata |
| `impinc5_lin_both_tons_exporter` | numeric | (sum) impinc5_lin_both_tons_exporter | stata |
| `impinc6_lin_05_tons_exporter` | numeric | (sum) impinc6_lin_05_tons_exporter | stata |
| `impinc6_iv_05_tons_exporter` | numeric | (sum) impinc6_iv_05_tons_exporter | stata |
| `impinc6_qd_05_tons_exporter` | numeric | (sum) impinc6_qd_05_tons_exporter | stata |
| `impinc6_iv_qd_05_tons_exporter` | numeric | (sum) impinc6_iv_qd_05_tons_exporter | stata |
| `impinc6_qr_05_tons_exporter` | numeric | (sum) impinc6_qr_05_tons_exporter | stata |
| `impinc6_iv_qr_05_tons_exporter` | numeric | (sum) impinc6_iv_qr_05_tons_exporter | stata |
| `impinc6_lin_dist_tons_exporter` | numeric | (sum) impinc6_lin_dist_tons_exporter | stata |
| `impinc6_lin_both_tons_exporter` | numeric | (sum) impinc6_lin_both_tons_exporter | stata |
| `impinc7_lin_05_tons_exporter` | numeric | (sum) impinc7_lin_05_tons_exporter | stata |
| `impinc7_iv_05_tons_exporter` | numeric | (sum) impinc7_iv_05_tons_exporter | stata |
| `impinc7_qd_05_tons_exporter` | numeric | (sum) impinc7_qd_05_tons_exporter | stata |
| `impinc7_iv_qd_05_tons_exporter` | numeric | (sum) impinc7_iv_qd_05_tons_exporter | stata |
| `impinc7_qr_05_tons_exporter` | numeric | (sum) impinc7_qr_05_tons_exporter | stata |
| `impinc7_iv_qr_05_tons_exporter` | numeric | (sum) impinc7_iv_qr_05_tons_exporter | stata |
| `impinc7_lin_dist_tons_exporter` | numeric | (sum) impinc7_lin_dist_tons_exporter | stata |
| `impinc7_lin_both_tons_exporter` | numeric | (sum) impinc7_lin_both_tons_exporter | stata |
| `impinc8_lin_05_tons_exporter` | numeric | (sum) impinc8_lin_05_tons_exporter | stata |
| `impinc8_iv_05_tons_exporter` | numeric | (sum) impinc8_iv_05_tons_exporter | stata |
| `impinc8_qd_05_tons_exporter` | numeric | (sum) impinc8_qd_05_tons_exporter | stata |
| `impinc8_iv_qd_05_tons_exporter` | numeric | (sum) impinc8_iv_qd_05_tons_exporter | stata |
| `impinc8_qr_05_tons_exporter` | numeric | (sum) impinc8_qr_05_tons_exporter | stata |
| `impinc8_iv_qr_05_tons_exporter` | numeric | (sum) impinc8_iv_qr_05_tons_exporter | stata |
| `impinc8_lin_dist_tons_exporter` | numeric | (sum) impinc8_lin_dist_tons_exporter | stata |
| `impinc8_lin_both_tons_exporter` | numeric | (sum) impinc8_lin_both_tons_exporter | stata |
| `impinc9_lin_05_tons_exporter` | numeric | (sum) impinc9_lin_05_tons_exporter | stata |
| `impinc9_iv_05_tons_exporter` | numeric | (sum) impinc9_iv_05_tons_exporter | stata |
| `impinc9_qd_05_tons_exporter` | numeric | (sum) impinc9_qd_05_tons_exporter | stata |
| `impinc9_iv_qd_05_tons_exporter` | numeric | (sum) impinc9_iv_qd_05_tons_exporter | stata |
| `impinc9_qr_05_tons_exporter` | numeric | (sum) impinc9_qr_05_tons_exporter | stata |
| `impinc9_iv_qr_05_tons_exporter` | numeric | (sum) impinc9_iv_qr_05_tons_exporter | stata |
| `impinc9_lin_dist_tons_exporter` | numeric | (sum) impinc9_lin_dist_tons_exporter | stata |
| `impinc9_lin_both_tons_exporter` | numeric | (sum) impinc9_lin_both_tons_exporter | stata |
| `exporter_fe_tons_lin_05` | numeric | (mean) exporter_fe_tons_lin_05 | stata |
| `exporter_fe_tons_iv_05` | numeric | (mean) exporter_fe_tons_iv_05 | stata |
| `exporter_fe_tons_qd_05` | numeric | (mean) exporter_fe_tons_qd_05 | stata |
| `exporter_fe_tons_iv_qd_05` | numeric | (mean) exporter_fe_tons_iv_qd_05 | stata |
| `exporter_fe_tons_qr_05` | numeric | (mean) exporter_fe_tons_qr_05 | stata |
| `exporter_fe_tons_iv_qr_05` | numeric | (mean) exporter_fe_tons_iv_qr_05 | stata |
| `exporter_fe_tons_lin_dist` | numeric | (mean) exporter_fe_tons_lin_dist | stata |
| `exporter_fe_tons_lin_both` | numeric | (mean) exporter_fe_tons_lin_both | stata |
| `l_mp_tons_lin_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_lin_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_lin_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_lin_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_lin_05_exporter` | numeric | Masten-Poirier IV: l mp5 tons lin 05 exporter | auto |
| `l_mp6_tons_lin_05_exporter` | numeric | Masten-Poirier IV: l mp6 tons lin 05 exporter | auto |
| `l_mp7_tons_lin_05_exporter` | numeric | Masten-Poirier IV: l mp7 tons lin 05 exporter | auto |
| `l_mp8_tons_lin_05_exporter` | numeric | Masten-Poirier IV: l mp8 tons lin 05 exporter | auto |
| `l_mp9_tons_lin_05_exporter` | numeric | Masten-Poirier IV: l mp9 tons lin 05 exporter | auto |
| `l_mp_tons_iv_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_iv_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_iv_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_iv_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_iv_05_exporter` | numeric | Masten-Poirier IV: l mp5 tons iv 05 exporter | auto |
| `l_mp6_tons_iv_05_exporter` | numeric | Masten-Poirier IV: l mp6 tons iv 05 exporter | auto |
| `l_mp7_tons_iv_05_exporter` | numeric | Masten-Poirier IV: l mp7 tons iv 05 exporter | auto |
| `l_mp8_tons_iv_05_exporter` | numeric | Masten-Poirier IV: l mp8 tons iv 05 exporter | auto |
| `l_mp9_tons_iv_05_exporter` | numeric | Masten-Poirier IV: l mp9 tons iv 05 exporter | auto |
| `l_mp_tons_qd_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_qd_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_qd_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_qd_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_qd_05_exporter` | numeric | Masten-Poirier IV: l mp5 tons qd 05 exporter | auto |
| `l_mp6_tons_qd_05_exporter` | numeric | Masten-Poirier IV: l mp6 tons qd 05 exporter | auto |
| `l_mp7_tons_qd_05_exporter` | numeric | Masten-Poirier IV: l mp7 tons qd 05 exporter | auto |
| `l_mp8_tons_qd_05_exporter` | numeric | Masten-Poirier IV: l mp8 tons qd 05 exporter | auto |
| `l_mp9_tons_qd_05_exporter` | numeric | Masten-Poirier IV: l mp9 tons qd 05 exporter | auto |
| `l_mp_tons_iv_qd_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_iv_qd_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_iv_qd_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_iv_qd_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp5 tons iv qd 05 exporter | auto |
| `l_mp6_tons_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp6 tons iv qd 05 exporter | auto |
| `l_mp7_tons_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp7 tons iv qd 05 exporter | auto |
| `l_mp8_tons_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp8 tons iv qd 05 exporter | auto |
| `l_mp9_tons_iv_qd_05_exporter` | numeric | Masten-Poirier IV: l mp9 tons iv qd 05 exporter | auto |
| `l_mp_tons_qr_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_qr_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_qr_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_qr_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_qr_05_exporter` | numeric | Masten-Poirier IV: l mp5 tons qr 05 exporter | auto |
| `l_mp6_tons_qr_05_exporter` | numeric | Masten-Poirier IV: l mp6 tons qr 05 exporter | auto |
| `l_mp7_tons_qr_05_exporter` | numeric | Masten-Poirier IV: l mp7 tons qr 05 exporter | auto |
| `l_mp8_tons_qr_05_exporter` | numeric | Masten-Poirier IV: l mp8 tons qr 05 exporter | auto |
| `l_mp9_tons_qr_05_exporter` | numeric | Masten-Poirier IV: l mp9 tons qr 05 exporter | auto |
| `l_mp_tons_iv_qr_05_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_iv_qr_05_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_iv_qr_05_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_iv_qr_05_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp5 tons iv qr 05 exporter | auto |
| `l_mp6_tons_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp6 tons iv qr 05 exporter | auto |
| `l_mp7_tons_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp7 tons iv qr 05 exporter | auto |
| `l_mp8_tons_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp8 tons iv qr 05 exporter | auto |
| `l_mp9_tons_iv_qr_05_exporter` | numeric | Masten-Poirier IV: l mp9 tons iv qr 05 exporter | auto |
| `l_mp_tons_lin_dist_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_lin_dist_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_lin_dist_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_lin_dist_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp5 tons lin dist exporter | auto |
| `l_mp6_tons_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp6 tons lin dist exporter | auto |
| `l_mp7_tons_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp7 tons lin dist exporter | auto |
| `l_mp8_tons_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp8 tons lin dist exporter | auto |
| `l_mp9_tons_lin_dist_exporter` | numeric | Masten-Poirier IV: l mp9 tons lin dist exporter | auto |
| `l_mp_tons_lin_both_exporter` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_lin_both_exporter` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_lin_both_exporter` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_lin_both_exporter` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_lin_both_exporter` | numeric | Masten-Poirier IV: l mp5 tons lin both exporter | auto |
| `l_mp6_tons_lin_both_exporter` | numeric | Masten-Poirier IV: l mp6 tons lin both exporter | auto |
| `l_mp7_tons_lin_both_exporter` | numeric | Masten-Poirier IV: l mp7 tons lin both exporter | auto |
| `l_mp8_tons_lin_both_exporter` | numeric | Masten-Poirier IV: l mp8 tons lin both exporter | auto |
| `l_mp9_tons_lin_both_exporter` | numeric | Masten-Poirier IV: l mp9 tons lin both exporter | auto |
| `importer` | numeric | Importer indicator (Masten-Poirier) | auto |
| `val_total_importer` | numeric | Value of Total Shipments (importer) | stata |
| `tons_total_importer` | numeric | Weight of Total Shipments (importer) | stata |
| `val_importer` | numeric | Value of Truck Shipments (importer) | stata |
| `tons_importer` | numeric | Weight of Truck Shipments (importer) | stata |
| `val2_importer` | numeric | Value of Truck Shipments (inclusive,importer) | stata |
| `tons2_importer` | numeric | Weight of Truck Shipments (inclusive,importer) | stata |
| `val_rail_importer` | numeric | Value of Rail Shipments (importer) | stata |
| `tons_rail_importer` | numeric | Weight of Rail Shipments (importer) | stata |
| `man_emp_share_lib_1956_importer` | numeric | (mean) man_emp_share_lib_1956_importer | stata |
| `man_emp_share_con_1956_importer` | numeric | (mean) man_emp_share_con_1956_importer | stata |
| `l_weight_lib_1956_importer` | numeric | Average Weight-1956 | stata |
| `l_weight_con_1956_importer` | numeric | Average Weight-1956 | stata |
| `man_emp_share_lib_1971_importer` | numeric | (mean) man_emp_share_lib_1971_importer | stata |
| `man_emp_share_con_1971_importer` | numeric | (mean) man_emp_share_con_1971_importer | stata |
| `l_weight_lib_1971_importer` | numeric | (mean) l_weight_lib_1971_importer | stata |
| `l_weight_con_1971_importer` | numeric | (mean) l_weight_con_1971_importer | stata |
| `man_emp_share_lib_1978_importer` | numeric | (mean) man_emp_share_lib_1978_importer | stata |
| `man_emp_share_con_1978_importer` | numeric | (mean) man_emp_share_con_1978_importer | stata |
| `l_weight_lib_1978_importer` | numeric | (mean) l_weight_lib_1978_importer | stata |
| `l_weight_con_1978_importer` | numeric | (mean) l_weight_con_1978_importer | stata |
| `man_emp_share_lib_1988_importer` | numeric | (mean) man_emp_share_lib_1988_importer | stata |
| `man_emp_share_con_1988_importer` | numeric | (mean) man_emp_share_con_1988_importer | stata |
| `l_weight_lib_1988_importer` | numeric | (mean) l_weight_lib_1988_importer | stata |
| `l_weight_con_1988_importer` | numeric | (mean) l_weight_con_1988_importer | stata |
| `man_emp_share_lib_1997_importer` | numeric | (mean) man_emp_share_lib_1997_importer | stata |
| `man_emp_share_con_1997_importer` | numeric | (mean) man_emp_share_con_1997_importer | stata |
| `l_weight_lib_1997_importer` | numeric | (mean) l_weight_lib_1997_importer | stata |
| `l_weight_con_1997_importer` | numeric | (mean) l_weight_con_1997_importer | stata |
| `man_emp_share_lib_2007_importer` | numeric | (mean) man_emp_share_lib_2007_importer | stata |
| `man_emp_share_con_2007_importer` | numeric | (mean) man_emp_share_con_2007_importer | stata |
| `l_weight_lib_2007_importer` | numeric | (mean) l_weight_lib_2007_importer | stata |
| `l_weight_con_2007_importer` | numeric | (mean) l_weight_con_2007_importer | stata |
| `expinc_lin_05_val_importer` | numeric | (sum) expinc_lin_05_val_importer | stata |
| `expinc_iv_05_val_importer` | numeric | (sum) expinc_iv_05_val_importer | stata |
| `expinc_qd_05_val_importer` | numeric | (sum) expinc_qd_05_val_importer | stata |
| `expinc_iv_qd_05_val_importer` | numeric | (sum) expinc_iv_qd_05_val_importer | stata |
| `expinc_qr_05_val_importer` | numeric | (sum) expinc_qr_05_val_importer | stata |
| `expinc_iv_qr_05_val_importer` | numeric | (sum) expinc_iv_qr_05_val_importer | stata |
| `expinc_lin_dist_val_importer` | numeric | (sum) expinc_lin_dist_val_importer | stata |
| `expinc_lin_both_val_importer` | numeric | (sum) expinc_lin_both_val_importer | stata |
| `expinc2_lin_05_val_importer` | numeric | (sum) expinc2_lin_05_val_importer | stata |
| `expinc2_iv_05_val_importer` | numeric | (sum) expinc2_iv_05_val_importer | stata |
| `expinc2_qd_05_val_importer` | numeric | (sum) expinc2_qd_05_val_importer | stata |
| `expinc2_iv_qd_05_val_importer` | numeric | (sum) expinc2_iv_qd_05_val_importer | stata |
| `expinc2_qr_05_val_importer` | numeric | (sum) expinc2_qr_05_val_importer | stata |
| `expinc2_iv_qr_05_val_importer` | numeric | (sum) expinc2_iv_qr_05_val_importer | stata |
| `expinc2_lin_dist_val_importer` | numeric | (sum) expinc2_lin_dist_val_importer | stata |
| `expinc2_lin_both_val_importer` | numeric | (sum) expinc2_lin_both_val_importer | stata |
| `expinc3_lin_05_val_importer` | numeric | (sum) expinc3_lin_05_val_importer | stata |
| `expinc3_iv_05_val_importer` | numeric | (sum) expinc3_iv_05_val_importer | stata |
| `expinc3_qd_05_val_importer` | numeric | (sum) expinc3_qd_05_val_importer | stata |
| `expinc3_iv_qd_05_val_importer` | numeric | (sum) expinc3_iv_qd_05_val_importer | stata |
| `expinc3_qr_05_val_importer` | numeric | (sum) expinc3_qr_05_val_importer | stata |
| `expinc3_iv_qr_05_val_importer` | numeric | (sum) expinc3_iv_qr_05_val_importer | stata |
| `expinc3_lin_dist_val_importer` | numeric | (sum) expinc3_lin_dist_val_importer | stata |
| `expinc3_lin_both_val_importer` | numeric | (sum) expinc3_lin_both_val_importer | stata |
| `expinc4_lin_05_val_importer` | numeric | (sum) expinc4_lin_05_val_importer | stata |
| `expinc4_iv_05_val_importer` | numeric | (sum) expinc4_iv_05_val_importer | stata |
| `expinc4_qd_05_val_importer` | numeric | (sum) expinc4_qd_05_val_importer | stata |
| `expinc4_iv_qd_05_val_importer` | numeric | (sum) expinc4_iv_qd_05_val_importer | stata |
| `expinc4_qr_05_val_importer` | numeric | (sum) expinc4_qr_05_val_importer | stata |
| `expinc4_iv_qr_05_val_importer` | numeric | (sum) expinc4_iv_qr_05_val_importer | stata |
| `expinc4_lin_dist_val_importer` | numeric | (sum) expinc4_lin_dist_val_importer | stata |
| `expinc4_lin_both_val_importer` | numeric | (sum) expinc4_lin_both_val_importer | stata |
| `expinc5_lin_05_val_importer` | numeric | (sum) expinc5_lin_05_val_importer | stata |
| `expinc5_iv_05_val_importer` | numeric | (sum) expinc5_iv_05_val_importer | stata |
| `expinc5_qd_05_val_importer` | numeric | (sum) expinc5_qd_05_val_importer | stata |
| `expinc5_iv_qd_05_val_importer` | numeric | (sum) expinc5_iv_qd_05_val_importer | stata |
| `expinc5_qr_05_val_importer` | numeric | (sum) expinc5_qr_05_val_importer | stata |
| `expinc5_iv_qr_05_val_importer` | numeric | (sum) expinc5_iv_qr_05_val_importer | stata |
| `expinc5_lin_dist_val_importer` | numeric | (sum) expinc5_lin_dist_val_importer | stata |
| `expinc5_lin_both_val_importer` | numeric | (sum) expinc5_lin_both_val_importer | stata |
| `expinc6_lin_05_val_importer` | numeric | (sum) expinc6_lin_05_val_importer | stata |
| `expinc6_iv_05_val_importer` | numeric | (sum) expinc6_iv_05_val_importer | stata |
| `expinc6_qd_05_val_importer` | numeric | (sum) expinc6_qd_05_val_importer | stata |
| `expinc6_iv_qd_05_val_importer` | numeric | (sum) expinc6_iv_qd_05_val_importer | stata |
| `expinc6_qr_05_val_importer` | numeric | (sum) expinc6_qr_05_val_importer | stata |
| `expinc6_iv_qr_05_val_importer` | numeric | (sum) expinc6_iv_qr_05_val_importer | stata |
| `expinc6_lin_dist_val_importer` | numeric | (sum) expinc6_lin_dist_val_importer | stata |
| `expinc6_lin_both_val_importer` | numeric | (sum) expinc6_lin_both_val_importer | stata |
| `expinc7_lin_05_val_importer` | numeric | (sum) expinc7_lin_05_val_importer | stata |
| `expinc7_iv_05_val_importer` | numeric | (sum) expinc7_iv_05_val_importer | stata |
| `expinc7_qd_05_val_importer` | numeric | (sum) expinc7_qd_05_val_importer | stata |
| `expinc7_iv_qd_05_val_importer` | numeric | (sum) expinc7_iv_qd_05_val_importer | stata |
| `expinc7_qr_05_val_importer` | numeric | (sum) expinc7_qr_05_val_importer | stata |
| `expinc7_iv_qr_05_val_importer` | numeric | (sum) expinc7_iv_qr_05_val_importer | stata |
| `expinc7_lin_dist_val_importer` | numeric | (sum) expinc7_lin_dist_val_importer | stata |
| `expinc7_lin_both_val_importer` | numeric | (sum) expinc7_lin_both_val_importer | stata |
| `expinc8_lin_05_val_importer` | numeric | (sum) expinc8_lin_05_val_importer | stata |
| `expinc8_iv_05_val_importer` | numeric | (sum) expinc8_iv_05_val_importer | stata |
| `expinc8_qd_05_val_importer` | numeric | (sum) expinc8_qd_05_val_importer | stata |
| `expinc8_iv_qd_05_val_importer` | numeric | (sum) expinc8_iv_qd_05_val_importer | stata |
| `expinc8_qr_05_val_importer` | numeric | (sum) expinc8_qr_05_val_importer | stata |
| `expinc8_iv_qr_05_val_importer` | numeric | (sum) expinc8_iv_qr_05_val_importer | stata |
| `expinc8_lin_dist_val_importer` | numeric | (sum) expinc8_lin_dist_val_importer | stata |
| `expinc8_lin_both_val_importer` | numeric | (sum) expinc8_lin_both_val_importer | stata |
| `expinc9_lin_05_val_importer` | numeric | (sum) expinc9_lin_05_val_importer | stata |
| `expinc9_iv_05_val_importer` | numeric | (sum) expinc9_iv_05_val_importer | stata |
| `expinc9_qd_05_val_importer` | numeric | (sum) expinc9_qd_05_val_importer | stata |
| `expinc9_iv_qd_05_val_importer` | numeric | (sum) expinc9_iv_qd_05_val_importer | stata |
| `expinc9_qr_05_val_importer` | numeric | (sum) expinc9_qr_05_val_importer | stata |
| `expinc9_iv_qr_05_val_importer` | numeric | (sum) expinc9_iv_qr_05_val_importer | stata |
| `expinc9_lin_dist_val_importer` | numeric | (sum) expinc9_lin_dist_val_importer | stata |
| `expinc9_lin_both_val_importer` | numeric | (sum) expinc9_lin_both_val_importer | stata |
| `importer_fe_val_lin_05` | numeric | (mean) importer_fe_val_lin_05 | stata |
| `importer_fe_val_iv_05` | numeric | (mean) importer_fe_val_iv_05 | stata |
| `importer_fe_val_qd_05` | numeric | (mean) importer_fe_val_qd_05 | stata |
| `importer_fe_val_iv_qd_05` | numeric | (mean) importer_fe_val_iv_qd_05 | stata |
| `importer_fe_val_qr_05` | numeric | (mean) importer_fe_val_qr_05 | stata |
| `importer_fe_val_iv_qr_05` | numeric | (mean) importer_fe_val_iv_qr_05 | stata |
| `importer_fe_val_lin_dist` | numeric | (mean) importer_fe_val_lin_dist | stata |
| `importer_fe_val_lin_both` | numeric | (mean) importer_fe_val_lin_both | stata |
| `l_val_importer` | numeric | (log) Value of Truck Shipments (importer) | stata |
| `l_tons_importer` | numeric | (log) Weight of Truck Shipments (importer) | stata |
| `share_road_val_importer` | numeric | Share of Truck in Total Shipments Value (importer) | stata |
| `share_road_tons_importer` | numeric | Share of Truck in Total Shipments Tons (importer) | stata |
| `share2_road_val_importer` | numeric | Share of Truck in Total Shipments Value (inclusive,importer) | stata |
| `share2_road_tons_importer` | numeric | Share of Truck in Total Shipments Tons (inclusive,importer) | stata |
| `share_rail_val_importer` | numeric | Share of Rail in Total Shipments Value (importer) | stata |
| `share_rail_tons_importer` | numeric | Share of Rail in Total Shipments Tons (importer) | stata |
| `share_external_val_importer` | numeric | Share of External Trade-Value | stata |
| `share_external_tons_importer` | numeric | Share of External Trade-Tons | stata |
| `l_man_emp_sh_l_56_importer` | numeric | log(\% manuf. emp.,1956) | stata |
| `l_man_emp_sh_c_56_importer` | numeric | log(\% manuf. emp.,1956) | stata |
| `l_mp_val_lin_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_lin_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_val_lin_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_lin_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_lin_05_importer` | numeric | Masten-Poirier IV: l mp5 val lin 05 importer | auto |
| `l_mp6_val_lin_05_importer` | numeric | Masten-Poirier IV: l mp6 val lin 05 importer | auto |
| `l_mp7_val_lin_05_importer` | numeric | Masten-Poirier IV: l mp7 val lin 05 importer | auto |
| `l_mp8_val_lin_05_importer` | numeric | Masten-Poirier IV: l mp8 val lin 05 importer | auto |
| `l_mp9_val_lin_05_importer` | numeric | Masten-Poirier IV: l mp9 val lin 05 importer | auto |
| `l_mp_val_iv_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_iv_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_val_iv_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_iv_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_iv_05_importer` | numeric | Masten-Poirier IV: l mp5 val iv 05 importer | auto |
| `l_mp6_val_iv_05_importer` | numeric | Masten-Poirier IV: l mp6 val iv 05 importer | auto |
| `l_mp7_val_iv_05_importer` | numeric | Masten-Poirier IV: l mp7 val iv 05 importer | auto |
| `l_mp8_val_iv_05_importer` | numeric | Masten-Poirier IV: l mp8 val iv 05 importer | auto |
| `l_mp9_val_iv_05_importer` | numeric | Masten-Poirier IV: l mp9 val iv 05 importer | auto |
| `l_mp_val_qd_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_qd_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_val_qd_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_qd_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_qd_05_importer` | numeric | Masten-Poirier IV: l mp5 val qd 05 importer | auto |
| `l_mp6_val_qd_05_importer` | numeric | Masten-Poirier IV: l mp6 val qd 05 importer | auto |
| `l_mp7_val_qd_05_importer` | numeric | Masten-Poirier IV: l mp7 val qd 05 importer | auto |
| `l_mp8_val_qd_05_importer` | numeric | Masten-Poirier IV: l mp8 val qd 05 importer | auto |
| `l_mp9_val_qd_05_importer` | numeric | Masten-Poirier IV: l mp9 val qd 05 importer | auto |
| `l_mp_val_iv_qd_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_iv_qd_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_val_iv_qd_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_iv_qd_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp5 val iv qd 05 importer | auto |
| `l_mp6_val_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp6 val iv qd 05 importer | auto |
| `l_mp7_val_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp7 val iv qd 05 importer | auto |
| `l_mp8_val_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp8 val iv qd 05 importer | auto |
| `l_mp9_val_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp9 val iv qd 05 importer | auto |
| `l_mp_val_qr_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_qr_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_val_qr_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_qr_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_qr_05_importer` | numeric | Masten-Poirier IV: l mp5 val qr 05 importer | auto |
| `l_mp6_val_qr_05_importer` | numeric | Masten-Poirier IV: l mp6 val qr 05 importer | auto |
| `l_mp7_val_qr_05_importer` | numeric | Masten-Poirier IV: l mp7 val qr 05 importer | auto |
| `l_mp8_val_qr_05_importer` | numeric | Masten-Poirier IV: l mp8 val qr 05 importer | auto |
| `l_mp9_val_qr_05_importer` | numeric | Masten-Poirier IV: l mp9 val qr 05 importer | auto |
| `l_mp_val_iv_qr_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_iv_qr_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_val_iv_qr_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_iv_qr_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp5 val iv qr 05 importer | auto |
| `l_mp6_val_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp6 val iv qr 05 importer | auto |
| `l_mp7_val_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp7 val iv qr 05 importer | auto |
| `l_mp8_val_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp8 val iv qr 05 importer | auto |
| `l_mp9_val_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp9 val iv qr 05 importer | auto |
| `l_mp_val_lin_dist_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_lin_dist_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_val_lin_dist_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_lin_dist_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_lin_dist_importer` | numeric | Masten-Poirier IV: l mp5 val lin dist importer | auto |
| `l_mp6_val_lin_dist_importer` | numeric | Masten-Poirier IV: l mp6 val lin dist importer | auto |
| `l_mp7_val_lin_dist_importer` | numeric | Masten-Poirier IV: l mp7 val lin dist importer | auto |
| `l_mp8_val_lin_dist_importer` | numeric | Masten-Poirier IV: l mp8 val lin dist importer | auto |
| `l_mp9_val_lin_dist_importer` | numeric | Masten-Poirier IV: l mp9 val lin dist importer | auto |
| `l_mp_val_lin_both_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_val_lin_both_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_val_lin_both_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_val_lin_both_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_val_lin_both_importer` | numeric | Masten-Poirier IV: l mp5 val lin both importer | auto |
| `l_mp6_val_lin_both_importer` | numeric | Masten-Poirier IV: l mp6 val lin both importer | auto |
| `l_mp7_val_lin_both_importer` | numeric | Masten-Poirier IV: l mp7 val lin both importer | auto |
| `l_mp8_val_lin_both_importer` | numeric | Masten-Poirier IV: l mp8 val lin both importer | auto |
| `l_mp9_val_lin_both_importer` | numeric | Masten-Poirier IV: l mp9 val lin both importer | auto |
| `expinc_lin_05_tons_importer` | numeric | (sum) expinc_lin_05_tons_importer | stata |
| `expinc_iv_05_tons_importer` | numeric | (sum) expinc_iv_05_tons_importer | stata |
| `expinc_qd_05_tons_importer` | numeric | (sum) expinc_qd_05_tons_importer | stata |
| `expinc_iv_qd_05_tons_importer` | numeric | (sum) expinc_iv_qd_05_tons_importer | stata |
| `expinc_qr_05_tons_importer` | numeric | (sum) expinc_qr_05_tons_importer | stata |
| `expinc_iv_qr_05_tons_importer` | numeric | (sum) expinc_iv_qr_05_tons_importer | stata |
| `expinc_lin_dist_tons_importer` | numeric | (sum) expinc_lin_dist_tons_importer | stata |
| `expinc_lin_both_tons_importer` | numeric | (sum) expinc_lin_both_tons_importer | stata |
| `expinc2_lin_05_tons_importer` | numeric | (sum) expinc2_lin_05_tons_importer | stata |
| `expinc2_iv_05_tons_importer` | numeric | (sum) expinc2_iv_05_tons_importer | stata |
| `expinc2_qd_05_tons_importer` | numeric | (sum) expinc2_qd_05_tons_importer | stata |
| `expinc2_iv_qd_05_tons_importer` | numeric | (sum) expinc2_iv_qd_05_tons_importer | stata |
| `expinc2_qr_05_tons_importer` | numeric | (sum) expinc2_qr_05_tons_importer | stata |
| `expinc2_iv_qr_05_tons_importer` | numeric | (sum) expinc2_iv_qr_05_tons_importer | stata |
| `expinc2_lin_dist_tons_importer` | numeric | (sum) expinc2_lin_dist_tons_importer | stata |
| `expinc2_lin_both_tons_importer` | numeric | (sum) expinc2_lin_both_tons_importer | stata |
| `expinc3_lin_05_tons_importer` | numeric | (sum) expinc3_lin_05_tons_importer | stata |
| `expinc3_iv_05_tons_importer` | numeric | (sum) expinc3_iv_05_tons_importer | stata |
| `expinc3_qd_05_tons_importer` | numeric | (sum) expinc3_qd_05_tons_importer | stata |
| `expinc3_iv_qd_05_tons_importer` | numeric | (sum) expinc3_iv_qd_05_tons_importer | stata |
| `expinc3_qr_05_tons_importer` | numeric | (sum) expinc3_qr_05_tons_importer | stata |
| `expinc3_iv_qr_05_tons_importer` | numeric | (sum) expinc3_iv_qr_05_tons_importer | stata |
| `expinc3_lin_dist_tons_importer` | numeric | (sum) expinc3_lin_dist_tons_importer | stata |
| `expinc3_lin_both_tons_importer` | numeric | (sum) expinc3_lin_both_tons_importer | stata |
| `expinc4_lin_05_tons_importer` | numeric | (sum) expinc4_lin_05_tons_importer | stata |
| `expinc4_iv_05_tons_importer` | numeric | (sum) expinc4_iv_05_tons_importer | stata |
| `expinc4_qd_05_tons_importer` | numeric | (sum) expinc4_qd_05_tons_importer | stata |
| `expinc4_iv_qd_05_tons_importer` | numeric | (sum) expinc4_iv_qd_05_tons_importer | stata |
| `expinc4_qr_05_tons_importer` | numeric | (sum) expinc4_qr_05_tons_importer | stata |
| `expinc4_iv_qr_05_tons_importer` | numeric | (sum) expinc4_iv_qr_05_tons_importer | stata |
| `expinc4_lin_dist_tons_importer` | numeric | (sum) expinc4_lin_dist_tons_importer | stata |
| `expinc4_lin_both_tons_importer` | numeric | (sum) expinc4_lin_both_tons_importer | stata |
| `expinc5_lin_05_tons_importer` | numeric | (sum) expinc5_lin_05_tons_importer | stata |
| `expinc5_iv_05_tons_importer` | numeric | (sum) expinc5_iv_05_tons_importer | stata |
| `expinc5_qd_05_tons_importer` | numeric | (sum) expinc5_qd_05_tons_importer | stata |
| `expinc5_iv_qd_05_tons_importer` | numeric | (sum) expinc5_iv_qd_05_tons_importer | stata |
| `expinc5_qr_05_tons_importer` | numeric | (sum) expinc5_qr_05_tons_importer | stata |
| `expinc5_iv_qr_05_tons_importer` | numeric | (sum) expinc5_iv_qr_05_tons_importer | stata |
| `expinc5_lin_dist_tons_importer` | numeric | (sum) expinc5_lin_dist_tons_importer | stata |
| `expinc5_lin_both_tons_importer` | numeric | (sum) expinc5_lin_both_tons_importer | stata |
| `expinc6_lin_05_tons_importer` | numeric | (sum) expinc6_lin_05_tons_importer | stata |
| `expinc6_iv_05_tons_importer` | numeric | (sum) expinc6_iv_05_tons_importer | stata |
| `expinc6_qd_05_tons_importer` | numeric | (sum) expinc6_qd_05_tons_importer | stata |
| `expinc6_iv_qd_05_tons_importer` | numeric | (sum) expinc6_iv_qd_05_tons_importer | stata |
| `expinc6_qr_05_tons_importer` | numeric | (sum) expinc6_qr_05_tons_importer | stata |
| `expinc6_iv_qr_05_tons_importer` | numeric | (sum) expinc6_iv_qr_05_tons_importer | stata |
| `expinc6_lin_dist_tons_importer` | numeric | (sum) expinc6_lin_dist_tons_importer | stata |
| `expinc6_lin_both_tons_importer` | numeric | (sum) expinc6_lin_both_tons_importer | stata |
| `expinc7_lin_05_tons_importer` | numeric | (sum) expinc7_lin_05_tons_importer | stata |
| `expinc7_iv_05_tons_importer` | numeric | (sum) expinc7_iv_05_tons_importer | stata |
| `expinc7_qd_05_tons_importer` | numeric | (sum) expinc7_qd_05_tons_importer | stata |
| `expinc7_iv_qd_05_tons_importer` | numeric | (sum) expinc7_iv_qd_05_tons_importer | stata |
| `expinc7_qr_05_tons_importer` | numeric | (sum) expinc7_qr_05_tons_importer | stata |
| `expinc7_iv_qr_05_tons_importer` | numeric | (sum) expinc7_iv_qr_05_tons_importer | stata |
| `expinc7_lin_dist_tons_importer` | numeric | (sum) expinc7_lin_dist_tons_importer | stata |
| `expinc7_lin_both_tons_importer` | numeric | (sum) expinc7_lin_both_tons_importer | stata |
| `expinc8_lin_05_tons_importer` | numeric | (sum) expinc8_lin_05_tons_importer | stata |
| `expinc8_iv_05_tons_importer` | numeric | (sum) expinc8_iv_05_tons_importer | stata |
| `expinc8_qd_05_tons_importer` | numeric | (sum) expinc8_qd_05_tons_importer | stata |
| `expinc8_iv_qd_05_tons_importer` | numeric | (sum) expinc8_iv_qd_05_tons_importer | stata |
| `expinc8_qr_05_tons_importer` | numeric | (sum) expinc8_qr_05_tons_importer | stata |
| `expinc8_iv_qr_05_tons_importer` | numeric | (sum) expinc8_iv_qr_05_tons_importer | stata |
| `expinc8_lin_dist_tons_importer` | numeric | (sum) expinc8_lin_dist_tons_importer | stata |
| `expinc8_lin_both_tons_importer` | numeric | (sum) expinc8_lin_both_tons_importer | stata |
| `expinc9_lin_05_tons_importer` | numeric | (sum) expinc9_lin_05_tons_importer | stata |
| `expinc9_iv_05_tons_importer` | numeric | (sum) expinc9_iv_05_tons_importer | stata |
| `expinc9_qd_05_tons_importer` | numeric | (sum) expinc9_qd_05_tons_importer | stata |
| `expinc9_iv_qd_05_tons_importer` | numeric | (sum) expinc9_iv_qd_05_tons_importer | stata |
| `expinc9_qr_05_tons_importer` | numeric | (sum) expinc9_qr_05_tons_importer | stata |
| `expinc9_iv_qr_05_tons_importer` | numeric | (sum) expinc9_iv_qr_05_tons_importer | stata |
| `expinc9_lin_dist_tons_importer` | numeric | (sum) expinc9_lin_dist_tons_importer | stata |
| `expinc9_lin_both_tons_importer` | numeric | (sum) expinc9_lin_both_tons_importer | stata |
| `importer_fe_tons_lin_05` | numeric | (mean) importer_fe_tons_lin_05 | stata |
| `importer_fe_tons_iv_05` | numeric | (mean) importer_fe_tons_iv_05 | stata |
| `importer_fe_tons_qd_05` | numeric | (mean) importer_fe_tons_qd_05 | stata |
| `importer_fe_tons_iv_qd_05` | numeric | (mean) importer_fe_tons_iv_qd_05 | stata |
| `importer_fe_tons_qr_05` | numeric | (mean) importer_fe_tons_qr_05 | stata |
| `importer_fe_tons_iv_qr_05` | numeric | (mean) importer_fe_tons_iv_qr_05 | stata |
| `importer_fe_tons_lin_dist` | numeric | (mean) importer_fe_tons_lin_dist | stata |
| `importer_fe_tons_lin_both` | numeric | (mean) importer_fe_tons_lin_both | stata |
| `l_mp_tons_lin_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_lin_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_lin_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_lin_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_lin_05_importer` | numeric | Masten-Poirier IV: l mp5 tons lin 05 importer | auto |
| `l_mp6_tons_lin_05_importer` | numeric | Masten-Poirier IV: l mp6 tons lin 05 importer | auto |
| `l_mp7_tons_lin_05_importer` | numeric | Masten-Poirier IV: l mp7 tons lin 05 importer | auto |
| `l_mp8_tons_lin_05_importer` | numeric | Masten-Poirier IV: l mp8 tons lin 05 importer | auto |
| `l_mp9_tons_lin_05_importer` | numeric | Masten-Poirier IV: l mp9 tons lin 05 importer | auto |
| `l_mp_tons_iv_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_iv_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_iv_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_iv_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_iv_05_importer` | numeric | Masten-Poirier IV: l mp5 tons iv 05 importer | auto |
| `l_mp6_tons_iv_05_importer` | numeric | Masten-Poirier IV: l mp6 tons iv 05 importer | auto |
| `l_mp7_tons_iv_05_importer` | numeric | Masten-Poirier IV: l mp7 tons iv 05 importer | auto |
| `l_mp8_tons_iv_05_importer` | numeric | Masten-Poirier IV: l mp8 tons iv 05 importer | auto |
| `l_mp9_tons_iv_05_importer` | numeric | Masten-Poirier IV: l mp9 tons iv 05 importer | auto |
| `l_mp_tons_qd_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_qd_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_qd_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_qd_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_qd_05_importer` | numeric | Masten-Poirier IV: l mp5 tons qd 05 importer | auto |
| `l_mp6_tons_qd_05_importer` | numeric | Masten-Poirier IV: l mp6 tons qd 05 importer | auto |
| `l_mp7_tons_qd_05_importer` | numeric | Masten-Poirier IV: l mp7 tons qd 05 importer | auto |
| `l_mp8_tons_qd_05_importer` | numeric | Masten-Poirier IV: l mp8 tons qd 05 importer | auto |
| `l_mp9_tons_qd_05_importer` | numeric | Masten-Poirier IV: l mp9 tons qd 05 importer | auto |
| `l_mp_tons_iv_qd_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_iv_qd_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_iv_qd_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_iv_qd_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp5 tons iv qd 05 importer | auto |
| `l_mp6_tons_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp6 tons iv qd 05 importer | auto |
| `l_mp7_tons_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp7 tons iv qd 05 importer | auto |
| `l_mp8_tons_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp8 tons iv qd 05 importer | auto |
| `l_mp9_tons_iv_qd_05_importer` | numeric | Masten-Poirier IV: l mp9 tons iv qd 05 importer | auto |
| `l_mp_tons_qr_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_qr_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_qr_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_qr_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_qr_05_importer` | numeric | Masten-Poirier IV: l mp5 tons qr 05 importer | auto |
| `l_mp6_tons_qr_05_importer` | numeric | Masten-Poirier IV: l mp6 tons qr 05 importer | auto |
| `l_mp7_tons_qr_05_importer` | numeric | Masten-Poirier IV: l mp7 tons qr 05 importer | auto |
| `l_mp8_tons_qr_05_importer` | numeric | Masten-Poirier IV: l mp8 tons qr 05 importer | auto |
| `l_mp9_tons_qr_05_importer` | numeric | Masten-Poirier IV: l mp9 tons qr 05 importer | auto |
| `l_mp_tons_iv_qr_05_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_iv_qr_05_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_iv_qr_05_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_iv_qr_05_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp5 tons iv qr 05 importer | auto |
| `l_mp6_tons_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp6 tons iv qr 05 importer | auto |
| `l_mp7_tons_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp7 tons iv qr 05 importer | auto |
| `l_mp8_tons_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp8 tons iv qr 05 importer | auto |
| `l_mp9_tons_iv_qr_05_importer` | numeric | Masten-Poirier IV: l mp9 tons iv qr 05 importer | auto |
| `l_mp_tons_lin_dist_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_lin_dist_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_lin_dist_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_lin_dist_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_lin_dist_importer` | numeric | Masten-Poirier IV: l mp5 tons lin dist importer | auto |
| `l_mp6_tons_lin_dist_importer` | numeric | Masten-Poirier IV: l mp6 tons lin dist importer | auto |
| `l_mp7_tons_lin_dist_importer` | numeric | Masten-Poirier IV: l mp7 tons lin dist importer | auto |
| `l_mp8_tons_lin_dist_importer` | numeric | Masten-Poirier IV: l mp8 tons lin dist importer | auto |
| `l_mp9_tons_lin_dist_importer` | numeric | Masten-Poirier IV: l mp9 tons lin dist importer | auto |
| `l_mp_tons_lin_both_importer` | numeric | log(market potential,FE) | stata |
| `l_mp2_tons_lin_both_importer` | numeric | log(market potential,income) | stata |
| `l_mp3_tons_lin_both_importer` | numeric | log(market potential,1920 pop) | stata |
| `l_mp4_tons_lin_both_importer` | numeric | log(market potential,2000 pop) | stata |
| `l_mp5_tons_lin_both_importer` | numeric | Masten-Poirier IV: l mp5 tons lin both importer | auto |
| `l_mp6_tons_lin_both_importer` | numeric | Masten-Poirier IV: l mp6 tons lin both importer | auto |
| `l_mp7_tons_lin_both_importer` | numeric | Masten-Poirier IV: l mp7 tons lin both importer | auto |
| `l_mp8_tons_lin_both_importer` | numeric | Masten-Poirier IV: l mp8 tons lin both importer | auto |
| `l_mp9_tons_lin_both_importer` | numeric | Masten-Poirier IV: l mp9 tons lin both importer | auto |
| `l_ln_km_IH` | numeric | log(lane km) | stata |
| `l_val_internal` | numeric | Log internal trade value | auto |
| `l_tons_internal` | numeric | Log internal trade tons | auto |
| `val_external` | numeric | External trade value | auto |
| `tons_external` | numeric | External trade in tons | auto |
| `l_val_internal_share2` | numeric | Log internal trade value share squared | auto |
| `l_tons_internal_share2` | numeric | Log internal trade tons share squared | auto |
| `l_pop2000` | numeric | log(2000 pop.) | stata |
| `l_pop1990` | numeric | log(1990 pop.) | stata |
| `l_pop1980` | numeric | Log population 1980 | auto |
| `l_pop1970` | numeric | Log population 1970 | auto |
| `l_pop1960` | numeric | log(1960 pop.) | stata |
| `l_pop1950` | numeric | log(1950 pop.) | stata |
| `l_pop1920` | numeric | log(1920 pop.) | stata |
| `emp07_cbp_exporter` | numeric | 2007 Employment | stata |
| `l_emp07_cbp` | numeric | log(2007 emp.) | stata |
| `l_csa_ua_hwy1947` | numeric | log(1947 highways (urbanized areas)) | stata |
| `l_csa_ua_rail1898` | numeric | log(1898 railroads (urbanized areas)) | stata |
| `l_csa_hwy1947` | numeric | log(1947 highways) | stata |
| `l_csa_rail1898` | numeric | log(1898 railroads) | stata |
| `exploration` | numeric | exploration routes | stata |
| `l_exploration` | numeric | log(exploration routes) | stata |
| `ln_km_IH` | numeric | lane km | stata |
| `l_sec_km_IH_07` | numeric | log (Section km,2007) | stata |
| `l_rail_1898_rays_exporter` | numeric | log(1898 railroad rays) | stata |
| `l_hwy_1947_rays_exporter` | numeric | log(1947 highway rays) | stata |
| `l_IH_2005_rays_exporter` | numeric | log(2005 highway rays) | stata |
| `l_rail04_km` | numeric | log(Railroad km, 2004) | stata |
| `l_slope` | numeric | log(Median Land Gradient) | stata |
| `l_ocean_dist` | numeric | Log distance to ocean | auto |
| `l_gulf_dist` | numeric | Log distance to Gulf coast | auto |
| `l_lake_dist` | numeric | Log distance to Great Lakes | auto |
| `l_water` | numeric | log(minimum dist. to water) | stata |
| `division` | numeric | Census division | auto |
| `l_pi_00` | numeric | log(personal income per capita,2000) | stata |
| `l_college_80` | numeric | log(\% with college degree,1980) | stata |
| `l_college_90` | numeric | log(\% with college degree,1990) | stata |
| `l_college_00` | numeric | log(\% with college degree,2000) | stata |
| `l_manshare2003` | numeric | log(% manuf. emp.,2003) | stata |
| `l_manshare1978` | numeric | log(% manuf. emp.,1978) | stata |
| `l_internal_distance` | numeric | Log internal distance | auto |
| `l_wholesale` | numeric | log(\% wholesale emp.) | stata |
| `COV_ind1_te` | numeric | Industry 1 fixed effect (treated, excess return) | auto |
| `COV_ind2_te` | numeric | Industry 2 fixed effect (treated, excess return) | auto |
| `COV_ind3_te` | numeric | Industry 3 fixed effect (treated, excess return) | auto |
| `COV_ind4_te` | numeric | Industry 4 fixed effect (treated, excess return) | auto |
| `COV_ind5_te` | numeric | Industry 5 fixed effect (treated, excess return) | auto |
| `COV_ind6_te` | numeric | Industry 6 fixed effect (treated, excess return) | auto |
| `COV_ind7_te` | numeric | Industry 7 fixed effect (treated, excess return) | auto |
| `COV_ind8_te` | numeric | Industry 8 fixed effect (treated, excess return) | auto |
| `COV_ind9_te` | numeric | Industry 9 fixed effect (treated, excess return) | auto |
| `COV_ind10_te` | numeric | Industry 10 fixed effect (treated, excess return) | auto |
| `COV_ind11_te` | numeric | Industry 11 fixed effect (treated, excess return) | auto |
| `COV_ind12_te` | numeric | Industry 12 fixed effect (treated, excess return) | auto |
| `COV_ind13_te` | numeric | Industry 13 fixed effect (treated, excess return) | auto |
| `COV_ind14_te` | numeric | Industry 14 fixed effect (treated, excess return) | auto |
| `COV_ind15_te` | numeric | Industry 15 fixed effect (treated, excess return) | auto |
| `COV_ind16_te` | numeric | Industry 16 fixed effect (treated, excess return) | auto |
| `COV_ind17_te` | numeric | Industry 17 fixed effect (treated, excess return) | auto |
| `COV_ind18_te` | numeric | Industry 18 fixed effect (treated, excess return) | auto |
| `COV_ind19_te` | numeric | Industry 19 fixed effect (treated, excess return) | auto |
| `COV_ind20_te` | numeric | Industry 20 fixed effect (treated, excess return) | auto |
| `COV_ind21_te` | numeric | Industry 21 fixed effect (treated, excess return) | auto |
| `COV_ind22_te` | numeric | Industry 22 fixed effect (treated, excess return) | auto |
| `COV_ind23_te` | numeric | Industry 23 fixed effect (treated, excess return) | auto |
| `COV_ind24_te` | numeric | Industry 24 fixed effect (treated, excess return) | auto |
| `COV_ind25_te` | numeric | Industry 25 fixed effect (treated, excess return) | auto |
| `COV_ind26_te` | numeric | Industry 26 fixed effect (treated, excess return) | auto |
| `COV_ind27_te` | numeric | Industry 27 fixed effect (treated, excess return) | auto |
| `COV_ind28_te` | numeric | Industry 28 fixed effect (treated, excess return) | auto |
| `COV_ind29_te` | numeric | Industry 29 fixed effect (treated, excess return) | auto |
| `COV_ind30_te` | numeric | Industry 30 fixed effect (treated, excess return) | auto |
| `COV_ind31_te` | numeric | Industry 31 fixed effect (treated, excess return) | auto |
| `COV_ind32_te` | numeric | Industry 32 fixed effect (treated, excess return) | auto |
| `COV_ind33_te` | numeric | Industry 33 fixed effect (treated, excess return) | auto |
| `COV_ind34_te` | numeric | Industry 34 fixed effect (treated, excess return) | auto |
| `COV_ind35_te` | numeric | Industry 35 fixed effect (treated, excess return) | auto |
| `COV_ind36_te` | numeric | Industry 36 fixed effect (treated, excess return) | auto |
| `COV_ind37_te` | numeric | Industry 37 fixed effect (treated, excess return) | auto |
| `COV_ind38_te` | numeric | Industry 38 fixed effect (treated, excess return) | auto |
| `COV_ind39_te` | numeric | Industry 39 fixed effect (treated, excess return) | auto |
| `COV_ind40_te` | numeric | Industry 40 fixed effect (treated, excess return) | auto |
| `COV_ind41_te` | numeric | Industry 41 fixed effect (treated, excess return) | auto |
| `COV_ind42_te` | numeric | Industry 42 fixed effect (treated, excess return) | auto |
| `COV_ind43_te` | numeric | Industry 43 fixed effect (treated, excess return) | auto |
| `COV_ind44_te` | numeric | Industry 44 fixed effect (treated, excess return) | auto |
| `COV_ind45_te` | numeric | Industry 45 fixed effect (treated, excess return) | auto |
| `COV_ind46_te` | numeric | Industry 46 fixed effect (treated, excess return) | auto |
| `COV_ind47_te` | numeric | Industry 47 fixed effect (treated, excess return) | auto |
| `COV_ind48_te` | numeric | Industry 48 fixed effect (treated, excess return) | auto |
| `COV_ind49_te` | numeric | Industry 49 fixed effect (treated, excess return) | auto |
| `COV_ind50_te` | numeric | Industry 50 fixed effect (treated, excess return) | auto |
| `COV_ind51_te` | numeric | Industry 51 fixed effect (treated, excess return) | auto |
| `COV_ind52_te` | numeric | Industry 52 fixed effect (treated, excess return) | auto |
| `COV_ind53_te` | numeric | Industry 53 fixed effect (treated, excess return) | auto |
| `COV_ind54_te` | numeric | Industry 54 fixed effect (treated, excess return) | auto |
| `COV_ind55_te` | numeric | Industry 55 fixed effect (treated, excess return) | auto |
| `COV_ind56_te` | numeric | Industry 56 fixed effect (treated, excess return) | auto |
| `COV_ind57_te` | numeric | Industry 57 fixed effect (treated, excess return) | auto |
| `COV_ind58_te` | numeric | Industry 58 fixed effect (treated, excess return) | auto |
| `COV_ind59_te` | numeric | Industry 59 fixed effect (treated, excess return) | auto |
| `COV_ind60_te` | numeric | Industry 60 fixed effect (treated, excess return) | auto |
| `COV_ind61_te` | numeric | Industry 61 fixed effect (treated, excess return) | auto |
| `COV_ind62_te` | numeric | Industry 62 fixed effect (treated, excess return) | auto |
| `COV_ind63_te` | numeric | Industry 63 fixed effect (treated, excess return) | auto |
| `COV_ind64_te` | numeric | Industry 64 fixed effect (treated, excess return) | auto |
| `COV_ind65_te` | numeric | Industry 65 fixed effect (treated, excess return) | auto |
| `COV_ind66_te` | numeric | Industry 66 fixed effect (treated, excess return) | auto |
| `COV_ind1_ti` | numeric | Industry 1 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind2_ti` | numeric | Industry 2 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind3_ti` | numeric | Industry 3 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind4_ti` | numeric | Industry 4 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind5_ti` | numeric | Industry 5 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind6_ti` | numeric | Industry 6 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind7_ti` | numeric | Industry 7 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind8_ti` | numeric | Industry 8 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind9_ti` | numeric | Industry 9 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind10_ti` | numeric | Industry 10 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind11_ti` | numeric | Industry 11 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind12_ti` | numeric | Industry 12 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind13_ti` | numeric | Industry 13 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind14_ti` | numeric | Industry 14 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind15_ti` | numeric | Industry 15 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind16_ti` | numeric | Industry 16 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind17_ti` | numeric | Industry 17 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind18_ti` | numeric | Industry 18 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind19_ti` | numeric | Industry 19 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind20_ti` | numeric | Industry 20 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind21_ti` | numeric | Industry 21 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind22_ti` | numeric | Industry 22 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind23_ti` | numeric | Industry 23 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind24_ti` | numeric | Industry 24 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind25_ti` | numeric | Industry 25 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind26_ti` | numeric | Industry 26 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind27_ti` | numeric | Industry 27 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind28_ti` | numeric | Industry 28 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind29_ti` | numeric | Industry 29 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind30_ti` | numeric | Industry 30 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind31_ti` | numeric | Industry 31 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind32_ti` | numeric | Industry 32 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind33_ti` | numeric | Industry 33 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind34_ti` | numeric | Industry 34 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind35_ti` | numeric | Industry 35 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind36_ti` | numeric | Industry 36 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind37_ti` | numeric | Industry 37 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind38_ti` | numeric | Industry 38 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind39_ti` | numeric | Industry 39 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind40_ti` | numeric | Industry 40 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind41_ti` | numeric | Industry 41 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind42_ti` | numeric | Industry 42 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind43_ti` | numeric | Industry 43 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind44_ti` | numeric | Industry 44 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind45_ti` | numeric | Industry 45 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind46_ti` | numeric | Industry 46 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind47_ti` | numeric | Industry 47 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind48_ti` | numeric | Industry 48 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind49_ti` | numeric | Industry 49 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind50_ti` | numeric | Industry 50 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind51_ti` | numeric | Industry 51 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind52_ti` | numeric | Industry 52 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind53_ti` | numeric | Industry 53 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind54_ti` | numeric | Industry 54 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind55_ti` | numeric | Industry 55 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind56_ti` | numeric | Industry 56 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind57_ti` | numeric | Industry 57 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind58_ti` | numeric | Industry 58 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind59_ti` | numeric | Industry 59 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind60_ti` | numeric | Industry 60 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind61_ti` | numeric | Industry 61 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind62_ti` | numeric | Industry 62 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind63_ti` | numeric | Industry 63 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind64_ti` | numeric | Industry 64 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind65_ti` | numeric | Industry 65 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind66_ti` | numeric | Industry 66 fixed effect (treated, idiosyncratic vol) | auto |
| `COV_ind1_ve` | numeric | Industry 1 fixed effect (control, excess return) | auto |
| `COV_ind2_ve` | numeric | Industry 2 fixed effect (control, excess return) | auto |
| `COV_ind3_ve` | numeric | Industry 3 fixed effect (control, excess return) | auto |
| `COV_ind4_ve` | numeric | Industry 4 fixed effect (control, excess return) | auto |
| `COV_ind5_ve` | numeric | Industry 5 fixed effect (control, excess return) | auto |
| `COV_ind6_ve` | numeric | Industry 6 fixed effect (control, excess return) | auto |
| `COV_ind7_ve` | numeric | Industry 7 fixed effect (control, excess return) | auto |
| `COV_ind8_ve` | numeric | Industry 8 fixed effect (control, excess return) | auto |
| `COV_ind9_ve` | numeric | Industry 9 fixed effect (control, excess return) | auto |
| `COV_ind10_ve` | numeric | Industry 10 fixed effect (control, excess return) | auto |
| `COV_ind11_ve` | numeric | Industry 11 fixed effect (control, excess return) | auto |
| `COV_ind12_ve` | numeric | Industry 12 fixed effect (control, excess return) | auto |
| `COV_ind13_ve` | numeric | Industry 13 fixed effect (control, excess return) | auto |
| `COV_ind14_ve` | numeric | Industry 14 fixed effect (control, excess return) | auto |
| `COV_ind15_ve` | numeric | Industry 15 fixed effect (control, excess return) | auto |
| `COV_ind16_ve` | numeric | Industry 16 fixed effect (control, excess return) | auto |
| `COV_ind17_ve` | numeric | Industry 17 fixed effect (control, excess return) | auto |
| `COV_ind18_ve` | numeric | Industry 18 fixed effect (control, excess return) | auto |
| `COV_ind19_ve` | numeric | Industry 19 fixed effect (control, excess return) | auto |
| `COV_ind20_ve` | numeric | Industry 20 fixed effect (control, excess return) | auto |
| `COV_ind21_ve` | numeric | Industry 21 fixed effect (control, excess return) | auto |
| `COV_ind22_ve` | numeric | Industry 22 fixed effect (control, excess return) | auto |
| `COV_ind23_ve` | numeric | Industry 23 fixed effect (control, excess return) | auto |
| `COV_ind24_ve` | numeric | Industry 24 fixed effect (control, excess return) | auto |
| `COV_ind25_ve` | numeric | Industry 25 fixed effect (control, excess return) | auto |
| `COV_ind26_ve` | numeric | Industry 26 fixed effect (control, excess return) | auto |
| `COV_ind27_ve` | numeric | Industry 27 fixed effect (control, excess return) | auto |
| `COV_ind28_ve` | numeric | Industry 28 fixed effect (control, excess return) | auto |
| `COV_ind29_ve` | numeric | Industry 29 fixed effect (control, excess return) | auto |
| `COV_ind30_ve` | numeric | Industry 30 fixed effect (control, excess return) | auto |
| `COV_ind31_ve` | numeric | Industry 31 fixed effect (control, excess return) | auto |
| `COV_ind32_ve` | numeric | Industry 32 fixed effect (control, excess return) | auto |
| `COV_ind33_ve` | numeric | Industry 33 fixed effect (control, excess return) | auto |
| `COV_ind34_ve` | numeric | Industry 34 fixed effect (control, excess return) | auto |
| `COV_ind35_ve` | numeric | Industry 35 fixed effect (control, excess return) | auto |
| `COV_ind36_ve` | numeric | Industry 36 fixed effect (control, excess return) | auto |
| `COV_ind37_ve` | numeric | Industry 37 fixed effect (control, excess return) | auto |
| `COV_ind38_ve` | numeric | Industry 38 fixed effect (control, excess return) | auto |
| `COV_ind39_ve` | numeric | Industry 39 fixed effect (control, excess return) | auto |
| `COV_ind40_ve` | numeric | Industry 40 fixed effect (control, excess return) | auto |
| `COV_ind41_ve` | numeric | Industry 41 fixed effect (control, excess return) | auto |
| `COV_ind42_ve` | numeric | Industry 42 fixed effect (control, excess return) | auto |
| `COV_ind43_ve` | numeric | Industry 43 fixed effect (control, excess return) | auto |
| `COV_ind44_ve` | numeric | Industry 44 fixed effect (control, excess return) | auto |
| `COV_ind45_ve` | numeric | Industry 45 fixed effect (control, excess return) | auto |
| `COV_ind46_ve` | numeric | Industry 46 fixed effect (control, excess return) | auto |
| `COV_ind47_ve` | numeric | Industry 47 fixed effect (control, excess return) | auto |
| `COV_ind48_ve` | numeric | Industry 48 fixed effect (control, excess return) | auto |
| `COV_ind49_ve` | numeric | Industry 49 fixed effect (control, excess return) | auto |
| `COV_ind50_ve` | numeric | Industry 50 fixed effect (control, excess return) | auto |
| `COV_ind51_ve` | numeric | Industry 51 fixed effect (control, excess return) | auto |
| `COV_ind52_ve` | numeric | Industry 52 fixed effect (control, excess return) | auto |
| `COV_ind53_ve` | numeric | Industry 53 fixed effect (control, excess return) | auto |
| `COV_ind54_ve` | numeric | Industry 54 fixed effect (control, excess return) | auto |
| `COV_ind55_ve` | numeric | Industry 55 fixed effect (control, excess return) | auto |
| `COV_ind56_ve` | numeric | Industry 56 fixed effect (control, excess return) | auto |
| `COV_ind57_ve` | numeric | Industry 57 fixed effect (control, excess return) | auto |
| `COV_ind58_ve` | numeric | Industry 58 fixed effect (control, excess return) | auto |
| `COV_ind59_ve` | numeric | Industry 59 fixed effect (control, excess return) | auto |
| `COV_ind60_ve` | numeric | Industry 60 fixed effect (control, excess return) | auto |
| `COV_ind61_ve` | numeric | Industry 61 fixed effect (control, excess return) | auto |
| `COV_ind62_ve` | numeric | Industry 62 fixed effect (control, excess return) | auto |
| `COV_ind63_ve` | numeric | Industry 63 fixed effect (control, excess return) | auto |
| `COV_ind64_ve` | numeric | Industry 64 fixed effect (control, excess return) | auto |
| `COV_ind65_ve` | numeric | Industry 65 fixed effect (control, excess return) | auto |
| `COV_ind66_ve` | numeric | Industry 66 fixed effect (control, excess return) | auto |
| `COV_ind1_vi` | numeric | Industry 1 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind2_vi` | numeric | Industry 2 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind3_vi` | numeric | Industry 3 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind4_vi` | numeric | Industry 4 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind5_vi` | numeric | Industry 5 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind6_vi` | numeric | Industry 6 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind7_vi` | numeric | Industry 7 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind8_vi` | numeric | Industry 8 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind9_vi` | numeric | Industry 9 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind10_vi` | numeric | Industry 10 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind11_vi` | numeric | Industry 11 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind12_vi` | numeric | Industry 12 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind13_vi` | numeric | Industry 13 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind14_vi` | numeric | Industry 14 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind15_vi` | numeric | Industry 15 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind16_vi` | numeric | Industry 16 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind17_vi` | numeric | Industry 17 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind18_vi` | numeric | Industry 18 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind19_vi` | numeric | Industry 19 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind20_vi` | numeric | Industry 20 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind21_vi` | numeric | Industry 21 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind22_vi` | numeric | Industry 22 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind23_vi` | numeric | Industry 23 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind24_vi` | numeric | Industry 24 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind25_vi` | numeric | Industry 25 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind26_vi` | numeric | Industry 26 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind27_vi` | numeric | Industry 27 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind28_vi` | numeric | Industry 28 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind29_vi` | numeric | Industry 29 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind30_vi` | numeric | Industry 30 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind31_vi` | numeric | Industry 31 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind32_vi` | numeric | Industry 32 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind33_vi` | numeric | Industry 33 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind34_vi` | numeric | Industry 34 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind35_vi` | numeric | Industry 35 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind36_vi` | numeric | Industry 36 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind37_vi` | numeric | Industry 37 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind38_vi` | numeric | Industry 38 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind39_vi` | numeric | Industry 39 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind40_vi` | numeric | Industry 40 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind41_vi` | numeric | Industry 41 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind42_vi` | numeric | Industry 42 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind43_vi` | numeric | Industry 43 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind44_vi` | numeric | Industry 44 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind45_vi` | numeric | Industry 45 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind46_vi` | numeric | Industry 46 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind47_vi` | numeric | Industry 47 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind48_vi` | numeric | Industry 48 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind49_vi` | numeric | Industry 49 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind50_vi` | numeric | Industry 50 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind51_vi` | numeric | Industry 51 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind52_vi` | numeric | Industry 52 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind53_vi` | numeric | Industry 53 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind54_vi` | numeric | Industry 54 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind55_vi` | numeric | Industry 55 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind56_vi` | numeric | Industry 56 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind57_vi` | numeric | Industry 57 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind58_vi` | numeric | Industry 58 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind59_vi` | numeric | Industry 59 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind60_vi` | numeric | Industry 60 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind61_vi` | numeric | Industry 61 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind62_vi` | numeric | Industry 62 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind63_vi` | numeric | Industry 63 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind64_vi` | numeric | Industry 64 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind65_vi` | numeric | Industry 65 fixed effect (control, idiosyncratic vol) | auto |
| `COV_ind66_vi` | numeric | Industry 66 fixed effect (control, idiosyncratic vol) | auto |
| `constant` | numeric | Constant term | auto |

## `raw_data/protests/mpv_xy_summer2020.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `i` | numeric | Index variable | auto |
| `mpv_lat1` | numeric | 1 mpv_lat | stata |
| `mpv_lon1` | numeric | 1 mpv_lon | stata |
| `mpv_lat2` | numeric | 2 mpv_lat | stata |
| `mpv_lon2` | numeric | 2 mpv_lon | stata |
| `mpv_lat3` | numeric | 3 mpv_lat | stata |
| `mpv_lon3` | numeric | 3 mpv_lon | stata |
| `mpv_lat4` | numeric | 4 mpv_lat | stata |
| `mpv_lon4` | numeric | 4 mpv_lon | stata |
| `mpv_lat5` | numeric | 5 mpv_lat | stata |
| `mpv_lon5` | numeric | 5 mpv_lon | stata |
| `mpv_lat6` | numeric | 6 mpv_lat | stata |
| `mpv_lon6` | numeric | 6 mpv_lon | stata |
| `mpv_lat7` | numeric | 7 mpv_lat | stata |
| `mpv_lon7` | numeric | 7 mpv_lon | stata |
| `mpv_lat8` | numeric | 8 mpv_lat | stata |
| `mpv_lon8` | numeric | 8 mpv_lon | stata |
| `mpv_lat9` | numeric | 9 mpv_lat | stata |
| `mpv_lon9` | numeric | 9 mpv_lon | stata |
| `mpv_lat10` | numeric | 10 mpv_lat | stata |
| `mpv_lon10` | numeric | 10 mpv_lon | stata |
| `mpv_lat11` | numeric | 11 mpv_lat | stata |
| `mpv_lon11` | numeric | 11 mpv_lon | stata |
| `mpv_lat12` | numeric | 12 mpv_lat | stata |
| `mpv_lon12` | numeric | 12 mpv_lon | stata |
| `mpv_lat13` | numeric | 13 mpv_lat | stata |
| `mpv_lon13` | numeric | 13 mpv_lon | stata |
| `mpv_lat14` | numeric | 14 mpv_lat | stata |
| `mpv_lon14` | numeric | 14 mpv_lon | stata |
| `mpv_lat15` | numeric | 15 mpv_lat | stata |
| `mpv_lon15` | numeric | 15 mpv_lon | stata |
| `mpv_lat16` | numeric | 16 mpv_lat | stata |
| `mpv_lon16` | numeric | 16 mpv_lon | stata |
| `mpv_lat17` | numeric | 17 mpv_lat | stata |
| `mpv_lon17` | numeric | 17 mpv_lon | stata |
| `mpv_lat18` | numeric | 18 mpv_lat | stata |
| `mpv_lon18` | numeric | 18 mpv_lon | stata |
| `mpv_lat19` | numeric | 19 mpv_lat | stata |
| `mpv_lon19` | numeric | 19 mpv_lon | stata |
| `mpv_lat20` | numeric | 20 mpv_lat | stata |
| `mpv_lon20` | numeric | 20 mpv_lon | stata |
| `mpv_lat21` | numeric | 21 mpv_lat | stata |
| `mpv_lon21` | numeric | 21 mpv_lon | stata |
| `mpv_lat22` | numeric | 22 mpv_lat | stata |
| `mpv_lon22` | numeric | 22 mpv_lon | stata |
| `mpv_lat23` | numeric | 23 mpv_lat | stata |
| `mpv_lon23` | numeric | 23 mpv_lon | stata |
| `mpv_lat24` | numeric | 24 mpv_lat | stata |
| `mpv_lon24` | numeric | 24 mpv_lon | stata |
| `mpv_lat25` | numeric | 25 mpv_lat | stata |
| `mpv_lon25` | numeric | 25 mpv_lon | stata |
| `mpv_lat26` | numeric | 26 mpv_lat | stata |
| `mpv_lon26` | numeric | 26 mpv_lon | stata |
| `mpv_lat27` | numeric | 27 mpv_lat | stata |
| `mpv_lon27` | numeric | 27 mpv_lon | stata |
| `mpv_lat28` | numeric | 28 mpv_lat | stata |
| `mpv_lon28` | numeric | 28 mpv_lon | stata |
| `mpv_lat29` | numeric | 29 mpv_lat | stata |
| `mpv_lon29` | numeric | 29 mpv_lon | stata |
| `mpv_lat30` | numeric | 30 mpv_lat | stata |
| `mpv_lon30` | numeric | 30 mpv_lon | stata |
| `mpv_lat31` | numeric | 31 mpv_lat | stata |
| `mpv_lon31` | numeric | 31 mpv_lon | stata |
| `mpv_lat32` | numeric | 32 mpv_lat | stata |
| `mpv_lon32` | numeric | 32 mpv_lon | stata |
| `mpv_lat33` | numeric | 33 mpv_lat | stata |
| `mpv_lon33` | numeric | 33 mpv_lon | stata |
| `mpv_lat34` | numeric | 34 mpv_lat | stata |
| `mpv_lon34` | numeric | 34 mpv_lon | stata |
| `mpv_lat35` | numeric | 35 mpv_lat | stata |
| `mpv_lon35` | numeric | 35 mpv_lon | stata |
| `mpv_lat36` | numeric | 36 mpv_lat | stata |
| `mpv_lon36` | numeric | 36 mpv_lon | stata |
| `mpv_lat37` | numeric | 37 mpv_lat | stata |
| `mpv_lon37` | numeric | 37 mpv_lon | stata |
| `mpv_lat38` | numeric | 38 mpv_lat | stata |
| `mpv_lon38` | numeric | 38 mpv_lon | stata |
| `mpv_lat39` | numeric | 39 mpv_lat | stata |
| `mpv_lon39` | numeric | 39 mpv_lon | stata |
| `mpv_lat40` | numeric | 40 mpv_lat | stata |
| `mpv_lon40` | numeric | 40 mpv_lon | stata |
| `mpv_lat41` | numeric | 41 mpv_lat | stata |
| `mpv_lon41` | numeric | 41 mpv_lon | stata |
| `mpv_lat42` | numeric | 42 mpv_lat | stata |
| `mpv_lon42` | numeric | 42 mpv_lon | stata |
| `mpv_lat43` | numeric | 43 mpv_lat | stata |
| `mpv_lon43` | numeric | 43 mpv_lon | stata |
| `mpv_lat44` | numeric | 44 mpv_lat | stata |
| `mpv_lon44` | numeric | 44 mpv_lon | stata |
| `mpv_lat45` | numeric | 45 mpv_lat | stata |
| `mpv_lon45` | numeric | 45 mpv_lon | stata |
| `mpv_lat46` | numeric | 46 mpv_lat | stata |
| `mpv_lon46` | numeric | 46 mpv_lon | stata |
| `mpv_lat47` | numeric | 47 mpv_lat | stata |
| `mpv_lon47` | numeric | 47 mpv_lon | stata |
| `mpv_lat48` | numeric | 48 mpv_lat | stata |
| `mpv_lon48` | numeric | 48 mpv_lon | stata |
| `mpv_lat49` | numeric | 49 mpv_lat | stata |
| `mpv_lon49` | numeric | 49 mpv_lon | stata |
| `mpv_lat50` | numeric | 50 mpv_lat | stata |
| `mpv_lon50` | numeric | 50 mpv_lon | stata |
| `mpv_lat51` | numeric | 51 mpv_lat | stata |
| `mpv_lon51` | numeric | 51 mpv_lon | stata |
| `mpv_lat52` | numeric | 52 mpv_lat | stata |
| `mpv_lon52` | numeric | 52 mpv_lon | stata |
| `mpv_lat53` | numeric | 53 mpv_lat | stata |
| `mpv_lon53` | numeric | 53 mpv_lon | stata |
| `mpv_lat54` | numeric | 54 mpv_lat | stata |
| `mpv_lon54` | numeric | 54 mpv_lon | stata |
| `mpv_lat55` | numeric | 55 mpv_lat | stata |
| `mpv_lon55` | numeric | 55 mpv_lon | stata |
| `mpv_lat56` | numeric | 56 mpv_lat | stata |
| `mpv_lon56` | numeric | 56 mpv_lon | stata |
| `mpv_lat57` | numeric | 57 mpv_lat | stata |
| `mpv_lon57` | numeric | 57 mpv_lon | stata |
| `mpv_lat58` | numeric | 58 mpv_lat | stata |
| `mpv_lon58` | numeric | 58 mpv_lon | stata |
| `mpv_lat59` | numeric | 59 mpv_lat | stata |
| `mpv_lon59` | numeric | 59 mpv_lon | stata |
| `mpv_lat60` | numeric | 60 mpv_lat | stata |
| `mpv_lon60` | numeric | 60 mpv_lon | stata |
| `mpv_lat61` | numeric | 61 mpv_lat | stata |
| `mpv_lon61` | numeric | 61 mpv_lon | stata |
| `mpv_lat62` | numeric | 62 mpv_lat | stata |
| `mpv_lon62` | numeric | 62 mpv_lon | stata |
| `mpv_lat63` | numeric | 63 mpv_lat | stata |
| `mpv_lon63` | numeric | 63 mpv_lon | stata |
| `mpv_lat64` | numeric | 64 mpv_lat | stata |
| `mpv_lon64` | numeric | 64 mpv_lon | stata |
| `mpv_lat65` | numeric | 65 mpv_lat | stata |
| `mpv_lon65` | numeric | 65 mpv_lon | stata |
| `mpv_lat66` | numeric | 66 mpv_lat | stata |
| `mpv_lon66` | numeric | 66 mpv_lon | stata |
| `mpv_lat67` | numeric | 67 mpv_lat | stata |
| `mpv_lon67` | numeric | 67 mpv_lon | stata |
| `mpv_lat68` | numeric | 68 mpv_lat | stata |
| `mpv_lon68` | numeric | 68 mpv_lon | stata |
| `mpv_lat69` | numeric | 69 mpv_lat | stata |
| `mpv_lon69` | numeric | 69 mpv_lon | stata |
| `mpv_lat70` | numeric | 70 mpv_lat | stata |
| `mpv_lon70` | numeric | 70 mpv_lon | stata |
| `mpv_lat71` | numeric | 71 mpv_lat | stata |
| `mpv_lon71` | numeric | 71 mpv_lon | stata |
| `mpv_lat72` | numeric | 72 mpv_lat | stata |
| `mpv_lon72` | numeric | 72 mpv_lon | stata |
| `mpv_lat73` | numeric | 73 mpv_lat | stata |
| `mpv_lon73` | numeric | 73 mpv_lon | stata |
| `mpv_lat74` | numeric | 74 mpv_lat | stata |
| `mpv_lon74` | numeric | 74 mpv_lon | stata |
| `mpv_lat75` | numeric | 75 mpv_lat | stata |
| `mpv_lon75` | numeric | 75 mpv_lon | stata |
| `mpv_lat76` | numeric | 76 mpv_lat | stata |
| `mpv_lon76` | numeric | 76 mpv_lon | stata |
| `mpv_lat77` | numeric | 77 mpv_lat | stata |
| `mpv_lon77` | numeric | 77 mpv_lon | stata |
| `mpv_lat78` | numeric | 78 mpv_lat | stata |
| `mpv_lon78` | numeric | 78 mpv_lon | stata |
| `mpv_lat79` | numeric | 79 mpv_lat | stata |
| `mpv_lon79` | numeric | 79 mpv_lon | stata |
| `mpv_lat80` | numeric | 80 mpv_lat | stata |
| `mpv_lon80` | numeric | 80 mpv_lon | stata |
| `mpv_lat81` | numeric | 81 mpv_lat | stata |
| `mpv_lon81` | numeric | 81 mpv_lon | stata |
| `mpv_lat82` | numeric | 82 mpv_lat | stata |
| `mpv_lon82` | numeric | 82 mpv_lon | stata |
| `mpv_lat83` | numeric | 83 mpv_lat | stata |
| `mpv_lon83` | numeric | 83 mpv_lon | stata |
| `mpv_lat84` | numeric | 84 mpv_lat | stata |
| `mpv_lon84` | numeric | 84 mpv_lon | stata |
| `mpv_lat85` | numeric | 85 mpv_lat | stata |
| `mpv_lon85` | numeric | 85 mpv_lon | stata |
| `mpv_lat86` | numeric | 86 mpv_lat | stata |
| `mpv_lon86` | numeric | 86 mpv_lon | stata |
| `mpv_lat87` | numeric | 87 mpv_lat | stata |
| `mpv_lon87` | numeric | 87 mpv_lon | stata |
| `mpv_lat88` | numeric | 88 mpv_lat | stata |
| `mpv_lon88` | numeric | 88 mpv_lon | stata |
| `mpv_lat89` | numeric | 89 mpv_lat | stata |
| `mpv_lon89` | numeric | 89 mpv_lon | stata |
| `mpv_lat90` | numeric | 90 mpv_lat | stata |
| `mpv_lon90` | numeric | 90 mpv_lon | stata |
| `mpv_lat91` | numeric | 91 mpv_lat | stata |
| `mpv_lon91` | numeric | 91 mpv_lon | stata |
| `mpv_lat92` | numeric | 92 mpv_lat | stata |
| `mpv_lon92` | numeric | 92 mpv_lon | stata |
| `mpv_lat93` | numeric | 93 mpv_lat | stata |
| `mpv_lon93` | numeric | 93 mpv_lon | stata |
| `mpv_lat94` | numeric | 94 mpv_lat | stata |
| `mpv_lon94` | numeric | 94 mpv_lon | stata |
| `mpv_lat95` | numeric | 95 mpv_lat | stata |
| `mpv_lon95` | numeric | 95 mpv_lon | stata |
| `mpv_lat96` | numeric | 96 mpv_lat | stata |
| `mpv_lon96` | numeric | 96 mpv_lon | stata |
| `mpv_lat97` | numeric | 97 mpv_lat | stata |
| `mpv_lon97` | numeric | 97 mpv_lon | stata |
| `mpv_lat98` | numeric | 98 mpv_lat | stata |
| `mpv_lon98` | numeric | 98 mpv_lon | stata |
| `mpv_lat99` | numeric | 99 mpv_lat | stata |
| `mpv_lon99` | numeric | 99 mpv_lon | stata |
| `mpv_lat100` | numeric | 100 mpv_lat | stata |
| `mpv_lon100` | numeric | 100 mpv_lon | stata |
| `mpv_lat101` | numeric | 101 mpv_lat | stata |
| `mpv_lon101` | numeric | 101 mpv_lon | stata |
| `mpv_lat102` | numeric | 102 mpv_lat | stata |
| `mpv_lon102` | numeric | 102 mpv_lon | stata |
| `mpv_lat103` | numeric | 103 mpv_lat | stata |
| `mpv_lon103` | numeric | 103 mpv_lon | stata |
| `mpv_lat104` | numeric | 104 mpv_lat | stata |
| `mpv_lon104` | numeric | 104 mpv_lon | stata |
| `mpv_lat105` | numeric | 105 mpv_lat | stata |
| `mpv_lon105` | numeric | 105 mpv_lon | stata |
| `mpv_lat106` | numeric | 106 mpv_lat | stata |
| `mpv_lon106` | numeric | 106 mpv_lon | stata |
| `mpv_lat107` | numeric | 107 mpv_lat | stata |
| `mpv_lon107` | numeric | 107 mpv_lon | stata |
| `mpv_lat108` | numeric | 108 mpv_lat | stata |
| `mpv_lon108` | numeric | 108 mpv_lon | stata |
| `mpv_lat109` | numeric | 109 mpv_lat | stata |
| `mpv_lon109` | numeric | 109 mpv_lon | stata |
| `mpv_lat110` | numeric | 110 mpv_lat | stata |
| `mpv_lon110` | numeric | 110 mpv_lon | stata |
| `mpv_lat111` | numeric | 111 mpv_lat | stata |
| `mpv_lon111` | numeric | 111 mpv_lon | stata |
| `mpv_lat112` | numeric | 112 mpv_lat | stata |
| `mpv_lon112` | numeric | 112 mpv_lon | stata |
| `mpv_lat113` | numeric | 113 mpv_lat | stata |
| `mpv_lon113` | numeric | 113 mpv_lon | stata |
| `mpv_lat114` | numeric | 114 mpv_lat | stata |
| `mpv_lon114` | numeric | 114 mpv_lon | stata |
| `mpv_lat115` | numeric | 115 mpv_lat | stata |
| `mpv_lon115` | numeric | 115 mpv_lon | stata |
| `mpv_lat116` | numeric | 116 mpv_lat | stata |
| `mpv_lon116` | numeric | 116 mpv_lon | stata |
| `mpv_lat117` | numeric | 117 mpv_lat | stata |
| `mpv_lon117` | numeric | 117 mpv_lon | stata |
| `mpv_lat118` | numeric | 118 mpv_lat | stata |
| `mpv_lon118` | numeric | 118 mpv_lon | stata |
| `mpv_lat119` | numeric | 119 mpv_lat | stata |
| `mpv_lon119` | numeric | 119 mpv_lon | stata |
| `mpv_lat120` | numeric | 120 mpv_lat | stata |
| `mpv_lon120` | numeric | 120 mpv_lon | stata |
| `mpv_lat121` | numeric | 121 mpv_lat | stata |
| `mpv_lon121` | numeric | 121 mpv_lon | stata |
| `mpv_lat122` | numeric | 122 mpv_lat | stata |
| `mpv_lon122` | numeric | 122 mpv_lon | stata |
| `mpv_lat123` | numeric | 123 mpv_lat | stata |
| `mpv_lon123` | numeric | 123 mpv_lon | stata |
| `mpv_lat124` | numeric | 124 mpv_lat | stata |
| `mpv_lon124` | numeric | 124 mpv_lon | stata |
| `mpv_lat125` | numeric | 125 mpv_lat | stata |
| `mpv_lon125` | numeric | 125 mpv_lon | stata |
| `mpv_lat126` | numeric | 126 mpv_lat | stata |
| `mpv_lon126` | numeric | 126 mpv_lon | stata |
| `mpv_lat127` | numeric | 127 mpv_lat | stata |
| `mpv_lon127` | numeric | 127 mpv_lon | stata |
| `mpv_lat128` | numeric | 128 mpv_lat | stata |
| `mpv_lon128` | numeric | 128 mpv_lon | stata |
| `mpv_lat129` | numeric | 129 mpv_lat | stata |
| `mpv_lon129` | numeric | 129 mpv_lon | stata |
| `mpv_lat130` | numeric | 130 mpv_lat | stata |
| `mpv_lon130` | numeric | 130 mpv_lon | stata |
| `mpv_lat131` | numeric | 131 mpv_lat | stata |
| `mpv_lon131` | numeric | 131 mpv_lon | stata |
| `mpv_lat132` | numeric | 132 mpv_lat | stata |
| `mpv_lon132` | numeric | 132 mpv_lon | stata |
| `mpv_lat133` | numeric | 133 mpv_lat | stata |
| `mpv_lon133` | numeric | 133 mpv_lon | stata |
| `mpv_lat134` | numeric | 134 mpv_lat | stata |
| `mpv_lon134` | numeric | 134 mpv_lon | stata |
| `mpv_lat135` | numeric | 135 mpv_lat | stata |
| `mpv_lon135` | numeric | 135 mpv_lon | stata |
| `mpv_lat136` | numeric | 136 mpv_lat | stata |
| `mpv_lon136` | numeric | 136 mpv_lon | stata |
| `mpv_lat137` | numeric | 137 mpv_lat | stata |
| `mpv_lon137` | numeric | 137 mpv_lon | stata |
| `mpv_lat138` | numeric | 138 mpv_lat | stata |
| `mpv_lon138` | numeric | 138 mpv_lon | stata |
| `mpv_lat139` | numeric | 139 mpv_lat | stata |
| `mpv_lon139` | numeric | 139 mpv_lon | stata |
| `mpv_lat140` | numeric | 140 mpv_lat | stata |
| `mpv_lon140` | numeric | 140 mpv_lon | stata |
| `mpv_lat141` | numeric | 141 mpv_lat | stata |
| `mpv_lon141` | numeric | 141 mpv_lon | stata |
| `mpv_lat142` | numeric | 142 mpv_lat | stata |
| `mpv_lon142` | numeric | 142 mpv_lon | stata |
| `mpv_lat143` | numeric | 143 mpv_lat | stata |
| `mpv_lon143` | numeric | 143 mpv_lon | stata |
| `mpv_lat144` | numeric | 144 mpv_lat | stata |
| `mpv_lon144` | numeric | 144 mpv_lon | stata |
| `mpv_lat145` | numeric | 145 mpv_lat | stata |
| `mpv_lon145` | numeric | 145 mpv_lon | stata |
| `mpv_lat146` | numeric | 146 mpv_lat | stata |
| `mpv_lon146` | numeric | 146 mpv_lon | stata |
| `mpv_lat147` | numeric | 147 mpv_lat | stata |
| `mpv_lon147` | numeric | 147 mpv_lon | stata |
| `mpv_lat148` | numeric | 148 mpv_lat | stata |
| `mpv_lon148` | numeric | 148 mpv_lon | stata |
| `mpv_lat149` | numeric | 149 mpv_lat | stata |
| `mpv_lon149` | numeric | 149 mpv_lon | stata |
| `mpv_lat150` | numeric | 150 mpv_lat | stata |
| `mpv_lon150` | numeric | 150 mpv_lon | stata |
| `mpv_lat151` | numeric | 151 mpv_lat | stata |
| `mpv_lon151` | numeric | 151 mpv_lon | stata |
| `mpv_lat152` | numeric | 152 mpv_lat | stata |
| `mpv_lon152` | numeric | 152 mpv_lon | stata |
| `mpv_lat153` | numeric | 153 mpv_lat | stata |
| `mpv_lon153` | numeric | 153 mpv_lon | stata |
| `mpv_lat154` | numeric | 154 mpv_lat | stata |
| `mpv_lon154` | numeric | 154 mpv_lon | stata |
| `mpv_lat155` | numeric | 155 mpv_lat | stata |
| `mpv_lon155` | numeric | 155 mpv_lon | stata |
| `mpv_lat156` | numeric | 156 mpv_lat | stata |
| `mpv_lon156` | numeric | 156 mpv_lon | stata |
| `mpv_lat157` | numeric | 157 mpv_lat | stata |
| `mpv_lon157` | numeric | 157 mpv_lon | stata |
| `mpv_lat158` | numeric | 158 mpv_lat | stata |
| `mpv_lon158` | numeric | 158 mpv_lon | stata |
| `mpv_lat159` | numeric | 159 mpv_lat | stata |
| `mpv_lon159` | numeric | 159 mpv_lon | stata |
| `mpv_lat160` | numeric | 160 mpv_lat | stata |
| `mpv_lon160` | numeric | 160 mpv_lon | stata |
| `mpv_lat161` | numeric | 161 mpv_lat | stata |
| `mpv_lon161` | numeric | 161 mpv_lon | stata |
| `mpv_lat162` | numeric | 162 mpv_lat | stata |
| `mpv_lon162` | numeric | 162 mpv_lon | stata |
| `mpv_lat163` | numeric | 163 mpv_lat | stata |
| `mpv_lon163` | numeric | 163 mpv_lon | stata |
| `mpv_lat164` | numeric | 164 mpv_lat | stata |
| `mpv_lon164` | numeric | 164 mpv_lon | stata |
| `mpv_lat165` | numeric | 165 mpv_lat | stata |
| `mpv_lon165` | numeric | 165 mpv_lon | stata |
| `mpv_lat166` | numeric | 166 mpv_lat | stata |
| `mpv_lon166` | numeric | 166 mpv_lon | stata |
| `mpv_lat167` | numeric | 167 mpv_lat | stata |
| `mpv_lon167` | numeric | 167 mpv_lon | stata |
| `mpv_lat168` | numeric | 168 mpv_lat | stata |
| `mpv_lon168` | numeric | 168 mpv_lon | stata |
| `mpv_lat169` | numeric | 169 mpv_lat | stata |
| `mpv_lon169` | numeric | 169 mpv_lon | stata |
| `mpv_lat170` | numeric | 170 mpv_lat | stata |
| `mpv_lon170` | numeric | 170 mpv_lon | stata |
| `mpv_lat171` | numeric | 171 mpv_lat | stata |
| `mpv_lon171` | numeric | 171 mpv_lon | stata |
| `mpv_lat172` | numeric | 172 mpv_lat | stata |
| `mpv_lon172` | numeric | 172 mpv_lon | stata |
| `mpv_lat173` | numeric | 173 mpv_lat | stata |
| `mpv_lon173` | numeric | 173 mpv_lon | stata |
| `mpv_lat174` | numeric | 174 mpv_lat | stata |
| `mpv_lon174` | numeric | 174 mpv_lon | stata |
| `mpv_lat175` | numeric | 175 mpv_lat | stata |
| `mpv_lon175` | numeric | 175 mpv_lon | stata |
| `mpv_lat176` | numeric | 176 mpv_lat | stata |
| `mpv_lon176` | numeric | 176 mpv_lon | stata |
| `mpv_lat177` | numeric | 177 mpv_lat | stata |
| `mpv_lon177` | numeric | 177 mpv_lon | stata |
| `mpv_lat178` | numeric | 178 mpv_lat | stata |
| `mpv_lon178` | numeric | 178 mpv_lon | stata |
| `mpv_lat179` | numeric | 179 mpv_lat | stata |
| `mpv_lon179` | numeric | 179 mpv_lon | stata |
| `mpv_lat180` | numeric | 180 mpv_lat | stata |
| `mpv_lon180` | numeric | 180 mpv_lon | stata |
| `mpv_lat181` | numeric | 181 mpv_lat | stata |
| `mpv_lon181` | numeric | 181 mpv_lon | stata |
| `mpv_lat182` | numeric | 182 mpv_lat | stata |
| `mpv_lon182` | numeric | 182 mpv_lon | stata |
| `mpv_lat183` | numeric | 183 mpv_lat | stata |
| `mpv_lon183` | numeric | 183 mpv_lon | stata |
| `mpv_lat184` | numeric | 184 mpv_lat | stata |
| `mpv_lon184` | numeric | 184 mpv_lon | stata |
| `mpv_lat185` | numeric | 185 mpv_lat | stata |
| `mpv_lon185` | numeric | 185 mpv_lon | stata |
| `mpv_lat186` | numeric | 186 mpv_lat | stata |
| `mpv_lon186` | numeric | 186 mpv_lon | stata |
| `mpv_lat187` | numeric | 187 mpv_lat | stata |
| `mpv_lon187` | numeric | 187 mpv_lon | stata |
| `mpv_lat188` | numeric | 188 mpv_lat | stata |
| `mpv_lon188` | numeric | 188 mpv_lon | stata |
| `mpv_lat189` | numeric | 189 mpv_lat | stata |
| `mpv_lon189` | numeric | 189 mpv_lon | stata |
| `mpv_lat190` | numeric | 190 mpv_lat | stata |
| `mpv_lon190` | numeric | 190 mpv_lon | stata |
| `mpv_lat191` | numeric | 191 mpv_lat | stata |
| `mpv_lon191` | numeric | 191 mpv_lon | stata |
| `mpv_lat192` | numeric | 192 mpv_lat | stata |
| `mpv_lon192` | numeric | 192 mpv_lon | stata |
| `mpv_lat193` | numeric | 193 mpv_lat | stata |
| `mpv_lon193` | numeric | 193 mpv_lon | stata |
| `mpv_lat194` | numeric | 194 mpv_lat | stata |
| `mpv_lon194` | numeric | 194 mpv_lon | stata |
| `mpv_lat195` | numeric | 195 mpv_lat | stata |
| `mpv_lon195` | numeric | 195 mpv_lon | stata |
| `mpv_lat196` | numeric | 196 mpv_lat | stata |
| `mpv_lon196` | numeric | 196 mpv_lon | stata |
| `mpv_lat197` | numeric | 197 mpv_lat | stata |
| `mpv_lon197` | numeric | 197 mpv_lon | stata |
| `mpv_lat198` | numeric | 198 mpv_lat | stata |
| `mpv_lon198` | numeric | 198 mpv_lon | stata |

## `raw_data/protests/offenses_known_monthly_2019.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `ori` | character | Originating Agency Identifier (ORI, 7-char) | auto |
| `ori9` | character | Originating Agency Identifier (ORI, 9-char) | auto |
| `agency_name` | character | Law enforcement agency name | auto |
| `state` | character | State name | auto |
| `state_abb` | character | State abbreviation | auto |
| `year` | numeric | Calendar year | auto |
| `month` | character | Calendar month | auto |
| `date` | character | Date | auto |
| `number_of_months_missing` | numeric | Number of months with missing data | auto |
| `arson_number_of_months_missing` | numeric | Months missing arson data | auto |
| `arson_last_month_reported` | character | Last month arson data reported | auto |
| `last_month_reported` | character | Last month data reported | auto |
| `month_missing` | numeric | Month with missing data indicator | auto |
| `fips_state_code` | character | FIPS state code | auto |
| `fips_county_code` | character | FIPS county code | auto |
| `fips_state_county_code` | character | FIPS state-county code | auto |
| `fips_place_code` | character | FIPS place code | auto |
| `agency_type` | character | Type of law enforcement agency | auto |
| `crosswalk_agency_name` | character | Crosswalk agency name | auto |
| `census_name` | character | Census-designated agency name | auto |
| `longitude` | character | Longitude | auto |
| `latitude` | character | Latitude | auto |
| `population_group` | character | UCR population group | auto |
| `population_1` | numeric | Population group 1 | auto |
| `population_1_county` | numeric | Population group 1 (county) | auto |
| `population_2` | numeric | Population group 2 | auto |
| `population_2_county` | numeric | Population group 2 (county) | auto |
| `population_3` | numeric | Population group 3 | auto |
| `population_3_county` | numeric | Population group 3 (county) | auto |
| `population` | numeric | Population | auto |
| `country_division` | character | Country division code | auto |
| `juvenile_age` | numeric | Juvenile age threshold | auto |
| `core_city_indication` | character | Core city indicator | auto |
| `last_update` | numeric | Last update date | auto |
| `fbi_field_office` | numeric | FBI field office | auto |
| `followup_indication` | character | Follow-up indicator | auto |
| `zip_code` | numeric | ZIP code | auto |
| `date_of_last_update` | numeric | Date of last data update | auto |
| `month_included_in` | numeric | Month included in reporting | auto |
| `covered_by_ori` | character | ORI of covering agency | auto |
| `agency_count` | numeric | Number of agencies | auto |
| `special_mailing_group` | character | Special mailing group | auto |
| `special_mailing_address` | character | Special mailing address | auto |
| `first_line_of_mailing_address` | character | First line of mailing address | auto |
| `second_line_of_mailing_address` | character | Second line of mailing address | auto |
| `third_line_of_mailing_address` | character | Third line of mailing address | auto |
| `fourth_line_of_mailing_address` | character | Fourth line of mailing address | auto |
| `card_unfound_type` | character | UCR return card: unfound type | auto |
| `card_actual_type` | character | UCR return card: actual type | auto |
| `card_tot_clr_type` | character | UCR return card: tot clr type | auto |
| `card_clr_18_type` | character | UCR return card: clr 18 type | auto |
| `card_officers_type` | character | UCR return card: officers type | auto |
| `card_unfound_pt` | character | UCR return card: unfound pt | auto |
| `card_actual_pt` | character | UCR return card: actual pt | auto |
| `card_tot_clr_pt` | character | UCR return card: tot clr pt | auto |
| `card_clr_18_pt` | character | UCR return card: clr 18 pt | auto |
| `officers_killed_by_felony` | numeric | Officers killed by felony | auto |
| `officers_killed_by_accident` | numeric | Officers killed by accident | auto |
| `officers_assaulted` | numeric | Number of officers assaulted | auto |
| `actual_murder` | numeric | UCR actual offenses: murder | auto |
| `actual_manslaughter` | numeric | UCR actual offenses: manslaughter | auto |
| `actual_rape_total` | numeric | UCR actual offenses: rape total | auto |
| `actual_rape_by_force` | numeric | UCR actual offenses: rape by force | auto |
| `actual_rape_attempted` | numeric | UCR actual offenses: rape attempted | auto |
| `actual_robbery_total` | numeric | UCR actual offenses: robbery total | auto |
| `actual_robbery_with_a_gun` | numeric | UCR actual offenses: robbery with a gun | auto |
| `actual_robbery_with_a_knife` | numeric | UCR actual offenses: robbery with a knife | auto |
| `actual_robbery_other_weapon` | numeric | UCR actual offenses: robbery other weapon | auto |
| `actual_robbery_unarmed` | numeric | UCR actual offenses: robbery unarmed | auto |
| `actual_assault_total` | numeric | UCR actual offenses: assault total | auto |
| `actual_assault_with_a_gun` | numeric | UCR actual offenses: assault with a gun | auto |
| `actual_assault_with_a_knife` | numeric | UCR actual offenses: assault with a knife | auto |
| `actual_assault_other_weapon` | numeric | UCR actual offenses: assault other weapon | auto |
| `actual_assault_unarmed` | numeric | UCR actual offenses: assault unarmed | auto |
| `actual_assault_simple` | numeric | UCR actual offenses: assault simple | auto |
| `actual_burg_total` | numeric | UCR actual offenses: burg total | auto |
| `actual_burg_force_entry` | numeric | UCR actual offenses: burg force entry | auto |
| `actual_burg_nonforce_entry` | numeric | UCR actual offenses: burg nonforce entry | auto |
| `actual_burg_attempted` | numeric | UCR actual offenses: burg attempted | auto |
| `actual_theft_total` | numeric | UCR actual offenses: theft total | auto |
| `actual_mtr_veh_theft_total` | numeric | UCR actual offenses: mtr veh theft total | auto |
| `actual_mtr_veh_theft_car` | numeric | UCR actual offenses: mtr veh theft car | auto |
| `actual_mtr_veh_theft_truck` | numeric | UCR actual offenses: mtr veh theft truck | auto |
| `actual_mtr_veh_theft_other` | numeric | UCR actual offenses: mtr veh theft other | auto |
| `actual_all_crimes` | numeric | UCR actual offenses: all crimes | auto |
| `actual_assault_aggravated` | numeric | UCR actual offenses: assault aggravated | auto |
| `actual_arson_single_occupancy` | numeric | UCR actual offenses: arson single occupancy | auto |
| `actual_arson_other_residential` | numeric | UCR actual offenses: arson other residential | auto |
| `actual_arson_storage` | numeric | UCR actual offenses: arson storage | auto |
| `actual_arson_industrial` | numeric | UCR actual offenses: arson industrial | auto |
| `actual_arson_other_commercial` | numeric | UCR actual offenses: arson other commercial | auto |
| `actual_arson_community_public` | numeric | UCR actual offenses: arson community public | auto |
| `actual_arson_all_oth_structures` | numeric | UCR actual offenses: arson all oth structures | auto |
| `actual_arson_total_structures` | numeric | UCR actual offenses: arson total structures | auto |
| `actual_arson_motor_vehicles` | numeric | UCR actual offenses: arson motor vehicles | auto |
| `actual_arson_other_mobile` | numeric | UCR actual offenses: arson other mobile | auto |
| `actual_arson_total_mobile` | numeric | UCR actual offenses: arson total mobile | auto |
| `actual_arson_all_other` | numeric | UCR actual offenses: arson all other | auto |
| `actual_arson_grand_total` | numeric | UCR actual offenses: arson grand total | auto |
| `actual_index_violent` | numeric | UCR actual offenses: index violent | auto |
| `actual_index_property` | numeric | UCR actual offenses: index property | auto |
| `actual_index_total` | numeric | UCR actual offenses: index total | auto |
| `tot_clr_murder` | numeric | UCR total clearances: murder | auto |
| `tot_clr_manslaughter` | numeric | UCR total clearances: manslaughter | auto |
| `tot_clr_rape_total` | numeric | UCR total clearances: rape total | auto |
| `tot_clr_rape_by_force` | numeric | UCR total clearances: rape by force | auto |
| `tot_clr_rape_attempted` | numeric | UCR total clearances: rape attempted | auto |
| `tot_clr_robbery_total` | numeric | UCR total clearances: robbery total | auto |
| `tot_clr_robbery_with_a_gun` | numeric | UCR total clearances: robbery with a gun | auto |
| `tot_clr_robbery_with_a_knife` | numeric | UCR total clearances: robbery with a knife | auto |
| `tot_clr_robbery_other_weapon` | numeric | UCR total clearances: robbery other weapon | auto |
| `tot_clr_robbery_unarmed` | numeric | UCR total clearances: robbery unarmed | auto |
| `tot_clr_assault_total` | numeric | UCR total clearances: assault total | auto |
| `tot_clr_assault_with_a_gun` | numeric | UCR total clearances: assault with a gun | auto |
| `tot_clr_assault_with_a_knife` | numeric | UCR total clearances: assault with a knife | auto |
| `tot_clr_assault_other_weapon` | numeric | UCR total clearances: assault other weapon | auto |
| `tot_clr_assault_unarmed` | numeric | UCR total clearances: assault unarmed | auto |
| `tot_clr_assault_simple` | numeric | UCR total clearances: assault simple | auto |
| `tot_clr_burg_total` | numeric | UCR total clearances: burg total | auto |
| `tot_clr_burg_force_entry` | numeric | UCR total clearances: burg force entry | auto |
| `tot_clr_burg_nonforce_entry` | numeric | UCR total clearances: burg nonforce entry | auto |
| `tot_clr_burg_attempted` | numeric | UCR total clearances: burg attempted | auto |
| `tot_clr_theft_total` | numeric | UCR total clearances: theft total | auto |
| `tot_clr_mtr_veh_theft_total` | numeric | UCR total clearances: mtr veh theft total | auto |
| `tot_clr_mtr_veh_theft_car` | numeric | UCR total clearances: mtr veh theft car | auto |
| `tot_clr_mtr_veh_theft_truck` | numeric | UCR total clearances: mtr veh theft truck | auto |
| `tot_clr_mtr_veh_theft_other` | numeric | UCR total clearances: mtr veh theft other | auto |
| `tot_clr_all_crimes` | numeric | UCR total clearances: all crimes | auto |
| `tot_clr_assault_aggravated` | numeric | UCR total clearances: assault aggravated | auto |
| `tot_clr_arson_single_occupancy` | numeric | UCR total clearances: arson single occupancy | auto |
| `tot_clr_arson_other_residential` | numeric | UCR total clearances: arson other residential | auto |
| `tot_clr_arson_storage` | numeric | UCR total clearances: arson storage | auto |
| `tot_clr_arson_industrial` | numeric | UCR total clearances: arson industrial | auto |
| `tot_clr_arson_other_commercial` | numeric | UCR total clearances: arson other commercial | auto |
| `tot_clr_arson_community_public` | numeric | UCR total clearances: arson community public | auto |
| `tot_clr_arson_all_oth_structures` | numeric | UCR total clearances: arson all oth structures | auto |
| `tot_clr_arson_total_structures` | numeric | UCR total clearances: arson total structures | auto |
| `tot_clr_arson_motor_vehicles` | numeric | UCR total clearances: arson motor vehicles | auto |
| `tot_clr_arson_other_mobile` | numeric | UCR total clearances: arson other mobile | auto |
| `tot_clr_arson_total_mobile` | numeric | UCR total clearances: arson total mobile | auto |
| `tot_clr_arson_all_other` | numeric | UCR total clearances: arson all other | auto |
| `tot_clr_arson_grand_total` | numeric | UCR total clearances: arson grand total | auto |
| `tot_clr_index_violent` | numeric | UCR total clearances: index violent | auto |
| `tot_clr_index_property` | numeric | UCR total clearances: index property | auto |
| `tot_clr_index_total` | numeric | UCR total clearances: index total | auto |
| `clr_18_murder` | numeric | UCR clearances (under 18): murder | auto |
| `clr_18_manslaughter` | numeric | UCR clearances (under 18): manslaughter | auto |
| `clr_18_rape_total` | numeric | UCR clearances (under 18): rape total | auto |
| `clr_18_rape_by_force` | numeric | UCR clearances (under 18): rape by force | auto |
| `clr_18_rape_attempted` | numeric | UCR clearances (under 18): rape attempted | auto |
| `clr_18_robbery_total` | numeric | UCR clearances (under 18): robbery total | auto |
| `clr_18_robbery_with_a_gun` | numeric | UCR clearances (under 18): robbery with a gun | auto |
| `clr_18_robbery_with_a_knife` | numeric | UCR clearances (under 18): robbery with a knife | auto |
| `clr_18_robbery_other_weapon` | numeric | UCR clearances (under 18): robbery other weapon | auto |
| `clr_18_robbery_unarmed` | numeric | UCR clearances (under 18): robbery unarmed | auto |
| `clr_18_assault_total` | numeric | UCR clearances (under 18): assault total | auto |
| `clr_18_assault_with_a_gun` | numeric | UCR clearances (under 18): assault with a gun | auto |
| `clr_18_assault_with_a_knife` | numeric | UCR clearances (under 18): assault with a knife | auto |
| `clr_18_assault_other_weapon` | numeric | UCR clearances (under 18): assault other weapon | auto |
| `clr_18_assault_unarmed` | numeric | UCR clearances (under 18): assault unarmed | auto |
| `clr_18_assault_simple` | numeric | UCR clearances (under 18): assault simple | auto |
| `clr_18_burg_total` | numeric | UCR clearances (under 18): burg total | auto |
| `clr_18_burg_force_entry` | numeric | UCR clearances (under 18): burg force entry | auto |
| `clr_18_burg_nonforce_entry` | numeric | UCR clearances (under 18): burg nonforce entry | auto |
| `clr_18_burg_attempted` | numeric | UCR clearances (under 18): burg attempted | auto |
| `clr_18_theft_total` | numeric | UCR clearances (under 18): theft total | auto |
| `clr_18_mtr_veh_theft_total` | numeric | UCR clearances (under 18): mtr veh theft total | auto |
| `clr_18_mtr_veh_theft_car` | numeric | UCR clearances (under 18): mtr veh theft car | auto |
| `clr_18_mtr_veh_theft_truck` | numeric | UCR clearances (under 18): mtr veh theft truck | auto |
| `clr_18_mtr_veh_theft_other` | numeric | UCR clearances (under 18): mtr veh theft other | auto |
| `clr_18_all_crimes` | numeric | UCR clearances (under 18): all crimes | auto |
| `clr_18_assault_aggravated` | numeric | UCR clearances (under 18): assault aggravated | auto |
| `clr_18_arson_single_occupancy` | numeric | UCR clearances (under 18): arson single occupancy | auto |
| `clr_18_arson_other_residential` | numeric | UCR clearances (under 18): arson other residential | auto |
| `clr_18_arson_storage` | numeric | UCR clearances (under 18): arson storage | auto |
| `clr_18_arson_industrial` | numeric | UCR clearances (under 18): arson industrial | auto |
| `clr_18_arson_other_commercial` | numeric | UCR clearances (under 18): arson other commercial | auto |
| `clr_18_arson_community_public` | numeric | UCR clearances (under 18): arson community public | auto |
| `clr_18_arson_all_oth_structures` | numeric | UCR clearances (under 18): arson all oth structures | auto |
| `clr_18_arson_total_structures` | numeric | UCR clearances (under 18): arson total structures | auto |
| `clr_18_arson_motor_vehicles` | numeric | UCR clearances (under 18): arson motor vehicles | auto |
| `clr_18_arson_other_mobile` | numeric | UCR clearances (under 18): arson other mobile | auto |
| `clr_18_arson_total_mobile` | numeric | UCR clearances (under 18): arson total mobile | auto |
| `clr_18_arson_all_other` | numeric | UCR clearances (under 18): arson all other | auto |
| `clr_18_arson_grand_total` | numeric | UCR clearances (under 18): arson grand total | auto |
| `clr_18_index_violent` | numeric | UCR clearances (under 18): index violent | auto |
| `clr_18_index_property` | numeric | UCR clearances (under 18): index property | auto |
| `clr_18_index_total` | numeric | UCR clearances (under 18): index total | auto |
| `unfound_murder` | numeric | UCR unfounded offenses: murder | auto |
| `unfound_manslaughter` | numeric | UCR unfounded offenses: manslaughter | auto |
| `unfound_rape_total` | numeric | UCR unfounded offenses: rape total | auto |
| `unfound_rape_by_force` | numeric | UCR unfounded offenses: rape by force | auto |
| `unfound_rape_attempted` | numeric | UCR unfounded offenses: rape attempted | auto |
| `unfound_robbery_total` | numeric | UCR unfounded offenses: robbery total | auto |
| `unfound_robbery_with_a_gun` | numeric | UCR unfounded offenses: robbery with a gun | auto |
| `unfound_robbery_with_a_knife` | numeric | UCR unfounded offenses: robbery with a knife | auto |
| `unfound_robbery_other_weapon` | numeric | UCR unfounded offenses: robbery other weapon | auto |
| `unfound_robbery_unarmed` | numeric | UCR unfounded offenses: robbery unarmed | auto |
| `unfound_assault_total` | numeric | UCR unfounded offenses: assault total | auto |
| `unfound_assault_with_a_gun` | numeric | UCR unfounded offenses: assault with a gun | auto |
| `unfound_assault_with_a_knife` | numeric | UCR unfounded offenses: assault with a knife | auto |
| `unfound_assault_other_weapon` | numeric | UCR unfounded offenses: assault other weapon | auto |
| `unfound_assault_unarmed` | numeric | UCR unfounded offenses: assault unarmed | auto |
| `unfound_assault_simple` | numeric | UCR unfounded offenses: assault simple | auto |
| `unfound_burg_total` | numeric | UCR unfounded offenses: burg total | auto |
| `unfound_burg_force_entry` | numeric | UCR unfounded offenses: burg force entry | auto |
| `unfound_burg_nonforce_entry` | numeric | UCR unfounded offenses: burg nonforce entry | auto |
| `unfound_burg_attempted` | numeric | UCR unfounded offenses: burg attempted | auto |
| `unfound_theft_total` | numeric | UCR unfounded offenses: theft total | auto |
| `unfound_mtr_veh_theft_total` | numeric | UCR unfounded offenses: mtr veh theft total | auto |
| `unfound_mtr_veh_theft_car` | numeric | UCR unfounded offenses: mtr veh theft car | auto |
| `unfound_mtr_veh_theft_truck` | numeric | UCR unfounded offenses: mtr veh theft truck | auto |
| `unfound_mtr_veh_theft_other` | numeric | UCR unfounded offenses: mtr veh theft other | auto |
| `unfound_all_crimes` | numeric | UCR unfounded offenses: all crimes | auto |
| `unfound_assault_aggravated` | numeric | UCR unfounded offenses: assault aggravated | auto |
| `unfound_arson_single_occupancy` | numeric | UCR unfounded offenses: arson single occupancy | auto |
| `unfound_arson_other_residential` | numeric | UCR unfounded offenses: arson other residential | auto |
| `unfound_arson_storage` | numeric | UCR unfounded offenses: arson storage | auto |
| `unfound_arson_industrial` | numeric | UCR unfounded offenses: arson industrial | auto |
| `unfound_arson_other_commercial` | numeric | UCR unfounded offenses: arson other commercial | auto |
| `unfound_arson_community_public` | numeric | UCR unfounded offenses: arson community public | auto |
| `unfound_arson_all_oth_structures` | numeric | UCR unfounded offenses: arson all oth structures | auto |
| `unfound_arson_total_structures` | numeric | UCR unfounded offenses: arson total structures | auto |
| `unfound_arson_motor_vehicles` | numeric | UCR unfounded offenses: arson motor vehicles | auto |
| `unfound_arson_other_mobile` | numeric | UCR unfounded offenses: arson other mobile | auto |
| `unfound_arson_total_mobile` | numeric | UCR unfounded offenses: arson total mobile | auto |
| `unfound_arson_all_other` | numeric | UCR unfounded offenses: arson all other | auto |
| `unfound_arson_grand_total` | numeric | UCR unfounded offenses: arson grand total | auto |
| `unfound_index_violent` | numeric | UCR unfounded offenses: index violent | auto |
| `unfound_index_property` | numeric | UCR unfounded offenses: index property | auto |
| `unfound_index_total` | numeric | UCR unfounded offenses: index total | auto |

## `raw_data/protests/weather_instrument_summer2020.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `geoid` | numeric | GEOID | stata |
| `year` | numeric | Calendar year | auto |
| `event` | numeric | (sum) blank | stata |
| `wth_prcp` | numeric | (sum) wth_prcp | stata |
| `prot_wth_prcp` | numeric | (sum) prot_wth_prcp | stata |
| `wth_snow` | numeric | (sum) wth_snow | stata |
| `prot_wth_snow` | numeric | (sum) prot_wth_snow | stata |
| `wth_snwd` | numeric | (sum) wth_snwd | stata |
| `prot_wth_snwd` | numeric | (sum) prot_wth_snwd | stata |
| `wth_tavg` | numeric | (mean) wth_tavg | stata |
| `prot_wth_tavg` | numeric | (mean) prot_wth_tavg | stata |
| `wth_tmin` | numeric | (mean) wth_tmin | stata |
| `prot_wth_tmin` | numeric | (mean) prot_wth_tmin | stata |
| `wth_tmax` | numeric | (mean) wth_tmax | stata |
| `prot_wth_tmax` | numeric | (mean) prot_wth_tmax | stata |
| `wth_rhav` | numeric | (mean) wth_rhav | stata |
| `prot_wth_rhav` | numeric | (mean) prot_wth_rhav | stata |
| `wth_rhmn` | numeric | (mean) wth_rhmn | stata |
| `prot_wth_rhmn` | numeric | (mean) prot_wth_rhmn | stata |
| `wth_rhmx` | numeric | (mean) wth_rhmx | stata |
| `prot_wth_rhmx` | numeric | (mean) prot_wth_rhmx | stata |
| `wth_awnd` | numeric | (mean) wth_awnd | stata |
| `prot_wth_awnd` | numeric | (mean) prot_wth_awnd | stata |
| `wth_wsf2` | numeric | (mean) wth_wsf2 | stata |
| `prot_wth_wsf2` | numeric | (mean) prot_wth_wsf2 | stata |
| `wth_wdf2` | numeric | (mean) wth_wdf2 | stata |
| `prot_wth_wdf2` | numeric | (mean) prot_wth_wdf2 | stata |
| `wth_tavg_pol2` | numeric | (mean) wth_tavg_pol2 | stata |
| `wth_tmax_pol2` | numeric | (mean) wth_tmax_pol2 | stata |
| `wth_tmin_pol2` | numeric | (mean) wth_tmin_pol2 | stata |
| `wth_avgprcp_pol2` | numeric | (mean) wth_avgprcp_pol2 | stata |
| `prot_wth_tavg_pol2` | numeric | (mean) prot_wth_tavg_pol2 | stata |
| `prot_wth_tmax_pol2` | numeric | (mean) prot_wth_tmax_pol2 | stata |
| `prot_wth_tmin_pol2` | numeric | (mean) prot_wth_tmin_pol2 | stata |
| `wth_tavg_pol3` | numeric | (mean) wth_tavg_pol3 | stata |
| `wth_tmax_pol3` | numeric | (mean) wth_tmax_pol3 | stata |
| `wth_tmin_pol3` | numeric | (mean) wth_tmin_pol3 | stata |
| `prot_wth_tavg_pol3` | numeric | (mean) prot_wth_tavg_pol3 | stata |
| `prot_wth_tmax_pol3` | numeric | (mean) prot_wth_tmax_pol3 | stata |
| `prot_wth_tmin_pol3` | numeric | (mean) prot_wth_tmin_pol3 | stata |
| `wth_avgprcp` | numeric | (mean) wth_avgprcp | stata |
| `wth_tavg_bin1` | numeric | (sum) wth_tavg_bin1 | stata |
| `wth_tmax_bin1` | numeric | (sum) wth_tmax_bin1 | stata |
| `wth_tmin_bin1` | numeric | (sum) wth_tmin_bin1 | stata |
| `prot_wth_tavg_bin1` | numeric | (sum) prot_wth_tavg_bin1 | stata |
| `prot_wth_tmax_bin1` | numeric | (sum) prot_wth_tmax_bin1 | stata |
| `prot_wth_tmin_bin1` | numeric | (sum) prot_wth_tmin_bin1 | stata |
| `wth_tavg_bin2` | numeric | (sum) wth_tavg_bin2 | stata |
| `wth_tmax_bin2` | numeric | (sum) wth_tmax_bin2 | stata |
| `wth_tmin_bin2` | numeric | (sum) wth_tmin_bin2 | stata |
| `prot_wth_tavg_bin2` | numeric | (sum) prot_wth_tavg_bin2 | stata |
| `prot_wth_tmax_bin2` | numeric | (sum) prot_wth_tmax_bin2 | stata |
| `prot_wth_tmin_bin2` | numeric | (sum) prot_wth_tmin_bin2 | stata |
| `wth_tavg_bin3` | numeric | (sum) wth_tavg_bin3 | stata |
| `wth_tmax_bin3` | numeric | (sum) wth_tmax_bin3 | stata |
| `wth_tmin_bin3` | numeric | (sum) wth_tmin_bin3 | stata |
| `prot_wth_tavg_bin3` | numeric | (sum) prot_wth_tavg_bin3 | stata |
| `prot_wth_tmax_bin3` | numeric | (sum) prot_wth_tmax_bin3 | stata |
| `prot_wth_tmin_bin3` | numeric | (sum) prot_wth_tmin_bin3 | stata |
| `wth_tavg_bin4` | numeric | (sum) wth_tavg_bin4 | stata |
| `wth_tmax_bin4` | numeric | (sum) wth_tmax_bin4 | stata |
| `wth_tmin_bin4` | numeric | (sum) wth_tmin_bin4 | stata |
| `prot_wth_tavg_bin4` | numeric | (sum) prot_wth_tavg_bin4 | stata |
| `prot_wth_tmax_bin4` | numeric | (sum) prot_wth_tmax_bin4 | stata |
| `prot_wth_tmin_bin4` | numeric | (sum) prot_wth_tmin_bin4 | stata |
| `wth_tavg_bin5` | numeric | (sum) wth_tavg_bin5 | stata |
| `wth_tmax_bin5` | numeric | (sum) wth_tmax_bin5 | stata |
| `wth_tmin_bin5` | numeric | (sum) wth_tmin_bin5 | stata |
| `prot_wth_tavg_bin5` | numeric | (sum) prot_wth_tavg_bin5 | stata |
| `prot_wth_tmax_bin5` | numeric | (sum) prot_wth_tmax_bin5 | stata |
| `prot_wth_tmin_bin5` | numeric | (sum) prot_wth_tmin_bin5 | stata |
| `wth_prcp_rain` | numeric | (sum) wth_prcp_rain | stata |
| `wth_fog` | numeric | (sum) wth_fog | stata |
| `prot_wth_fog` | numeric | (sum) prot_wth_fog | stata |
| `wth_thunder` | numeric | (sum) wth_thunder | stata |
| `prot_wth_thunder` | numeric | (sum) prot_wth_thunder | stata |
| `wth_hail` | numeric | (sum) wth_hail | stata |
| `prot_wth_hail` | numeric | (sum) prot_wth_hail | stata |
| `wth_tornado` | numeric | (sum) wth_tornado | stata |
| `prot_wth_tornado` | numeric | (sum) prot_wth_tornado | stata |
| `wth_smoke` | numeric | (sum) wth_smoke | stata |
| `prot_wth_smoke` | numeric | (sum) prot_wth_smoke | stata |
| `closest_station_id` | character | (first) closest_station_id | stata |

## `raw_data/protests/weather.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `closest_station_id` | character | Nearest NOAA weather station ID | auto |
| `DATE` | Date | Date | auto |
| `ELEMENT` | character | Weather element type | auto |
| `VALUE` | numeric | Weather observation value | auto |

## `raw_data/rosters/fuzz_match.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `GVKEY` | character | Compustat firm identifier (GVKEY) | auto |
| `ID1` | numeric | Primary identifier | auto |
| `Name` | character | Name | auto |
| `City` | character | City name | auto |
| `State` | character | State name | auto |
| `Zip` | character | ZIP code | auto |
| `sname` | character |  |  |
| `sconm` | character | Short company name | auto |
| `conm` | character | Company name | auto |
| `ein` | character | Employer Identification Number | auto |
| `city` | character | City name | auto |
| `state` | character | State name | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `loc` | character | Location identifier | auto |
| `tier` | character | Connection tier | auto |

## `raw_data/wrds/wrds_compustat_isc.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | GVKEY | stata |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |
| `in_isc` | numeric | In ISC exhibitor sample indicator | auto |

## `raw_data/wrds/wrds_compustat.dta`

| Variable | Type | Description | Source |
|----------|------|-------------|--------|
| `gvkey` | numeric | GVKEY | stata |
| `lpermno` | numeric | LPERMNO | stata |
| `lpermco` | numeric | LPERMCO | stata |
| `datadate` | numeric | Compustat data date | auto |
| `tic` | character | Ticker symbol | auto |
| `cusip` | character | CUSIP security identifier (8-digit) | auto |
| `conm` | character | Company name | auto |
| `cik` | numeric | SEC Central Index Key (CIK) | auto |
| `addzip` | character | ZIP code (alternate) | auto |
| `busdesc` | character | Business description text | auto |
| `ein` | character | Employer Identification Number | auto |
| `incorp` | character | State of incorporation | auto |
| `loc` | character | Location identifier | auto |
| `naics` | numeric | North American Industry Classification System code | auto |
| `sic` | numeric | Standard Industrial Classification code | auto |

