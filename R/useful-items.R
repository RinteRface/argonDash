#' Create a Boostrap 4 dashboard info card
#'
#' Build an argon dashboard info card
#'
#' @param value info card value. 
#' @param title info card title.
#' @param stat info card stat value.
#' @param stat_icon info card stat icon.
#' @param description info card stat description.
#' @param icon info card icon.
#' @param icon_background info card icon background color.
#' @param hover_lift Whether to apply a lift effect on hover. FALSE by default.
#' Not compatible with floating.
#' @param shadow Whether to apply a shadow effect. FALSE by default.
#' @param background_color Card background color. NULL by default.
#' @param gradient Whether to apply a gradient effect on the card background. FALSE by default.
#' @param width info card width. Between 1 and 12.
#' 
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonInfoCard <- function(value, title = NULL, stat = NULL, stat_icon = NULL, 
                          description = NULL, icon, icon_background = NULL, 
                          hover_lift = FALSE, shadow = FALSE, 
                          background_color = NULL, gradient = FALSE, width = 3) {
  
  iconCl <- "icon icon-shape text-white rounded-circle shadow"
  if (!is.null(icon_background)) iconCl <- paste0(iconCl, " bg-", icon_background)
  
  cardCl <- "card card-stats mb-4 mb-xl-0"
  if (hover_lift) cardCl <- paste0(cardCl, " card-lift--hover")
  if (shadow) cardCl <- paste0(cardCl, " shadow")
  if (gradient) {
    if (!is.null(background_color)) cardCl <- paste0(cardCl, " bg-gradient-", background_color)
  } else {
    if (!is.null(background_color)) cardCl <- paste0(cardCl, " bg-", background_color)
  }
  
  if (!is.null(background_color))
    if (background_color == "default") text_color <- "text-white" else text_color <- NULL
  else text_color <- NULL
  
  statCl <- if (stat > 0) "text-success mr-2" else "text-danger mr-2"
  
  infoCardTag <- shiny::tags$div(
    class = cardCl,
    shiny::tags$div(
      class = "card-body",
      # upper part
      shiny::fluidRow(
        argonR::argonColumn(
          shiny::tags$h5(class = paste0("card-title text-uppercase mb-0 ", text_color), title),
          shiny::span(class = paste0("h2 font-weight-bold mb-0 ", text_color), value)
        ),
        shiny::tags$div(
          class = "col-auto",
          shiny::tags$div(
            class = iconCl,
            shiny::tags$i(class = paste0("fas fa-", icon))
          )
        )
      ),
      # lower part
      shiny::p(
        class = "mt-3 mb-0 text-sm",
        shiny::span(class = statCl, shiny::icon(stat_icon), paste0(stat, "%")),
        shiny::span(class = paste0("h5 ", text_color), description)
      )
    )
  )
  
  argonR::argonColumn(width = width, infoCardTag)
  
}