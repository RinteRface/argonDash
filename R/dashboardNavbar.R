#' Create a Boostrap 4 dashboard navbar
#'
#' Build an argon dashboard navbar
#'
#' @param ... Any element such as \link{argonDropNav}.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDashNavbar <- function(...) {
  shiny::tags$nav(
    class = "navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl ",
    id = "navbarBlur",
    `data-scroll` = "false",
    `navbar-scroll` = "false",
    shiny::tags$div(
      class = "container-fluid py-1 px-3",
      shiny::tags$div(
        id = "navbar",
        class = "collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4",
        tags$ul(
          class = "navbar-nav justify-content-end",
          ...,
          tags$li(
            class = "nav-item ps-3 d-flex align-items-center me-auto",
            tags$a(
              href = "javascript:;",
              class = "nav-link text-white p-0",
              id = "iconNavbarSidenav",
              tags$div(
                class = "sidenav-toggler-inner",
                tags$i(class = "sidenav-toggler-line bg-white"),
                tags$i(class = "sidenav-toggler-line bg-white"),
                tags$i(class = "sidenav-toggler-line bg-white")
              )
            )
          )
        )
      )
    )
  )
}


#' Create a Boostrap 4 dashboard dropdown menu
#'
#' Build an argon dashboard dropdown menu
#'
#' @param ... slot for \link{argonDropNavItem}, \link{argonDropNavTitle} or \link{argonDropNavDivider}.
#' @param title Menu title.
#' @param src Menu image, if any.
#' @param orientation Dropdown orientation: "left" or "right".
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDropNav <- function(..., title = NULL, src = NULL, orientation = "right") {
  # image
  itemImg <- shiny::tags$a(
    class = "nav-link pr-0",
    `aria-expanded` = "false",
    `aria-haspopup` = "true",
    `data-bs-toggle` = "dropdown",
    href = "#",
    role = "button",
    shiny::tags$div(
      class = "media align-items-center",
      shiny::tags$span(
        class = "avatar avatar-sm rounded-circle",
        shiny::tags$img(src = src)
      ),
      shiny::tags$div(
        class = "media-body ml-2 d-none d-lg-block",
        shiny::tags$span(class = "mb-0 text-sm  font-weight-bold", title)
      )
    )
  )

  # dropdown menu
  dropdownTag <- shiny::tags$div(
    class = paste0(
      "dropdown-menu dropdown-menu-arrow dropdown-menu-",
      orientation
    ),
    ...
  )

  # main tag
  shiny::tags$li(
    class = "nav-item dropdown",
    itemImg,
    dropdownTag
  )
}


#' Create a Boostrap 4 dashboard dropdown menu item
#'
#' Build an argon dashboard dropdown menu item
#'
#' @param title Item title.
#' @param src External link.
#' @param icon Icon, if any. Expect \link[argonR]{argonIcon} or \link[shiny]{icon}.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDropNavItem <- function(title = NULL, src = NULL, icon = NULL) {
  shiny::tags$a(
    class = "dropdown-item",
    href = src,
    target = "_blank",
    if (!is.null(icon)) icon,
    shiny::tags$span(title)
  )
}


#' Create a Boostrap 4 dashboard dropdown menu title
#'
#' Build an argon dashboard dropdown menu title
#'
#' @param title Menu title.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDropNavTitle <- function(title = NULL) {
  shiny::tags$div(
    class = "dropdown-header noti-title",
    shiny::tags$h6(class = "text-overflow m-0", title)
  )
}


#' Create a Boostrap 4 dashboard dropdown menu divider
#'
#' Build an argon dashboard dropdown menu divider
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonDropNavDivider <- function() {
  shiny::tags$div(class = "dropdown-divider")
}
