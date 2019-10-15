library(rvest)
library(tidyverse)
library(jsonlite)

fire_url <- "https://data.okc.gov/services/portal/api/data/records/Fire%20Stations"

fire_stations <- read_html(fire_url)

fire_stations %>% 
  html_nodes("p") %>% 
  html_text() %>% 
  fromJSON() %>% 
  saveRDS(file = "data/fire_stations.rds")
