library(rvest)

url <- "http://www.tornadohistoryproject.com/tornado/Oklahoma/1998/table"
ok_tor <- read_html(url)

# get entire table, look in Chrome Developer Tools for table ID
ok_tor_1998 <- ok_tor %>% 
  html_nodes("#results") %>% 
  html_table()

saveRDS(ok_tor_1998, file = "data/ok_tor.rds")

