library(data.table)
library(devtools)

elections <- fread("data-raw/elections.csv")
elections$date <- as.Date(elections$date)

use_data(elections, overwrite=TRUE)
