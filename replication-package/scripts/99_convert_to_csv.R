# 99_convert_to_csv.R — Export all .dta and .xlsx files to .csv.gz
#
# JPE requires non-proprietary format (CSV/ASCII) for all data files.
# Walks cleaned_data/ and raw_data/, converts every .dta and .xlsx to
# .csv.gz alongside the original.
#
# Run AFTER the full pipeline completes.
#
# Usage (from replication/ root):
#   Rscript scripts/99_convert_to_csv.R

library(haven)
library(readxl)
library(data.table)

convert_dta <- function(path) {
  outpath <- sub("\\.dta$", ".csv.gz", path)
  if (file.exists(outpath)) {
    message("  SKIP: ", outpath)
    return(invisible(NULL))
  }
  tryCatch({
    dt <- as.data.table(read_dta(path))
    fwrite(dt, outpath)
    message("  OK: ", outpath)
  }, error = function(e) {
    message("  FAIL: ", path, " — ", e$message)
  })
}

convert_xlsx <- function(path) {
  outpath <- sub("\\.xlsx$", ".csv.gz", path)
  if (file.exists(outpath)) {
    message("  SKIP: ", outpath)
    return(invisible(NULL))
  }
  tryCatch({
    dt <- as.data.table(read_excel(path))
    fwrite(dt, outpath)
    message("  OK: ", outpath)
  }, error = function(e) {
    message("  FAIL: ", path, " — ", e$message)
  })
}

message("\n=== Finding .dta files ===")
dta_files <- list.files(c("cleaned_data", "raw_data"),
                        pattern = "\\.dta$",
                        recursive = TRUE,
                        full.names = TRUE)
message("Found ", length(dta_files), " .dta files")

message("\n=== Finding .xlsx files ===")
xlsx_files <- list.files("raw_data",
                         pattern = "\\.xlsx$",
                         recursive = TRUE,
                         full.names = TRUE)
message("Found ", length(xlsx_files), " .xlsx files")

message("\n=== Converting .dta → .csv.gz ===")
for (f in dta_files) convert_dta(f)

message("\n=== Converting .xlsx → .csv.gz ===")
for (f in xlsx_files) convert_xlsx(f)

message("\n=== Done ===")
