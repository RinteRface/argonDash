#' Create a Boostrap 4 dashboard page
#'
#' Build an argon dashboard sidebar
#'
#' @param ... Any element such as \link{argonDashSidebar}, \link{argonSidebarMenu},
#' \link{argonSidebarMenuItem}, \link{argonSidebarHeader} and \link{argonSidebarDivider}.
#' 
#' @param id Unique sidebar id.
#' @param brand_url Sidebar brand url
#' @param brand_logo Sidebar brand logo
#' @param vertical Whether to display the sidebar in vertical mode. TRUE by default.
#' @param side Sidebar side: "right" or "left". "left" by default.
#' @param size Sidebar size: "s", "md", "lg". "md" by default.
#' @param skin Sidebar skin. "light" by default.
#' @param background Sidebar background color. See \url{https://demos.creative-tim.com/argon-design-system/index.html}.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashSidebar <- function(..., id, brand_url = NULL, brand_logo = NULL, 
                             vertical = TRUE, side = c("left", "right"), 
                             size = c("s", "md", "lg"), skin = c("light", "dark"), 
                             background = "white") {
  
  side <- match.arg(side)
  size <- match.arg(size)
  skin <- match.arg(skin)
  
  sidebarCl <- "navbar"
  if (vertical) {
    sidebarCl <- paste0(sidebarCl, " navbar-vertical")
  } else {
    sidebarCl <- paste0(sidebarCl, " navbar-horizontal")
  }
  if (!is.null(side)) sidebarCl <- paste0(sidebarCl, " fixed-", side)
  if (!is.null(size)) sidebarCl <- paste0(sidebarCl, " navbar-expand-", size)
  if (!is.null(skin)) sidebarCl <- paste0(sidebarCl, " navbar-", skin)
  if (!is.null(background)) sidebarCl <- paste0(sidebarCl, " bg-", background)
  
  shiny::tags$nav(
    class = sidebarCl,
    id = id,
    shiny::tags$div(
      class = "container-fluid",
      # sidebar trigger
      shiny::tags$button(
        `aria-control` = id,
        `aria-expanded` = "false",
        `aria-label` = "Toggle navigation",
        class = "navbar-toggler collapsed",
        `data-target` = "#sidenav-collapse-main",
        `data-toggle` = "collapse",
        type = "button"
      ),
      # Brand
      shiny::a(
        class = "navbar-brand pt-0",
        href = brand_url,
        shiny::img(class = "navbar-brand-img", src = brand_logo)
      ),
      # Main content
      shiny::tags$div(
        class = "collapse navbar-collapse", 
        id = "sidenav-collapse-main",
        ...
      )
    )
  )
}



#' Create a Boostrap 4 argon sidebar menu
#'
#' Build an argon dashboard main sidebar menu
#'
#' @param ... Slot for \link{argonSidebarMenuItem}.
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonSidebarMenu <- function(...) {
  shiny::tags$ul(class = "navbar-nav", ...)
}



#' Create a Boostrap 4 argon sidebar menu
#'
#' Build an argon dashboard main sidebar menu
#'
#' @param ... Item name.
#' @param tabName Should correspond exactly to the tabName given in \code{\link{argonTabItem}}.
#' @param icon Item icon. 
#' @param icon_color Icon color.
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonSidebarMenuItem <- function(..., tabName = NULL, icon = NULL,
                                 icon_color = NULL) {
  
  iconCl <- "ni"
  if(!is.null(icon)) iconCl <- paste0(iconCl, " ni-", icon)
  if(!is.null(icon_color)) iconCl <- paste0(iconCl, " text-", icon_color)
  
  shiny::tags$li(
    class = "nav-item",
    shiny::tags$a(
      class = "nav-link",
      id = paste0("tab-", tabName),
      href = paste0("#shiny-tab-", tabName),
      `data-toggle` = "tab",
      `data-value` = tabName,
      shiny::tags$i(class = iconCl),
      ...
    )
  )
}



#' A header to put inside \link{argonDashSidebar}
#' 
#' @param title Header title
#'
#' @export
argonSidebarHeader <- function(title = NULL) {
  shiny::tags$h6(class = "navbar-heading text-muted", title)
}


#' A divider to put inside \link{argonDashSidebar}
#'
#' @export
argonSidebarDivider <- function() {
  shiny::tags$hr(class = "my-3")
}