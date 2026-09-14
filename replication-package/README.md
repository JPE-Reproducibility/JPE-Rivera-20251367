# Data and Code for: Market Response to Racial Uprisings

**Authors:** Bocar A. Ba (Duke and NBER), Roman Rivera (Georgetown and NBER), Alexander Whitefield (Wharton)

**Paper:** "Market Response to Racial Uprisings"

**Journal:** *Journal of Political Economy*

---

## Overview

This replication package reproduces all tables, figures, and in-text statistics in the paper and online appendix. The pipeline cleans raw data, estimates synthetic difference-in-differences (SDID) models, and produces all exhibits.

`master.do` runs **88 scripts** (Stata `.do` and R) in 5 stages. Two further
scripts install dependencies (`scripts/00_setup.do`, `scripts/00_setup.R`) and are
run once beforehand; `scripts/config.do`, `scripts/config.R`, and
`scripts/helper_funcs.R` are sourced by the others rather than run directly.

Reproducing the full set of exhibits requires the licensed and author-collected
inputs described under Data Availability below, which are not part of the public
deposit. See that section for what each script needs.

## Data Availability and Provenance Statement

### Summary

This package exists in two forms:

1. **Verification copy** — provided to the JPE Data Editor for the reproducibility
   check. It contains every raw input, including licensed and author-collected
   data, so the pipeline runs end to end without any additional downloads.
2. **Public deposit** — the publicly archived version. Licensed vendor extracts
   and author-collected data are **not** included in it, for the reasons given
   under "Right to publish" below. Public-source inputs, all code, and all
   outputs are included.

The table below marks each dataset accordingly. Scripts that consume a withheld
dataset cannot be run from the public deposit alone; the "How to obtain"
column states what a user needs in order to reconstruct each input.

### Right to use the data

The authors obtained every input lawfully, as follows:

- **Subscription/licensed sources.** CRSP, Compustat, the WRDS Beta Suite,
  Fama-French factors, and I/B/E/S were accessed through the authors' institutional
  Wharton Research Data Services (WRDS) subscription. ISS CEO demographics were
  obtained from ISS ESG Data: Directors Global, Orbis firm identifiers from Bureau
  van Dijk, and PitchBook company descriptions through the same WRDS subscription.
  The Bloomberg government/police client data were collected manually from a
  Bloomberg Terminal under an institutional license. All were used within the terms
  of those agreements.
- **Author-collected data.** Police1 vendor rosters, the IACP *Police Chief*
  buyers guide vendor directory, and ISC West/East exhibitor lists were compiled by
  the authors from publicly viewable conference and vendor directories. Private
  security firm classifications were hand-coded by research assistants from public
  company descriptions. The product/service categorization was collected by the
  authors via survey in May 2022.
- **Public sources.** SEC EDGAR, FRED, FBI UCR and LEOKA, BJS LEMAS, Mapping
  Police Violence, GDELT, NOAA GHCN-Daily, and U.S. Census ACS and TIGER/Line
  data are publicly available and were downloaded from the URLs listed below.
- **Third-party replication files.** Only `ivfas.ado` from the Masten & Poirier
  (2020) replication package is used, loaded via `adopath` in
  `scripts/analysis_fas.do`. See the note under that table entry.

### Right to publish or share the data

- **Licensed vendor data (CRSP, Compustat, WRDS Beta Suite, Fama-French via WRDS,
  I/B/E/S, Bloomberg, ISS, Orbis, PitchBook) may not be redistributed publicly.** The authors'
  subscription agreements permit use but not onward publication. These extracts
  are supplied to the JPE Data Editor for verification only and are excluded from
  the public deposit. Any researcher with the corresponding subscriptions can
  reconstruct them from the sources and date ranges documented below.
- **Author-collected data are likewise excluded from the public deposit.**
- **No personally identifiable information appears in the public deposit.** In the
  verification copy, the two ISC exhibitor files
  (`raw_data/private_security/iscw25_exhibitors_all_categories_{east,west}.csv.gz`)
  contain business contact fields — `email`, `phone`, and street address — as
  published in the conference exhibitor directories. These are organizational
  contact records, not personal data collected from research subjects, and no
  script in the pipeline reads these two files. The ISS file identifies
  executives only by ISS's own `iss_person_id`; it contains no names.
- **The IACP buyers guide directory contains personal contact details and is
  excluded from the public deposit.** In the verification copy,
  `raw_data/rosters/PD_atlas_rosters_Master_IACP.csv.gz` carries `Email`, `Phone`,
  and street address for roughly a third of its rows as printed in the guide, and
  some of those addresses identify named individuals rather than a company's general
  contact. The pipeline reads only `Name`, `ID1`, `City`, `State`, and `Zip` from
  this file (`scripts/0_build_fuzz_match.R:20`); no contact field is used. The
  curated crosswalk `raw_data/rosters/rosters_deduped.csv.gz` is likewise excluded
  from the public deposit; it carries street address, city, state and ZIP, but no
  email or phone.
- **The May 2022 categorization survey collected no identifying information.**
  The stored file records only `entry`, `gvkey`, `category`, and `Categorization`
  — that is, firm-level product classifications with no respondent identifier,
  demographic field, or free-text response.
- **Public-source data are redistributed** in the public deposit under the terms
  of their original providers, which permit redistribution.

### Dataset list

The following datasets were obtained under their respective terms of use:

