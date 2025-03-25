#' Create a Boostrap 5 dashboard header
#'
#' Build an argon dashboard header
#'
#' @param height Header height.
#' @param color Background color.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashHeader <- function(height = 300, color = "dark") {
  div(
    class = sprintf(
      "min-height-%s bg-%s position-absolute w-100",
      height,
      color
    )
  )
}
