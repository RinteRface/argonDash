#' Create a Boostrap 4 dashboard sidebar
#'
#' Build an argon dashboard sidebar
#'
#' @param ... Any element such as \link{argonDashSidebar}, \link{argonSidebarMenu},
#' \link{argonSidebarItem}, \link{argonSidebarHeader} and \link{argonSidebarDivider}.
#'
#' @param id Unique sidebar id.
#' @param dropdownMenus Slot for dropdown menus. Not displayd on large screens.
#' @param brand_url Sidebar brand url
#' @param brand_logo Sidebar brand logo
#' @param size Sidebar size: "s", "md", "lg". "md" by default.
#' @param skin Sidebar skin. "light" by default.
#' @param color Links color.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashSidebar <- function(
  ...,
  dropdownMenus = NULL,
  id,
  brand_url = NULL,
  brand_logo = NULL,
  side = c("start", "end"),
  skin = c("default", "white"),
  color = c("primary", "dark", "info", "success", "warning", "danger")
) {
  side <- match.arg(side)
  skin <- match.arg(skin)
  color <- match.arg(color)

  sidebarCl <- "sidenav navbar navbar-vertical navbar-expand-xs border-radius-xl my-3 ms-4"
  if (!is.null(side)) sidebarCl <- paste0(sidebarCl, " fixed-", side)
  if (!is.null(skin)) sidebarCl <- paste0(sidebarCl, " bg-", skin)

  items <- list(...)
  items <- htmltools::tagQuery(items)$find(".nav-link")$addAttrs(
    class = sprintf("bg-gradient-%s", color)
  )$allTags()

  shiny::tags$aside(
    class = sidebarCl,
    id = id,
    # Brand
    div(
      class = "sidenav-header",
      shiny::a(
        class = "navbar-brand m-0",
        href = brand_url,
        target = "_blank",
        shiny::img(class = "navbar-brand-img h-100", src = brand_logo)
      ),
    ),
    argonSidebarDivider(),
    # Main content
    shiny::tags$div(
      class = "collapse navbar-collapse w-auto",
      id = "sidenav-collapse-main",
      argonSidebarMenu(items)
    ),
    # Footer
    div(
      class = "sidenav-footer mx-3",
      "Sidebar footer"
    )
  )
}


#' Create a Boostrap 4 argon sidebar menu
#'
#' Build an argon dashboard main sidebar menu
#'
#' @param ... Slot for \link{argonSidebarItem}.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonSidebarMenu <- function(...) {
  shiny::tags$ul(
    class = "navbar-nav",
    ...
  )
}


#' Create a Boostrap 4 argon sidebar menu
#'
#' Build an argon dashboard main sidebar menu
#'
#' @param ... Item name.
#' @param tabName Should correspond exactly to the tabName given in \code{\link{argonTabItem}}.
#' @param icon Item icon. \link[argonR]{argonIcon} or \link[shiny]{icon}.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonSidebarItem <- function(..., tabName = NULL, icon = NULL) {
  tags$li(
    class = "nav-item",
    shiny::tags$a(
      class = "nav-link",
      id = paste0("tab-", tabName),
      href = paste0("#shiny-tab-", tabName),
      `data-bs-toggle` = "tab",
      `data-value` = tabName,
      div(
        class = "icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center",
        icon
      ),
      span(class = "nav-link-text ms-1", ...)
    )
  )
}


#' A header to put inside \link{argonDashSidebar}
#'
#' @param title Header title
#'
#' @export
argonSidebarHeader <- function(title) {
  shiny::tags$li(
    class = "nav-item mt-3",
    tags$h6(
      class = "ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6",
      title
    )
  )
}


#' A divider to put inside \link{argonDashSidebar}
#'
#' @export
argonSidebarDivider <- function() {
  shiny::tags$hr(class = "horizontal dark mt-0")
}
