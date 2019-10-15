library(jsonlite)

fire_url <- "https://data.okc.gov/services/portal/api/data/records/Fire%20Stations"

fire_stations <- read_json(fire_url)

saveRDS(fire_stations, file = "data/fire_stations.rds")
