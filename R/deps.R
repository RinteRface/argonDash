# Add an html dependency, without overwriting existing ones
appendDependencies <- function(x, value) {
  if (inherits(value, "html_dependency")) value <- list(value)

  old <- attr(x, "html_dependencies", TRUE)

  htmltools::htmlDependencies(x) <- c(old, value)
  x
}

# Add dashboard dependencies to a tag object
addDeps <- function(x) {
  shiny::addResourcePath(
    "images",
    system.file("images", package = utils::packageName())
  )

  # CSS, icons
  #favicon <- "favicon.png"
  google_fonts <- "https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
  nucleo_css <- "nucleo.css"
  fontawesome_css <- "all.min.css"
  argon_css <- "argon.min.css"

  # JS
  bootstrap_js <- "bootstrap.bundle.min.js"
  argon_js <- "argon.min.js"
  argonDash_js <- "argonDash.js"

  dashboardDeps <- list(
    # argonDash custom js
    htmltools::htmlDependency(
      name = "argonDash",
      version = as.character(utils::packageVersion("argonDash")),
      src = c(file = system.file("argonDash-0.1.0", package = "argonDash")),
      script = argonDash_js
    ),
    # bootstrap deps
    htmltools::htmlDependency(
      name = "bootstrap",
      version = "4.1.3",
      src = c(file = system.file("bootstrap-4.1.3", package = "argonDash")),
      script = bootstrap_js
    ),
    # google fonts
    htmltools::htmlDependency(
      name = "googlefonts",
      version = as.character(utils::packageVersion("argonDash")),
      src = c(href = google_fonts),
      stylesheet = ""
    ),
    # nucleo
    htmltools::htmlDependency(
      name = "nucleo",
      version = as.character(utils::packageVersion("argonDash")),
      src = c(file = system.file("nucleo-0.1.0", package = "argonDash")),
      stylesheet = nucleo_css
    ),
    # fontawesome
    htmltools::htmlDependency(
      name = "fontawesome",
      version = "5.3.1",
      src = c(file = system.file("fontawesome-5.3.1", package = "argonDash")),
      stylesheet = fontawesome_css
    ),
    # argon
    htmltools::htmlDependency(
      name = "argon",
      version = "1.0.0",
      src = c(file = system.file("argon-1.0.0", package = "argonDash")),
      stylesheet = argon_css,
      script = argon_js
    )
  )
  appendDependencies(x, dashboardDeps)
}