| Dataset | Source | Location | In public deposit? | How to obtain |
|---------|--------|----------|--------------------|---------------|
| CRSP Daily/Monthly Security Files | WRDS | `raw_data/wrds/` | **No — licensed** | WRDS subscription: https://wrds-www.wharton.upenn.edu (extracted 2021–2024) |
| WRDS Beta Suite (CAPM, FF4) | WRDS | `raw_data/wrds/` | **No — licensed** | WRDS subscription: https://wrds-www.wharton.upenn.edu |
| Compustat Fundamentals (Annual, Quarterly) | WRDS | `raw_data/wrds/` | **No — licensed** | WRDS subscription: https://wrds-www.wharton.upenn.edu |
| Fama-French Monthly Factors | WRDS / Ken French | `raw_data/wrds/` | **No — licensed** | Same WRDS subscription; also public at https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html |
| I/B/E/S Analyst Consensus Recommendations | WRDS | `raw_data/ibes/` | **No — licensed** | WRDS subscription: https://wrds-www.wharton.upenn.edu |
| Bloomberg Government/Police Client Data | Bloomberg Terminal | `raw_data/bloomberg/` | **No — licensed** | No dataset-specific DOI or URL exists: the client lists were collected manually from a Bloomberg Terminal (October--November 2022). Terminal access is required to reproduce the extraction |
| ISS CEO Demographics | ISS ESG Data: Directors Global, via WRDS | `raw_data/rosters/ISS_table_ceo.csv.gz` | **No — licensed** | WRDS subscription: https://wrds-www.wharton.upenn.edu (retrieved 2024). CEO demographic indicators were derived by the authors from the ISS directors-and-officers records; the file covers 2012-01 to 2023-12 |
| Orbis Firm Identifiers (Bureau van Dijk) | Orbis, via WRDS | `raw_data/rosters/PD_atlas_rosters.xlsx` (`bvd*` columns of the `police1` sheet; also the `orbis_public` sheet) | **No — licensed** | WRDS subscription: https://wrds-www.wharton.upenn.edu (extracted January 2022). The `bvd*` columns of the `police1` sheet supply the BvD identifiers that `0a_clean_roster.do` uses to derive EINs and flag US firms. The `orbis_public` sheet ships with the package but is read by no script |
| PitchBook Company Descriptions | PitchBook, via WRDS | `raw_data/private_security/pitchbook_descriptions.csv.gz` | **No — licensed** | WRDS subscription: https://wrds-www.wharton.upenn.edu. Ships with the package but is read by no script: the merge in `company_detail_table.R` is commented out, and the firm descriptions in Tables A.13--A.14 were instead compiled by the authors from company websites |
| Police1 Vendor Rosters (PD Atlas) | Police1.com company directory | `raw_data/rosters/` | **No — author-collected** | Public: https://www.police1.com/company-directory/ — scraped by the authors 9 November 2021 |
| IACP Buyers Guide Vendor Directory | *Police Chief Magazine* (IACP) annual buyers guide | `raw_data/rosters/PD_atlas_rosters_Master_IACP.csv.gz` | **No — author-collected** | Guide public at https://www.policechiefmagazine.org/buyers/; compiled by the authors from the annual issues, 2010--2022 (12,889 listings, 6,189 unique vendors). Supplies the vendor names that `0_build_fuzz_match.R` matches against Compustat. Contains personal contact details — see the note on personally identifiable information above |
| Vendor–Compustat Name Crosswalk (deduplicated) | Author curation | `raw_data/rosters/rosters_deduped.csv.gz` | **No — author-collected** | No DOI or URL exists: the crosswalk was curated by the authors for this paper, linking police vendor names to Compustat firms. It supplies the `cluster_id`, `po_index` and `gvkey` fields that `0a_clean_roster.do:68--80` uses to identify which publicly traded firms appear in the police vendor directories |
| Private Security Firm Classifications | Author hand-coding | `raw_data/private_security/` | **No — author-collected** | No DOI or URL exists: the classifications were constructed for this paper, hand-coded by research assistants from public company descriptions |
| ISC Exhibitor Lists | ISC West/East 2025 exhibitor directories | `raw_data/private_security/` | **No — author-collected** | Public: https://www.discoverisc.com/west/en-us/2025-exhibitors/2025-exhibitor-directory/ and https://www.discoverisc.com/east/en-us/for-attendees/exhibitor-list/ — scraped by the authors in 2025. Contains business contact fields; read by no script |
| Product/Service Categorization | *Police Chief Magazine* buyers guide (category taxonomy); author coding (firm assignments) | `raw_data/categorization/` | **No — author-collected** | Taxonomy public at https://www.policechiefmagazine.org/buyers/ (buyers guide issues, 2010--2021). Firm-to-category assignments collected by the authors, May 2022; no respondent identifiers recorded |
| EDGAR 10-K Term Frequencies | SEC EDGAR / Author text analysis | `raw_data/edgar/` | Yes | Public filings: https://www.sec.gov/edgar; term extraction by the authors (2022) |
| Producer Price Index (PPI) | FRED | `raw_data/fred/` | Yes | Public: https://fred.stlouisfed.org/series/WPSFD41312 (downloaded 2022) |
| UCR Crime Statistics | FBI UCR Program | `raw_data/protests/` | Yes | Public: https://www.fbi.gov/how-we-can-help-you/more-fbi-services-and-information/ucr |
| LEOKA (Officers Killed & Assaulted) | FBI | `raw_data/protests/` | Yes | Public: https://www.fbi.gov/how-we-can-help-you/more-fbi-services-and-information/ucr |
| LEMAS (Law Enforcement Management) | BJS | `raw_data/protests/` | Yes | Public: https://bjs.ojp.gov/data-collection/law-enforcement-management-and-administrative-statistics-lemas |
| Mapping Police Violence | MPV | `raw_data/protests/` | Yes | Public: https://mappingpoliceviolence.us |
| GDELT Protest Media Coverage | GDELT Project | `raw_data/protests/` | Yes | Public: https://www.gdeltproject.org |
| NOAA Weather Data | NOAA GHCN-Daily | `raw_data/protests/get_weather/` | Yes | Public: https://www.ncei.noaa.gov/products/land-based-station/global-historical-climatology-network-daily |
| Twitter/X Daily Engagement Data | Dunivin et al. (2022) | `raw_data/twitter/` | Yes | Public: https://osf.io/ubptz/overview (collected 2020–2022) |
| U.S. Census Bureau (ACS 5-Year, 2009--2013) | American Community Survey | `raw_data/protests/county_covariates2020.csv.gz`, `raw_data/protests/census_state.csv.gz` | Yes | Public: https://data.census.gov (downloaded 2020) |
| U.S. Census Bureau (TIGER/Line) | Census Bureau geography | `raw_data/protests/get_weather/tl_2020_us_county/` | Yes | Public: https://www2.census.gov/geo/tiger/ |
| Masten & Poirier (2020) — `ivfas.ado` only | Authors of the cited paper | `raw_data/protests/MastenPoirier_2020_FAS_replication_files/code/` | Yes | Source article: https://doi.org/10.3982/QE1288. See note below |

