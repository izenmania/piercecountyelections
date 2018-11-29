# piercecountyelections

The piercecountyelections package is a collection of data and tools built specifically
for the analysis of elections in Pierce County, WA, USA. It is currently very much a work
in progress, with a goal of being ready for use during the 2019 election cycle.

## Installation

```r
# Install from github
# install.packages("devtools")
devtools::install_github("izenmania/piercecountyelections")
```

## Contents

### Data

#### turnout_daily

A data frame of daily counts of ballots returned, including date, distance from election
day, count, cumulative count, and turnout percentage. Historical returns only go back to
2011, the year Pierce County switched to full mail-in voting.

A raw CSV for non-R use can be found at data-raw/daily_turnout.csv.

#### election_precincts

An sf object data frome of all the census-defined election precincts in the county, including
identifying information, political unit (congressional, legislative, county council) and projected
geometry.
