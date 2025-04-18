#' Assert that a tag has specified properties
#' @param tag A tag object.
#' @param type The type of a tag, like "div", "a", "span".
#' @param class An HTML class.
#' @param allowUI If TRUE (the default), allow dynamic outputs generated by
#'   \code{\link[shiny]{uiOutput}} or \code{\link[shiny]{htmlOutput}}. When a
#'   dynamic output is provided, \code{tagAssert} won't try to validate the the
#'   contents.
#' @keywords internal
tagAssert <- function(tag, type = NULL, class = NULL, allowUI = TRUE) {
  if (!inherits(tag, "shiny.tag")) {
    print(tag)
    stop("Expected an object with class 'shiny.tag'.")
  }

  # Skip dynamic output elements
  if (
    allowUI &&
      (
        hasCssClass(tag, "shiny-html-output") ||
          hasCssClass(tag, "shinydashboard-menu-output")
      )
  ) {
    return()
  }

  if (!is.null(type) && tag$name != type) {
    stop("Expected tag to be of type ", type)
  }

  if (!is.null(class)) {
    if (is.null(tag$attribs$class)) {
      stop("Expected tag to have class '", class, "'")
    } else {
      tagClasses <- strsplit(tag$attribs$class, " ")[[1]]
      if (!(class %in% tagClasses)) {
        stop("Expected tag to have class '", class, "'")
      }
    }
  }
}

hasCssClass <- function(tag, class) {
  if (is.null(tag$attribs) || is.null(tag$attribs$class)) return(FALSE)

  classes <- strsplit(tag$attribs$class, " +")[[1]]
  return(class %in% classes)
}

# Make sure a tab name is valid (there's no "." in it).
validateTabName <- function(name) {
  if (grepl(".", name, fixed = TRUE)) {
    stop("tabName must not have a '.' in it.")
  }
}

#' Create shinylive iframe
#'
#' Useful for pkgdown website
#'
#' @param url app url. A shinylive link.
#' @param mode How to display the shinylive app. Default to app mode.
#' @param header Whether to display the shinylive header. Default to TRUE.
#' @keywords internal
create_app_link <- function(url, mode = c("app", "editor"), header = TRUE) {
  mode <- match.arg(mode)

  if (mode != "editor") url <- gsub("editor", mode, url)

  if (!header) {
    url <- paste0(url, "&h=0")
  }

  shiny::tags$iframe(
    # To allow the content to fill the full screen card
    class = "html-fill-item",
    src = url,
    height = "700",
    width = "100%",
    style = "border: 1px solid rgba(0,0,0,0.175); border-radius: .375rem;",
    allowfullscreen = "",
    allow = "autoplay",
    `data-external` = "1"
  )
}
