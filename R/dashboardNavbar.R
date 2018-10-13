#' Create a Boostrap 4 dashboard navbar
#'
#' Build an argon dashboard navbar
#'
#' @param ... Any element such as 
#' 
#' 
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashNavbar <- function(...) {
  shiny::tags$nav(
    class = "navbar navbar-top navbar-expand-md navbar-dark",
    id = "navbar-main",
    shiny::tags$div(
      class = "container-fluid",
      ...
    )
  )
} 