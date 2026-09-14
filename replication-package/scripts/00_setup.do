********************************************************************************
* 00_setup.do — install Stata packages required for the replication pipeline.
* Run once, before any other .do script.
*
* Prerequisites:
*   - Stata 16 or higher (gzimport uses Stata's built-in Python integration)
*   - Python 3 reachable by Stata (see `help python` if Stata can't find it)
*
* Usage (from the replication/ root):
*   do scripts/00_setup.do
*
* --------------------------------------------------------------------------
* Exact package versions used for JPE replication (StataNow 19.5)
* --------------------------------------------------------------------------
*   estout        3.33        (23mar2026, Ben Jann)
*   reghdfe       6.13.1      (10jan2026)
*   ftools        2.50.0      (09jan2026)
*   ivreg2        4.1.12      (14aug2024)
*   ranktest      2.0.04      (21sept2020)
*   pdslasso      1.3         (29july2020, pkg 1.0.03 04sept2018)
*   lassopack     1.4.3       (lasso2 1.0.13, cvlasso 1.0.13, rlasso 1.0.11)
*   distinct      1.2.1       (01mar2012, NJC)
*   winsor        1.3.0       (20feb2002, NJC)
*   numdate       1.5.3       (12sept2017, NJC)
*   geodist       1.1.0       (18jun2019, Robert Picard)
*   sencode       —           (24sept2013, Roger Newson)
*   gzimport      1.10        (13sept2021, Michael Droste)
*   require       1.3.1       (19sep2023)
*
* Note: SSC does not support pinned-version installs. If results differ,
*       check that your installed versions match the list above.
* --------------------------------------------------------------------------
********************************************************************************

* --- SSC packages ---
local ssc_pkgs estout reghdfe ftools ivreg2 ranktest pdslasso lassopack distinct winsor numdate geodist sencode

foreach p of local ssc_pkgs {
    capture which `p'
    if _rc {
        display as text "Installing `p' from SSC..."
        ssc install `p', replace
    }
    else {
        display as text "`p' already installed."
    }
}

* --- require (reghdfe dependency manager) ---
capture which require
if _rc {
    display as text "Installing require from SSC..."
    ssc install require, replace
}
else {
    display as text "require already installed."
}

* --- ivfas (Masten & Poirier 2020 replication, from local code) ---
* ivfas is bundled in raw_data/protests/MastenPoirier_2020_FAS_replication_files/code/
* No manual install needed — analysis_fas.do loads it via `adopath +`

* --- gzimport (not on SSC, pulled from GitHub) ---
capture which gzimport
if _rc {
    display as text "Installing gzimport from GitHub..."
    net install gzimport, from(https://raw.githubusercontent.com/mdroste/stata-gzimport/master/) replace
}
else {
    display as text "gzimport already installed."
}

display as result "Stata setup complete."
