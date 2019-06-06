library(shiny)
library(argonR)
library(argonDash)
library(magrittr)

# template
source("sidebar.R")
source("navbar.R")
source("header.R")
source("footer.R")

# elements
source("cards/cards_tab.R")
source("tabs/tabsets_tab.R")
source("alerts/alerts_tab.R")
source("images/images_tab.R")
source("items/items_tab.R")
source("css_effects/effects_tab.R")
source("sections/sections_tab.R")

# App
shiny::shinyApp(
  ui = argonDashPage(
    title = "Argon Dashboard Demo",
    author = "David",
    description = "Argon Dash Test",
    sidebar = argonSidebar,
    navbar = argonNav, 
    header = argonHeader,
    body = argonDashBody(
      argonTabItems(
        cards_tab,
        tabsets_tab,
        alerts_tab,
        images_tab,
        items_tab,
        effects_tab,
        sections_tab
      )
    ),
    footer = argonFooter
  ),
  server = function(input, output) {
    output$distPlot <- renderPlot({
      hist(rnorm(input$obs))
    })
    
    output$plot <- renderPlot({
      dist <- switch(
        input$dist,
        norm = rnorm,
        unif = runif,
        lnorm = rlnorm,
        exp = rexp,
        rnorm
      )
      
      hist(dist(500))
    })
  }
)