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

#' The most recent Pierce County election precinct data and shapes (currently from 2018)
#'
#' Identifying information, political unit information (congressional, legislative, and county
#' council districts) and polygon geometry for all election precincts in Pierce County.
#'
#' @format A data frame of class sf, with 530 features, 8 data attributes and one list of geometry
#' \describe{
#'   \item{object_id}{A unique identifier of the feature}
#'   \item{precinct}{A five digit code identifiying the precinct}
#'   \item{name}{The formal identifier of the precinct, separating the legislative code and the three-digit identifier}
#'   \item{legislative}{The Washington legislative district of this precinct}
#'   \item{congressional}{The US congressional district of this precinct}
#'   \item{county_council}{The Pierce County council district of this precinct}
#'   \item{area}{The geometry's area in projected units (feet)}
#'   \item{geometry}{A list field of the precinct's projected geometry}
#' }
#' @source \url{http://gisdata-piercecowa.opendata.arcgis.com/datasets/election-precincts}
"election_precincts"
