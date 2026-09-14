# Name: 10K word development — weakly connected firms
# Author: Alexander Whitefield
# Description: heatmap of police/gov word frequency in 10-K filings (weak)

rm(list = ls())

library(data.table)
library(dplyr)
library(tidyverse)
library(ggplot2)
library(lubridate)
library(viridis)
library(ggExtra)
library(tidyr)

source("scripts/config.R")

word_freq_name <- "20_APR_2022_PN_CatTermFreq_Crime.csv.gz"

### 1) identify weakly connected firms
dt <- fread(paste0(path_data, moredays_name))
dt[,Treat:= fifelse(Treat==1,T,F)]
dtshort <- dt[,.(cik,conm,group,mdy,permno,idnum,ID_abb, Et,Treat,panel,sumAR,
                 b_mkt,lsize_qtr,lprofitability_qtr,lleverage_qtr,
                 gvtexpo)]
dtshort[, gvtexpo := replace_na(gvtexpo, "Control")]
weak_ciks = unique(dtshort[group == 2,cik])

### 2) count categories of all words in 10k
dt_words_raw <- fread(paste0(path_raw_edgar, word_freq_name))

dt_words <- data.table()
for (i in weak_ciks) {
  dt_temp <- dt_words_raw[company_cik==i & report_type == "10-K",.(report_filing_date,company_cik,company_name,total_terms,police_terms,government_terms)]
  dt_words <- rbind(dt_words,dt_temp)
}

clean_name <- function(n) {
  output <- gsub("\\s*\\([^\\)]+\\)","",as.character(n))
  output <- toupper(output)
}

dt_words[,date := as_date(report_filing_date)]
dt_words[,cik := as.character(company_cik)]
dt_words[,company := clean_name(company_name)]
dt_words[,year := year(date)]
dt_words[,gov_words := government_terms]
dt_words[,police_words := police_terms]
dt_words[,police_words_pct := 100*(police_terms/total_terms)]
dt_words[,gov_words_pct := 100*(government_terms/total_terms)]

### 3) plots
dt_plot <- dt_words[date >= as_date("2009-12-31")]
for (y in unique(dt_plot$year)) {
  dt_plot[year==y, gov_words_pct_median := median(dt_plot[year==y,gov_words_pct])]
  dt_plot[year==y, police_words_pct_median := median(dt_plot[year==y,police_words_pct])]
  dt_plot[year==y, gov_words_median := as.numeric(median(dt_plot[year==y,gov_words]))]
  dt_plot[year==y, police_words_median := as.numeric(median(dt_plot[year==y,police_words]))]
}
dt_plot[,police_words_pct_above_median:= fifelse(police_words_pct>police_words_pct_median,"X","")]
dt_plot[,police_words_above_median:= fifelse(police_words>police_words_median,"X","")]

df <- data.frame(dt_plot)
col1 = "white"
col2 = "pink"

png(paste0(path_figures, "police_words_norm_heatmap_weak.png"),units="px", width=3000, height=1600, res=150)
ggplot(df, aes(year, company)) + geom_tile(aes(fill = police_words_pct),colour="white",na.rm = TRUE) +
  scale_fill_gradient(low = col1, high = col2) +
  guides(fill=guide_legend(title="Police terms")) +
  theme_bw() + theme_minimal() +
  labs(title = "Intensity of police terms in 10k",
       x = "Year", y = "Company") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  geom_text(aes(year,company ,label=police_words_pct_above_median),color="black",size=4)
dev.off()

cat("Wrote", paste0(path_figures, "police_words_norm_heatmap_weak.png"), "\n")
