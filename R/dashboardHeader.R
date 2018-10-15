#' Create a Boostrap 4 dashboard header
#'
#' Build an argon dashboard header
#'
#' @param ... Any element 
#' @param gradient Whether to apply a gradient effect. TRUE by default.
#' @param color Header color. See \url{https://demos.creative-tim.com/argon-design-system/index.html}.
#' @param separator Header bottom separator. FALSE by default.
#' @param separator_color Separator color. "secondary" by default. 
#' 
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashHeader <- function(..., gradient = TRUE, color = NULL, separator = FALSE, separator_color = "secondary") {
  
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
    ),
    if (separator) {
      htmltools::tags$div(
        class = "separator separator-bottom separator-skew zindex-100",
        htmltools::HTML(
          paste0(
            '<svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
            <polygon class="fill-', separator_color, '" points="2560 0 2560 100 0 100"></polygon>
            </svg>
            '
          )
        )
      )
    }
  )
  
}