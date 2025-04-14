# Add dashboard dependencies to a tag object
addDeps <- function(x) {
  # Package images available at /images/<filename>
  shiny::addResourcePath(
    "images",
    system.file("images", package = utils::packageName())
  )

  # deps
  dashboardDeps <- list(
    # argonDash custom js
    htmltools::htmlDependency(
      name = "argonDash",
      version = as.character(utils::packageVersion("argonDash")),
      src = c(file = system.file("argonDash-0.1.0", package = "argonDash")),
      script = c("custom.js", "argonDash.min.js"),
      stylesheet = "argonDash.min.css"
    ),
    # bootstrap deps
    htmltools::htmlDependency(
      name = "bootstrap",
      version = "5.3.3",
      src = c(file = system.file("bootstrap-5.3.3", package = "argonDash")),
      script = c("popper.min.js", "bootstrap.min.js")
    ),
    # google fonts
    htmltools::htmlDependency(
      name = "googlefonts",
      version = as.character(utils::packageVersion("argonDash")),
      src = c(
        href = "https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
      ),
      stylesheet = ""
    ),
    # nucleo
    htmltools::htmlDependency(
      name = "nucleo",
      version = as.character(utils::packageVersion("argonDash")),
      src = c(file = system.file("nucleo-0.2.5", package = "argonDash")),
      stylesheet = c("nucleo-icons.css", "nucleo-svg.css")
    )
  )
  tagList(x, dashboardDeps)
}
