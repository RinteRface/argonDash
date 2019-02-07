#' Create a Boostrap 4 dashboard page
#'
#' Build an argon dashboard page
#'
#' @param navbar Bootstrap 4 dashboard navbar.
#' @param sidebar Bootstrap 4 dashboard main sidebar.
#' @param header Bootstrap 4 dashboard header (below the navbar). Useful to hightlight elements or
#' print a message.
#' @param body Bootstrap 4 dashboard body wrapper.
#' @param footer Bootstrap 4 dashboard footer.
#' @param title App title.
#' @param author Dashboard author.
#' @param description Dashboard purpose.
#'
#' @examples
#' if(interactive()){
#'  library(shiny)
#'  library(argonDash)
#'
#'  shiny::shinyApp(
#'    ui = argonDashPage(),
#'    server = function(input, output) {}
#'  )
#' }
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashPage <- function(title = NULL, description = NULL, author = NULL, 
                          navbar = NULL, sidebar = NULL, header = NULL, body = NULL, footer = NULL){
  
  shiny::tags$html(
    # Head
    shiny::tags$head(
      shiny::tags$meta(charset = "utf-8"),
      shiny::tags$meta(
        name = "viewport",
        content = "width=device-width, initial-scale=1, shrink-to-fit=no"
      ),
      shiny::tags$meta(name = "description", content = description),
      shiny::tags$meta(name = "author", content = author),
      shiny::tags$title(title)
    ),
    # Body
    addDeps(
      shiny::tags$body(
        sidebar,
        shiny::tags$div(
          class = "main-content",
          navbar,
          header,
          # page content
          shiny::tags$div(
            class = "container-fluid mt--1",
            body,
            footer
          )
        )
      )
    )
  )
}