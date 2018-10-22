#' @title Launch the argonDash Gallery
#'
#' @description A gallery of all components available in argonDash.
#' @export
#'
#' @examples
#'
#' if (interactive()) {
#'
#'  argonDashGallery()
#'
#' }
argonDashGallery <- function() { # nocov start
  if (!requireNamespace(package = "magrittr"))
    message("Package 'magrittr' is required to run this function")
  
  shiny::shinyAppFile(
    system.file(
      paste0("examples/app.R"), 
      package = 'argonDash', 
      mustWork = TRUE
    )
  )
}