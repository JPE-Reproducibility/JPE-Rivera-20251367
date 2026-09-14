# 00_setup.R — install R packages required for the replication pipeline.
# Run once, before any other R script.
#
# Usage:
#   Rscript scripts/00_setup.R
# or, from an R session started in the replication/ root:
#   source("scripts/00_setup.R")
#
# This script exits with a non-zero status if any required package fails to
# install or load, so a failed setup cannot be mistaken for a successful one.
#
# ---------------------------------------------------------------------------
# Exact package versions used for JPE replication (R 4.x)
# ---------------------------------------------------------------------------
pkg_versions <- c(
    "data.table"  = "1.18.0",
    "dplyr"       = "1.1.4",
    "tidyr"       = "1.3.2",
    "tidyverse"   = "2.0.0",
    "ggplot2"     = "4.0.1",
    "lubridate"   = "1.9.4",
    "readxl"      = "1.4.5",
    "haven"       = "2.5.5",
    "xtable"      = "1.8-8",
    "remotes"     = "2.5.0",
    "mvtnorm"     = "1.3-6",
    "viridis"     = "0.6.5",
    "ggExtra"     = "0.11.0",
    "janitor"     = "2.2.1",
    "sf"          = "1.0-24",
    "synthdid"    = "0.0.9",
    "fedmatch"    = "2.1.0",
    "stringdist"  = "0.9.17"
)

cran_pkgs <- c(
    "data.table",
    "dplyr",
    "tidyr",
    "tidyverse",   # includes readr, ggplot2, purrr, stringr, tibble, forcats
    "ggplot2",     # loaded directly by several scripts
    "lubridate",
    "readxl",
    "haven",
    "xtable",
    "remotes",     # lighter than devtools; only used to install synthdid
    "mvtnorm",     # synthdid dependency — must be present before synthdid
    "viridis",
    "ggExtra",
    "janitor",
    "sf",
    "fedmatch",
    "stringdist"   # fedmatch backend; maxDist ties are version-sensitive
)

installed <- rownames(installed.packages())
missing   <- setdiff(cran_pkgs, installed)

if (length(missing) > 0) {
    message("Installing CRAN packages: ", paste(missing, collapse = ", "))
    install.packages(missing, repos = "https://cloud.r-project.org")
} else {
    message("All CRAN packages already installed.")
}

# install.packages() only warns on failure, so check explicitly.
still_missing <- setdiff(cran_pkgs, rownames(installed.packages()))
if (length(still_missing) > 0) {
    stop("CRAN installation failed for: ", paste(still_missing, collapse = ", "),
         "\nInstall these manually, then re-run this script.")
}

# synthdid is not on CRAN; install it from GitHub. mvtnorm is a synthdid
# dependency and is installed from CRAN above, before this runs.
if (!requireNamespace("synthdid", quietly = TRUE)) {
    message("Installing synthdid from GitHub...")
    remotes::install_github("synth-inference/synthdid")
} else {
    message("synthdid already installed.")
}

# ---------------------------------------------------------------------------
# Verify every package actually loads. A package can install but fail to load
# when a system library is missing (sf/GDAL is the usual culprit), so this is
# checked separately from installation.
# ---------------------------------------------------------------------------
all_pkgs <- c(cran_pkgs, "synthdid")
failed   <- all_pkgs[!vapply(all_pkgs,
                             function(p) requireNamespace(p, quietly = TRUE),
                             logical(1))]
if (length(failed) > 0) {
    stop("The following required packages are installed but will not load: ",
         paste(failed, collapse = ", "),
         "\nThe pipeline cannot run until this is resolved.")
}

# ---------------------------------------------------------------------------
# Version checks — warn if installed versions differ from those used in the
# published replication.  This does NOT block execution.
# ---------------------------------------------------------------------------
ip <- installed.packages()
for (pkg in names(pkg_versions)) {
    if (pkg %in% rownames(ip)) {
        v_installed <- as.character(ip[pkg, "Version"])
        v_expected  <- pkg_versions[pkg]
        if (v_installed != v_expected) {
            warning(sprintf(
                "Package '%s' version mismatch: installed %s, replication used %s",
                pkg, v_installed, v_expected
            ))
        }
    } else {
        warning(sprintf("Package '%s' is not installed.", pkg))
    }
}

message("R setup complete.")
