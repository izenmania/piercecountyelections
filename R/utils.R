filter_election_years <- function(year_type="all") {
  year_groups <- list("all" = c(2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018),
                      "local" = c(2011, 2013, 2015, 2017),
                      "federal" = c(2012, 2014, 2016, 2018),
                      "presidential" = c(2012, 2016),
                      "midterm" = c(2014, 2018),
                      "mayoral" = c(2013, 2017))
  year_groups[[year_type]]
}

