#' Create a Boostrap 4 dashboard body
#'
#' Build an argon dashboard body
#'
#' @param ... Body content, slot for \link{argonTabItems}
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashBody <- function(...) {
  shiny::tags$div(
    style = "min-height: 600px;",
    ...
  )
}



#' A container for tab items
#'
#' @param ... Items to put in the container. Each item should be a
#'   \code{\link{argonTabItem}}.
#'   
#' @export
argonTabItems <- function(...) {
  lapply(list(...), tagAssert, class = "tab-pane")
  
  shiny::tags$div(class = "tab-content", ...)
}

#' One tab to put inside a tab items container
#'
#' @param tabName The name of a tab. This must correspond to the \code{tabName}
#'   of a \code{\link{argonSidebarItem}}.
#' @param ... Contents of the tab.
#' 
#' @export
argonTabItem <- function(tabName = NULL, ...) {
  if (is.null(tabName))
    stop("Need tabName")
  
  validateTabName(tabName)
  
  shiny::tags$div(
    role = "tabpanel",
    class = "tab-pane container-fluid",
    id = paste0("shiny-tab-", tabName),
    shiny::br(),
    ...
  )
}