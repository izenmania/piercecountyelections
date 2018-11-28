#' A multi-line chart comparing multiple years of daily ballot returns
#'
#' @param years Which collection of years to view, from \code{c("all", "local", "federal", "presidential", "midterm", "mayoral")}
#' @param measure The y axis measure to use, from \code{c("cumulative", "percent")}.
#'
#' @import ggplot2
#'
#' @export
turnout_chart <- function(year_type="all", measure="percent") {
  years <- filter_election_years(year_type)

  election_subtitles <- c("all" = "All November elections since 2011.",
                          "local" = "All November local elections since 2011.",
                          "federal" = "All federal elections since 2011.",
                          "presidential" = "All presidential elections since 2011.",
                          "midterm" = "All federal midterm elections since 2011.",
                          "mayoral" = "All Tacoma mayoral elections since 2011.")

  chart <- ggplot(turnout_daily[turnout_daily$year %in% years,])

  if(measure == "percent") {
    chart <- chart + aes(x=day, y=percent, color=factor(year), alpha=(year == max(year)), size=(year == max(year)))
  } else {
    chart <- chart + aes(x=day, y=cumulative, color=factor(year), alpha=(year == max(year)), size=(year == max(year)))
  }

  chart +
    geom_line() +
    theme_minimal() +
    labs(title="Pierce County Election Turnout", subtitle=election_subtitles[year_type], color="Year", x="Days from Election", y="Total Ballots Received") +
    scale_alpha_discrete(range=c(0.5, 1.0), guide=FALSE) +
    scale_size_discrete(range=c(0.5, 1.0), guide=FALSE) +
    scale_color_brewer(type="qual", palette=6)
}
