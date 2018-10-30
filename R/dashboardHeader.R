#' Create a Boostrap 4 dashboard header
#'
#' Build an argon dashboard header
#'
#' @param ... Any element 
#' @param gradient Whether to apply a gradient effect. TRUE by default.
#' @param color Header color. See \url{https://demos.creative-tim.com/argon-design-system/docs/foundation/colors.html}.
#' @param separator Header bottom separator. FALSE by default.
#' @param separator_color Separator color. "secondary" by default. See \url{https://demos.creative-tim.com/argon-design-system/docs/foundation/colors.html}.
#' @param bottom_padding Bottom padding. 4 by default.
#' @param top_padding Bottom padding. 6 by default.
#' @param background_img Background image url or path.
#' @param mask Whether to add an opacity mask on the header. FALSE by default
#' @param opacity Mask opacity. Between 0 and 8. Only if mask is TRUE.
#' @param height Header height. 600px by default. Only if background image.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashHeader <- function(..., gradient = TRUE, color = NULL, separator = FALSE, 
                            separator_color = "secondary", bottom_padding = 4, 
                            top_padding = 6, background_img = NULL, mask = FALSE,
                            opacity = 8, height = 600) {
  
  headerCl <- paste0("header pb-", bottom_padding, " pt-5 pt-md-", top_padding)
  if (gradient) {
    if (!is.null(color)) headerCl <- paste0(headerCl, " bg-gradient-", color)
  } else {
    if (!is.null(color)) headerCl <- paste0(headerCl, " bg-", color)
  }
  
  style <- if (!is.null(background_img)) {
    paste0("height: ", height, "px; 
            background-image: url(", background_img,"); 
           background-size: cover; 
           background-position: center top;")
  } else {
    NULL
  }
  
  shiny::tags$div(
    class = headerCl,
    style = style,
    if (mask) htmltools::tags$span(class = paste0("mask bg-gradient-default opacity-", opacity)),
    shiny::tags$div(
      class = "container-fluid align-items-center",
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