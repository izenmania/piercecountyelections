library(data.table)
library(devtools)

turnout_daily <- fread("data-raw/daily_turnout.csv")
use_data(turnout_daily)
