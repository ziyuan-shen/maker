library(jsonlite)

school_url <- "https://data.okc.gov/services/portal/api/data/records/School%20District%20Boundaries"

school_districts <- read_json(school_url)

saveRDS(school_districts, file = "data/school_districts.rds")
