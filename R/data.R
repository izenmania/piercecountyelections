#' Daily turnout of voters in Pierce County fall general elections, from 2011.
#'
#' Daily turnout records of ballots returned in November general elections, 2011-2018.
#' Additional elections (primaries, special elections, and others) will be added at a later date.
#'
#' @format A data frame with 288 rows and 7 variables:
#' \describe{
#'   \item{election}{A unique identifier of the election, combining year and election type}
#'   \item{year}{A numeric year}
#'   \item{date}{The date of the individual count of ballot returns}
#'   \item{day}{A numeric distance from election day (day=0).}
#'   \item{ballots}{Total ballots counted on this day.}
#'   \item{cumulative}{Total ballots counted for this election, up to and including this day.}
#'   \item{percent}{Percentage (0-100) of the registered electorate whose ballots have been tallied.}
#' }
#' @source \url{https://www.co.pierce.wa.us/328/Elections}
"turnout_daily"
