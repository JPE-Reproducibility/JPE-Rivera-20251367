# 98_generate_codebook.R — Auto-generate variable codebook from .dta files
#
# Extracts: dataset name, variable name, Stata label (= description), type
# Outputs: codebook.csv.gz (machine-readable) + CODEBOOK.md (human-readable)
#
# Usage (from replication/ root):
#   Rscript scripts/98_generate_codebook.R

library(haven)
library(data.table)

extract_metadata <- function(path) {
  tryCatch({
    df <- read_dta(path, n_max = 0)
    if (ncol(df) == 0) return(NULL)

    labs <- sapply(df, function(x) {
      l <- attr(x, "label")
      if (is.null(l)) "" else l
    })

    types <- sapply(df, function(x) {
      cl <- class(x)
      cl <- cl[cl != "haven_labelled"]
      paste(cl, collapse = ",")
    })

    data.table(
      dataset = path,
      variable = names(df),
      label = unname(labs),
      type = unname(types)
    )
  }, error = function(e) {
    message("  FAIL: ", path, " — ", e$message)
    NULL
  })
}

message("=== Scanning .dta files ===")
dta_files <- sort(c(
  list.files("cleaned_data", pattern = "\\.dta$", recursive = TRUE, full.names = TRUE),
  list.files("raw_data", pattern = "\\.dta$", recursive = TRUE, full.names = TRUE)
))
message("Found ", length(dta_files), " .dta files")

results <- list()
for (i in seq_along(dta_files)) {
  f <- dta_files[i]
  message(sprintf("  [%d/%d] %s", i, length(dta_files), f))
  results[[i]] <- extract_metadata(f)
}

codebook <- rbindlist(results, use.names = TRUE, fill = TRUE)
message("\nTotal variables: ", nrow(codebook))
message("Datasets with labels: ", codebook[label != "", uniqueN(dataset)],
        " / ", codebook[, uniqueN(dataset)])

fwrite(codebook, "codebook.csv.gz")
message("Wrote codebook.csv.gz")

# Generate markdown summary
md <- character()
md <- c(md, "# Variable Codebook", "",
        paste0("Generated: ", Sys.time()), "",
        paste0("Total datasets: ", codebook[, uniqueN(dataset)]),
        paste0("Total variables: ", nrow(codebook)), "")

datasets <- codebook[, unique(dataset)]
for (ds in datasets) {
  sub <- codebook[dataset == ds]
  md <- c(md, paste0("## `", ds, "`"), "",
          "| Variable | Type | Description |",
          "|----------|------|-------------|")
  for (j in seq_len(nrow(sub))) {
    desc <- sub$label[j]
    if (is.na(desc) || desc == "") desc <- ""
    md <- c(md, paste0("| `", sub$variable[j], "` | ", sub$type[j], " | ", desc, " |"))
  }
  md <- c(md, "")
}

writeLines(md, "CODEBOOK.md")
message("Wrote CODEBOOK.md")
message("=== Done ===")
