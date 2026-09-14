library(tidyverse)
library(lubridate)
library(stringr)
library(janitor)
library(sf)
library(dplyr)
# SET WD TO REPLICATION
setwd('replication/raw_data/protests/get_weather')
# Import Data
final_data1<- read_csv("output/weather_over_time.csv.gz")

# Save in Stata
haven::write_dta(final_data1,"../weather.dta")

