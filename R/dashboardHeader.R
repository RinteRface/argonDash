#' Create a Boostrap 4 dashboard header
#'
#' Build an argon dashboard header
#'
#' @param ... Any element 
#' @param gradient Whether to apply a gradient effect. TRUE by default.
#' @param color Header color. See \url{https://demos.creative-tim.com/argon-design-system/index.html}.
#' 
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashHeader <- function(..., gradient = TRUE, color = NULL) {
  
  headerCl <- "header pb-8 pt-5 pt-md-8"
  if (gradient) {
    if (!is.null(color)) headerCl <- paste0(headerCl, " bg-gradient-", color)
  } else {
    if (!is.null(color)) headerCl <- paste0(headerCl, " bg-", color)
  }
    
  shiny::tags$div(
    class = headerCl,
    shiny::tags$div(
      class = "container-fluid",
      shiny::tags$div(
        class = "header-body",
        ...
      )
    )
  )
  
}