**Note on the Masten & Poirier (2020) files.** Only the estimation routine
`ivfas.ado` is used, loaded via `adopath` in `scripts/analysis_fas.do`; it is
applied to this paper's own data (`final_lemas_2020.dta`), not to Masten and
Poirier's. Their data, output, and paper PDF have been removed from this package;
their complete replication materials should be obtained from *Quantitative
Economics* (https://doi.org/10.3982/QE1288) or from the authors of that paper.

**Original access dates:** WRDS data extracted 2021--2024, including the Orbis identifier extract of January 2022. Bloomberg data extracted 2022. Police1 company directory scraped 9 November 2021. IACP buyers guide directory compiled from the 2010--2022 issues. ISC West/East exhibitor directories scraped 2025. FRED PPI downloaded 2022. Twitter data collected 2020--2022. ISS data retrieved 2024. Census/ACS data downloaded 2020. Categorization survey May 2022.

**Note on WRDS data:** Reproducing the original data extraction requires a WRDS subscription.

### License for the data

Public-source data redistributed in this package remain subject to the terms of
their original providers, all of which permit redistribution; the URLs above
identify each provider. Licensed vendor data are not redistributed and remain
governed by the authors' WRDS, Bloomberg, and ISS agreements. Author-collected
data are not redistributed. The code in this package is licensed separately —
see `LICENSE.txt`.

**Note on weather preprocessing:** The Python and R scripts in `raw_data/protests/get_weather/` were used to match agencies to weather stations. Their outputs (`weather.dta`, `weather_instrument_summer2020.dta`) are pre-computed and included in `raw_data/protests/`. These scripts are provided for transparency; they are not called by `master.do`.

### Pre-Registration

This study was not pre-registered.

## Computational Requirements

### Software

| Software | Version | Purpose |
|----------|---------|---------|
| Stata | 16 or higher (StataSE or StataNow recommended) | Data cleaning, plotting, tables |
| R | 4.0 or higher | SDID estimation |
| Python | 3.8 or higher, reachable from Stata | Decompressing `.csv.gz` inputs via `gzimport`; weather station matching |

**Python must be reachable from Stata.** Twenty-three of the Stage 1 cleaning scripts
read `.csv.gz` inputs with `gzimport`, which decompresses them through Stata's built-in
Python integration. Only the Python standard library is used, so the main pipeline needs
no Python packages. Verify the link with `python query` before running `master.do`; if
Stata cannot find an interpreter, set one with `set python_exec`. The weather
preprocessing scripts are separate and do require third-party packages (listed below),
but `master.do` does not call them.

### Stata Packages (installed by `scripts/00_setup.do`)

estout, reghdfe, ftools, require, ivreg2, ranktest, pdslasso, lassopack, distinct, winsor, numdate, geodist, sencode, gzimport (from GitHub)

### R Packages (installed by `scripts/00_setup.R`)

From CRAN: data.table, dplyr, tidyr, tidyverse, ggplot2, lubridate, readxl, haven,
xtable, remotes, mvtnorm, viridis, ggExtra, janitor, sf, fedmatch, stringdist

From GitHub: synthdid (`synth-inference/synthdid`), installed with
`remotes::install_github()`. Version 0.0.9 was used to produce the published
results. `mvtnorm` is a `synthdid` dependency and is installed from CRAN
beforehand; installing `synthdid` fails without it.

`remotes` is used rather than `devtools`: it is far lighter and does not require the
system libraries (libgit2, libxml2) that make `devtools` fail to install on some
managed Linux images.

`scripts/00_setup.R` records the exact package versions used for the published
results, `synthdid` 0.0.9 included, and emits a warning for any version mismatch;
this does not block execution. The script **exits with a non-zero status** if any
required package fails to install or to load, so an incomplete setup cannot be
mistaken for a successful one.

### R and Python Packages for Weather Preprocessing

Listed in `raw_data/protests/get_weather/requirements_R.txt`: haven, janitor, lubridate, sf, stringr, tidyverse

Listed in `raw_data/protests/get_weather/requirements.txt`: pandas, numpy, geopandas, shapely, geopy, requests, tqdm, censusdata

### Note on the Masten & Poirier (2020) code

Only `ivfas.ado` from `raw_data/protests/MastenPoirier_2020_FAS_replication_files/code/`
is used, loaded via `adopath` in `scripts/analysis_fas.do`. No additional Stata
package is required for it. The remaining files in that folder are Masten and
Poirier's own scripts, retained for reference.

### Hardware

- **RAM:** 32 GB minimum (some intermediate daily files exceed 4 GB)
- **Disk:** ~50 GB for full package including intermediate data
- **OS:** Tested on macOS. Should work on Linux/Windows with appropriate Stata/R installations.

**Machine used for replication:** Apple M3 Ultra, 256 GB RAM, macOS 26.3, Stata 19 (StataNow), R 4.5.2. Total runtime: approximately 90 hours.

### Expected Runtime

| Stage | Description | Approximate Time |
|-------|-------------|-----------------|
| Stage 0 | Package installation | 5--10 minutes |
| Stage 1 | Data cleaning (18 scripts) | 1--2 hours |
| Stage 1b | Minority & private security cleaning (13 scripts) | 30--60 minutes |
| Stage 1c | Exploration data cleaning (3 scripts) | 10--20 minutes |
| Stage 2 | SDID estimation (23 R scripts) | a few days |
| Stage 3 | Plotting & tables (28 scripts) | 30--60 minutes |
| Stage 4 | Exploration analysis (2 scripts) | 10--20 minutes |
| Stage 5 | Convert data formats (1 R script) | 10-30 minutes, skips any file whose `.csv.gz` copy already exists |
| **Total** | | **~90 hours** |

## Variable Documentation

All variables across all datasets are documented in two formats:

- **`CODEBOOK.md`** — human-readable markdown, organized by dataset
- **`codebook.csv.gz`** — machine-readable CSV with columns: `dataset`, `variable`, `label`, `type`, `label_source`

The `label_source` column indicates provenance: `stata` (embedded Stata label from original .dta) or `auto` (auto-generated from variable name patterns and domain knowledge).

To regenerate after re-running the pipeline: `Rscript scripts/98_generate_codebook.R` then `Rscript scripts/98b_label_codebook.R`.

## Directory Structure

```
replication/
├── README.md              ← this file
├── LICENSE.txt             ← terms of use
├── CODEBOOK.md            ← variable descriptions for all datasets (human-readable)
├── codebook.csv.gz        ← variable descriptions for all datasets (machine-readable)
├── master.do               ← single-driver script (runs full pipeline)
├── master.log              ← log tracking output of master.do
├── scripts/                ← all Stata and R scripts (95 files: 88 pipeline steps,
│                              2 setup, 3 config/helper, 2 codebook utilities)
│   ├── config.do           ← Stata path definitions
│   ├── config.R            ← R path definitions
│   ├── helper_funcs.R      ← shared R estimation functions
│   ├── 00_setup.do         ← Stata package installer
│   ├── 00_setup.R          ← R package installer
│   └── ...                 ← analysis scripts (numbered by stage)
├── raw_data/               ← input datasets; see the Dataset list above for
│   │                          which source lives in which subfolder. Not
│   │                          read-only — the pipeline writes 11 files here
│   │                          (see note below)
│   ├── wrds/
│   ├── rosters/
│   ├── edgar/
│   ├── fred/
│   ├── bloomberg/
│   ├── categorization/
│   ├── ibes/
│   ├── private_security/
│   ├── twitter/
│   └── protests/
├── cleaned_data/           ← intermediate processed data
│   └── SDID/               ← SDID estimation outputs (R → Stata handoff)
└── results/                ← final output
    ├── figures/            ← PDF/PNG figures
    │   ├── minority/       ← minority-CEO SDID figures
    │   └── private_security/ ← private-security SDID figures
    ├── tables/             ← LaTeX tables
    ├── manual_tables/      ← hand-curated tables and static images
    └── exploration/        ← exploration analysis outputs
```

**Datasets have .csv.gz equivalents if not already .csv.** Stage 5 (`scripts/99_convert_to_csv.R`) writes a
`.csv.gz` copy of every `.dta` and `.xlsx` in the package, so 239 datasets are present
in both Stata's format and a non-proprietary one: 213 pairs in `cleaned_data/`, and 20
`.dta` plus 6 `.xlsx` in `raw_data/`. The `.dta` and `.xlsx` files are what the pipeline
reads; the `.csv.gz` copies are archival and no script reads them. Variables in both are
documented in `CODEBOOK.md` and `codebook.csv.gz`.

Separately, `cleaned_data/` holds 36 uncompressed `.csv` files. These are not archival
copies — they are the Stage 1 to Stage 2 handoff. The Stata cleaning scripts write them
with `export delimited` and the R estimation scripts read them with `fread`; the file
names are defined in `scripts/config.R`. Deleting them breaks Stage 2.

**`raw_data/` is not strictly read-only.** Eleven files inside it are *outputs* of the
cleaning stages: they are written by scripts `master.do` invokes, and are overwritten on
every run. They ship with the deposit so the package is usable without re-running, but a
replicator should expect them to be overwritten.

| written by | file |
|---|---|
| `scripts/0a_clean_roster.do:55` | `raw_data/wrds/wrds_compustat.dta` |
| `scripts/0_build_fuzz_match.R:64` | `raw_data/rosters/fuzz_match.dta` |
| `scripts/0a_clean_data.do:42` | `raw_data/protests/crime_2019.dta` |
| `scripts/0a_clean_data.do:69` | `raw_data/protests/leoka_2019.dta` |
| `scripts/0a_clean_data.do:109` | `raw_data/protests/lemas_2020.dta` |
| `scripts/0a_clean_data.do:139` | `raw_data/protests/mpv_xy_summer2020.dta` |
| `scripts/0a_clean_data.do:174` | `raw_data/protests/black_mpv_xy_summer2020.dta` |
| `scripts/0a_clean_data.do:207` | `raw_data/protests/gdelt_ori9_2013_2019.dta` |
| `scripts/0b_clean_weather.do:47` | `raw_data/protests/gdelt_county_mdy_summer2020.dta` |
| `scripts/0b_clean_weather.do:190` | `raw_data/protests/weather_instrument_summer2020.dta` |
| `scripts/1_clean_master.do:131` | `raw_data/protests/final_lemas_2020.dta` |


Stage 5 (`scripts/99_convert_to_csv.R`) also writes into `raw_data/`: it creates a
`.csv.gz` copy of every `.dta` and `.xlsx` found there, 26 files in all. It skips any file
whose `.csv.gz` copy already exists, and this package ships all 26, so a rerun rewrites
none of them.

Apart from those 26 and the eleven listed above, every file under `raw_data/` is a true
input and is never written to by any script.

## Packaging Note

Build the archive from the *contents* of the replication directory:

```
cd replication && zip -r ../replication_package.zip .
```

## Instructions for Replication

### Quick Start

All scripts must be run from the `replication/` root directory.

1. **Install packages** (one-time):
   ```
   stata-se -b do scripts/00_setup.do
   Rscript scripts/00_setup.R
   ```
   Then confirm Stata can reach Python with `python query` — Stage 1 reads `.csv.gz`
   inputs through it and fails without it. See Computational Requirements above.

2. **Run the full pipeline** using the master script:
   ```
   stata-se -b do master.do
   ```
   `master.do` can also be run in Stata, but needs to be run from the replication directory root.


At the end of a successful run, `master.do` verifies that every expected output
file exists and prints either `ALL EXPECTED OUTPUTS PRESENT` or a
`PIPELINE INCOMPLETE` banner listing what is missing.

> **Starting from a clean slate.** To confirm every output is regenerated rather
> than left over, delete the **files** inside `cleaned_data/` and `results/` but
> **keep the directories themselves**, including the subdirectories
> (`cleaned_data/SDID/`, `results/figures/minority/`,
> `results/figures/private_security/`, `results/tables/`, `results/exploration/`).
> No script creates its output directories, so removing them causes the run to
> abort with `r(603)` on the first write. Leave `results/manual_tables/` intact, as
> those files are hand-curated and are not produced by any script.


### Running Individual Stages

Scripts source `scripts/config.do` (Stata) or `scripts/config.R` (R) for all path
definitions. Always run from the `replication/` root.

**Stage 1 — Clean Data (Stata + R), 18 scripts:**
```
scripts/0_build_fuzz_match.R
scripts/0a_clean_roster.do
scripts/0b_clean_classification.do
scripts/0c_clean_fundamentals.do
scripts/0d_clean_customers.do
scripts/1a_clean_daily.do
scripts/1b_clean_daily_capm.do
scripts/2a_clean_monthly.do
scripts/2b_clean_main_portfolios.do
scripts/2c_clean_portfolios_placebos.do
scripts/2d_clean_portfolios.do
scripts/3a_category_rmduplicates.do
scripts/3b_clean_daily_categories_fullV4.do
scripts/4_clean_fundamentals_postGF.do
scripts/5a_clean_massshooting_smithwesson.do
scripts/5b_clean_massshooting_virtra.do
scripts/5c_clean_massshooting_vista.do
scripts/6_clean_ibes.do
```

**Stage 1b — Minority CEO & Private Security (Stata + R), 13 scripts:**
```
scripts/clean_daily_asian.do
scripts/clean_daily_black.do
scripts/clean_daily_hispanic.do
scripts/clean_daily_asian_with_placebo.do
scripts/clean_daily_black_with_placebo.do
scripts/clean_daily_hispanic_with_placebo.do
scripts/0_build_ps_manual_roster.R
scripts/1a_clean_daily_privatesecurity.do
scripts/1a_clean_daily_privatesecurity_refine.R
scripts/1a_clean_daily_privatesecurity_with_placebos.do
scripts/0_pre_clean_refine.R
scripts/1a_clean_daily_privatesecurity_isc.do
scripts/1a_clean_daily_privatesecurity_isc_refine.R
```

**Stage 1c — Exploration Data (Stata), 3 scripts:**
```
scripts/0a_clean_data.do
scripts/0b_clean_weather.do
scripts/1_clean_master.do
```

**Stage 2 — SDID Estimation (R, parallelizable), 23 scripts:**

These are independent of one another and may be run in parallel to reduce wall
time. All of them must complete before Stage 3.
```
scripts/2a_estSDID.R
scripts/3a_estSDIDgvt.R
scripts/4a_estSDIDcategory.R
scripts/4pooled_estSDIDcategory.R
scripts/5a_estSDIDlongMonthly_weighted.R
scripts/5a2_estSDIDlongMonthly_unweighted.R
scripts/6a_estSDIDmshootings.R
scripts/6b_estSDIDadl.R
scripts/11a_estSDIDfundamentals_strong.R
scripts/Appx_6a_estSDIDmshootings_smithwesson.R
scripts/Appx_6b_estSDIDmshootings_virtra.R
scripts/Appx_6c_estSDIDmshootings_vista.R
scripts/Appx_8a_estSDIDcapm.R
scripts/Appx_8b_estSDIDreturn.R
scripts/Appx_p25_2a_estSDID.R
scripts/Appx_p50_2a_estSDID.R
scripts/17_estSDID_ps.R
scripts/17_estSDID_ps_isc.R
scripts/2a_estSDID_asian_ceo.R
scripts/2a_estSDID_black_ceo.R
scripts/2a_estSDID_hisp_ceo.R
scripts/3_estSDID_ceo_placebos.R
scripts/3_estSDID_ps_placebos.R
```

**Stage 3 — Plot & Table (Stata + R), 28 scripts:**

Order matters here: `12_marketvalue.do` writes `cleaned_data/mktval.dta`, which
`11a_plotSDIDfundamentals_strong.do` merges.
```
scripts/0_timeseries.do
scripts/1_descriptives.do
scripts/2b_plotSDID.do
scripts/3b_plotSDIDgvt.do
scripts/4bpooled_plotSDIDcategory.do
scripts/6c_plotSDIDmshootings_adl.do
scripts/12_marketvalue.do
scripts/5a_plotSDIDlong_strong.do
scripts/5b_plotSDIDlong_weak.do
scripts/10a_plotSDIDlong_unwgtstrong.do
scripts/10a_plotSDIDlong_unwgtweak.do
scripts/11a_plotSDIDlong_full.do
scripts/11a_plotSDIDfundamentals_strong.do
scripts/11b_GF_plotSDIDcategory.do
scripts/Appx_6d_plodSDIDmshootings.do
scripts/Appx_7_eventstudy.do
scripts/Appx_7_eventstudy_massshooting_Firearm.do
scripts/Appx_8c_plotSDIDcapm_return.do
scripts/Appx_cuttoff_2b_plotSDID.do
scripts/Appx_descriptives_minority_ps.do
scripts/2b_plotSDID_full.do
scripts/17_plotSDID_ps.do
scripts/17_plotSDID_ps_isc.do
scripts/all_placebos_compared.do
scripts/company_detail_table.R
scripts/company_detail_table_isc.R
scripts/10k_word_dev.R
scripts/10k_word_dev_weak.R
```

**Stage 4 — Exploration Analysis (Stata), 2 scripts:**
```
scripts/analysis.do
scripts/analysis_fas.do
```

**Stage 5 — Convert data formats (R), 1 script:**
```
scripts/99_convert_to_csv.R
```


## Output-to-Exhibit Mapping

All paths below are relative to the `replication/` root.

### Main Text Figures

| Exhibit | Label | File | Script |
|---------|-------|------|--------|
| Figure 1 | `fig:BLM` | `results/manual_tables/blm_website_screenshot_short.pdf` | Static image (not generated) |
| Figure 2 | `fig:timeline` | `results/figures/v3_timeline_twitter.pdf` | `0_timeseries.do` |
| Figure 3 | `fig:preliminary_descrip` | `results/figures/v3_descrip_exret.pdf`, `results/figures/IBES_buy_diff_recommendations_strong.pdf` | `0_timeseries.do` |
| Figure 4 | `fig:dailyimpact` | `results/figures/v3_SDID_CAR_event7_21days_full_short.pdf`, `results/figures/v3_SDID_CAR_event_21days_ByEvents.pdf` | `2b_plotSDID.do` |
| Figure 5 | `fig:dailyimpact_gvtexpo` | `results/figures/v3_strong_gvt_event_21days_ByEvents.pdf`, `results/figures/v3_weak_gvt_event_21days_ByEvents.pdf` | `3b_plotSDIDgvt.do` |
| Figure 6 | `fig:car_by_product` | `results/figures/v3_SDID_CAR_Top_pooled_Products_21days.pdf`, `results/figures/v3_SDID_CAR_Bottom_pooled_Products_21days.pdf` | `4bpooled_plotSDIDcategory.do` |
| Figure 7 | `fig:placebo_mass_shooting_adl` | `results/figures/SDID_CAR_MassShooting_21days.pdf`, `results/figures/SDID_CAR_adl_21days.pdf` | `6c_plotSDIDmshootings_adl.do` |
| Figure 8 | `fig:dailyimpact_otherchannels` | `results/figures/minority/SDID_minority_21days_ByEvents.pdf`, `results/figures/private_security/SDID_ps_CAR_event.pdf` | `2b_plotSDID_full.do`, `17_plotSDID_ps.do` |
| Figure 9 | `fig:longimpact` | `results/figures/v3_SDID_CAR_long_strong.pdf`, `results/figures/v3_SDID_CAR_long_weak.pdf` | `5a_plotSDIDlong_strong.do`, `5b_plotSDIDlong_weak.do` |
| Figure 10 | `fig:postGF` | `results/figures/v3_SDID_CAR_Top_postGF_Products_21days.pdf`, `results/figures/v3_SDID_CAR_Bottom_postGF_Products_21days.pdf` | `11b_GF_plotSDIDcategory.do` |
| Figure 11 | `fig:postGF_fundamentals` | `results/figures/v3_SC_gsale.pdf`, `results/figures/v3_SC_gcogs.pdf` | `11a_plotSDIDfundamentals_strong.do` (requires `12_marketvalue.do` first) |

### Main Text Tables

| Exhibit | Label | File | Script |
|---------|-------|------|--------|
| Table 1 | `tab:descriptives` | `results/tables/v3_summary.tex` | `1_descriptives.do` |
| Table 2 | `tab:descriptives_protests` | `results/exploration/descriptives_protests.tex` | `analysis.do` |
| Table 3 | `tab:bwc_guntech` | `results/exploration/main_bwc_gunshot_IV.tex` | `analysis.do` |
| Table 4 | `tab:video_tech` | `results/exploration/main_videos_Append.tex` | `analysis.do` |

### Appendix Figures

| Exhibit | Label | File | Script |
|---------|-------|------|--------|
| Figure A.1 | `fig:strong_words_intensity` | `results/figures/police_words_norm_heatmap_strong.png` | `10k_word_dev.R` |
| Figure A.2 | `fig:weak_words_intensity1` | `results/figures/police_words_norm_heatmap_weak.png` | `10k_word_dev_weak.R` |
| Figure A.3 | `fig:analyst_rec_weak` | `results/figures/IBES_buy_diff_recommendations_weak.pdf` | `0_timeseries.do` |
| Figure A.4 | `fig:trends_byevents_sdid` | `results/figures/v3_SDID_CAR_event{0-6}_21days_full.pdf` (7 panels) | `2b_plotSDID.do` |
| Figure A.5 | `fig:SC_trends_byevents_sc` | `results/figures/v3_SC_CAR_event{0-6}_21days_full.pdf` (7 panels) | `2b_plotSDID.do` |
| Figure A.6 | `fig:trends_minority_SDID` | `results/figures/minority/SDID_minority_event{0-7}_21days.pdf` (8 panels) | `2b_plotSDID_full.do` |
| Figure A.7 | `fig:trends_privatesafety_SDID` | `results/figures/private_security/SDID_private_security_{0-7}.pdf` (8 panels) | `17_plotSDID_ps.do` |
| Figure A.8 | `fig:dailyimpact_ps_isc` | `results/figures/private_security/SDID_ps_isc_CAR_event.pdf` | `17_plotSDID_ps_isc.do` |
| Figure A.9 | `fig:trends_privatesafety_SDID_sample2` | `results/figures/private_security/SDID_private_security_isc_{0-7}.pdf` (8 panels) | `17_plotSDID_ps_isc.do` |
| Figure A.10 | `fig:dailyimpact_capm_ff4` | `results/figures/v3_SDID_capm_ff4_return_strong.pdf`, `results/figures/v3_SDID_capm_ff4_return_weak.pdf` | `Appx_8c_plotSDIDcapm_return.do` |
| Figure A.11 Panel A | `fig:dailyimpact_cutoff` | `results/figures/connected_cutoff.pdf` | `1_descriptives.do` |
| Figure A.11 Panels B–C | `fig:dailyimpact_cutoff` | `results/figures/v3_SDID_cutoff_return_strong.pdf`, `results/figures/v3_SDID_cutoff_return_weak.pdf` | `Appx_cuttoff_2b_plotSDID.do` |
| Figure A.12 | `fig:longimpact_equally` | `results/figures/v3_SDID_CAR_long_equally_strong.pdf`, `results/figures/v3_SDID_CAR_long_equally_weak.pdf` | `10a_plotSDIDlong_unwgtstrong.do`, `10a_plotSDIDlong_unwgtweak.do` |
| Figure A.13 | `fig:longimpact_summary_specifications` | `results/figures/v3_SDID_CAR_longterm_SDIDvsSC.pdf` | `11a_plotSDIDlong_full.do` |
| Figure A.14 | `fig:SC_sales_costs` | `results/figures/v3_SDID_gsale.pdf`, `results/figures/v3_SDID_gcogs.pdf` | `11a_plotSDIDfundamentals_strong.do` (requires `12_marketvalue.do` first) |
| Figure A.15 | `fig:dailyimpact_policing_eventtypes` | `results/figures/all_placebos_compared.pdf` | `all_placebos_compared.do` |
| Figure A.16 | `fig:placebo_mass_shooting_firearm` | `results/figures/SDID_CAR_MassShooting_SW_21days.pdf`, `results/figures/SDID_CAR_MassShooting_Virtra_21days.pdf`, `results/figures/SDID_CAR_MassShooting_Vista_21days.pdf` | `Appx_6d_plodSDIDmshootings.do` |
| Figure A.17 | `fig:FAS` | `results/exploration/fas_IV.pdf` | `analysis_fas.do` |

### Appendix Tables

| Exhibit | Label | File | Script |
|---------|-------|------|--------|
| Table A.1 | `tab:Topic_classification` | Hard-coded in LaTeX | N/A |
| Table A.2 | `tab:EventStudy` | `results/tables/v3_table_CAR.tex` | `Appx_7_eventstudy.do` |
| Table A.3 | `tab:EventStudy_SW` | `results/tables/v3_table_CAR_massshooting_smithwesson.tex` | `Appx_7_eventstudy_massshooting_Firearm.do` |
| Table A.4 | `tab:EventStudy_VirTra` | `results/tables/v3_table_CAR_massshooting_virtra.tex` | `Appx_7_eventstudy_massshooting_Firearm.do` |
| Table A.5 | `tab:EventStudy_Vista` | `results/tables/v3_table_CAR_massshooting_vista.tex` | `Appx_7_eventstudy_massshooting_Firearm.do` |
| Table A.6 | `tab:descriptives_minority_ps` | `results/tables/summary_minority_ps.tex` | `Appx_descriptives_minority_ps.do` |
| Table A.7 | `tab:category_firmV1` | `results/manual_tables/category_firmsV1.tex` | Hand-curated |
| Table A.8 | `tab:category_firmV2` | `results/manual_tables/category_firmsV2.tex` | Hand-curated |
| Table A.9 | `tab:SDID_SC_implementations` | `results/manual_tables/sdid_implementation_detailsV3.tex` | Hand-curated |
| Table A.10 | `tab:mass_shooting` | Hard-coded in LaTeX | N/A |
| Table A.11 | `tab:adl` | Hard-coded in LaTeX | N/A |
| Table A.12 | `tab:product_by_reform` | `results/manual_tables/product_by_reform_crime_fighting_category.tex` | Hand-curated |
| Table A.13 | `tab:ps_companies` | `results/tables/private_security_descriptions.tex` | `company_detail_table.R` |
| Table A.14 | `tab:ps_companies2` | `results/tables/private_security_desciptions_sample2.tex` | `company_detail_table_isc.R` |

### Not Produced by Script

The following exhibits are hand-curated or static and not generated by any script:
- `results/manual_tables/category_firmsV1.tex`, `results/manual_tables/category_firmsV2.tex` — hand-curated product classification tables
- `results/manual_tables/product_by_reform_crime_fighting_category.tex` — hand-curated category mapping (Table A.12)
- `results/manual_tables/sdid_implementation_detailsV3.tex` — hand-written methodological note (Table A.9)
- Table A.1 (`tab:Topic_classification`) — hard-coded in LaTeX
- Table A.10 (`tab:mass_shooting`) — hard-coded in LaTeX
- Table A.11 (`tab:adl`) — hard-coded in LaTeX
- Figure 1 — `results/manual_tables/blm_website_screenshot_short.pdf`, static screenshot

### Auxiliary Outputs (not in paper)

These files are produced by pipeline scripts but are not referenced in the manuscript:
- `results/figures/SDID_CAR_BLM_21days.pdf` — from `6c_plotSDIDmshootings_adl.do`
- `results/figures/short_SDID_CAR_GF.pdf` — from `11a_plotSDIDfundamentals_strong.do`
- `results/figures/connected_cutoff_appx.pdf` — from `Appx_cuttoff_2b_plotSDID.do`
- `results/exploration/plot_IV.pdf` — from `analysis_fas.do` (alternative version of Figure A.17 showing OLS/2SLS/IV-Lasso confidence intervals)
- `results/figures/v3_SDID_CAR_event{0-7}_21days.pdf` and
  `results/figures/v3_SC_CAR_event{0-6}_21days.pdf` (15 panels) — from `2b_plotSDID.do`,
  which exports every event panel twice, in a plain and a `_full` version. Figures 4, A.4
  and A.5 use the `_full` set; the plain set is not used in the paper.


## Data and Software Citations

Arkhangelsky, Dmitry, Susan Athey, David A. Hirshberg, Guido W. Imbens, and Stefan Wager. 2021. "Synthetic Difference-in-Differences." *American Economic Review* 111 (12): 4088--4118.

Bureau of Justice Statistics. 2020. "Law Enforcement Management and Administrative Statistics (LEMAS), 2020." U.S. Department of Justice. https://bjs.ojp.gov/data-collection/law-enforcement-management-and-administrative-statistics-lemas.

Center for Research in Security Prices (CRSP). 2024. "CRSP US Stock Databases." Wharton Research Data Services. https://wrds-www.wharton.upenn.edu.

Compustat. 2024. "Compustat North America Fundamentals Annual and Quarterly." S&P Global via Wharton Research Data Services. https://wrds-www.wharton.upenn.edu.


Fama, Eugene F., and Kenneth R. French. 2024. "Fama-French Research Portfolios and Factors." Available at https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html.

Federal Bureau of Investigation. 2019. "Uniform Crime Reporting (UCR) Program." U.S. Department of Justice. https://www.fbi.gov/how-we-can-help-you/more-fbi-services-and-information/ucr.

Federal Bureau of Investigation. 2019. "Law Enforcement Officers Killed and Assaulted (LEOKA)." U.S. Department of Justice.

Federal Reserve Bank of St. Louis. 2022. "Producer Price Index by Commodity: Final Demand (WPSFD41312)." FRED. https://fred.stlouisfed.org/series/WPSFD41312.

GDELT Project. 2020. "Global Database of Events, Language, and Tone." https://www.gdeltproject.org.

I/B/E/S. 2024. "Analyst Consensus Recommendations." Thomson Reuters via Wharton Research Data Services. https://wrds-www.wharton.upenn.edu.

Institutional Shareholder Services (ISS). 2024. "ISS ESG Data: Directors Global." Wharton Research Data Services. https://wrds-www.wharton.upenn.edu.

Mapping Police Violence. 2024. https://mappingpoliceviolence.us.

Masten, Matthew A., and Alexandre Poirier. 2020. "Inference on Breakdown Frontiers." *Quantitative Economics* 11 (1): 41--111. https://doi.org/10.3982/QE1288

National Oceanic and Atmospheric Administration. 2020. "Global Historical Climatology Network - Daily (GHCN-Daily)." https://www.ncei.noaa.gov/products/land-based-station/global-historical-climatology-network-daily.


R Core Team. 2024. "R: A Language and Environment for Statistical Computing." R Foundation for Statistical Computing, Vienna, Austria. https://www.R-project.org/.

Securities and Exchange Commission. 2022. "EDGAR Full-Text Search of 10-K Filings." https://efts.sec.gov/LATEST/search-index.

StataCorp. 2025. "Stata Statistical Software: Release 19." StataCorp LLC, College Station, TX. https://www.stata.com.

Dunivin, Z. O., H. Y. Yan, J. Ince, and F. Rojas. 2022. "Black Lives Matter Protests Shift Public Discourse." *Proceedings of the National Academy of Sciences* 119 (10): e2117320119. Data: https://osf.io/ubptz/overview.

U.S. Census Bureau. 2014. "American Community Survey 5-Year Estimates (2009--2013), Table B02001, B03003, B01001, B19013." https://data.census.gov.

U.S. Census Bureau. 2020. "TIGER/Line Shapefiles: Counties (and Equivalent), 2020." https://www2.census.gov/geo/tiger/TIGER2020/COUNTY/.

WRDS Beta Suite. 2024. "Beta Suite by WRDS." Wharton Research Data Services. https://wrds-www.wharton.upenn.edu.

## License

See `LICENSE.txt` for terms of use.
