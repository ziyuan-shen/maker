library(rvest)
library(tidyverse)
library(jsonlite)

school_url <- "https://data.okc.gov/services/portal/api/data/records/School%20District%20Boundaries"

school_districts <- read_html(school_url)

school_districts %>% 
  html_nodes("p") %>% 
  html_text() %>% 
  fromJSON() %>% 
  saveRDS(file = "data/school_districts.rds")
