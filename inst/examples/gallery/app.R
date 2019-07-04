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
source("medias/medias_tab.R")
source("items/items_tab.R")
source("css_effects/effects_tab.R")
source("sections/sections_tab.R")
source("tables/tables_tab.R")

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
        tables_tab,
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
    
    # argonTable
    output$argonTable <- renderUI({
      
      wrap <- if (input$cardWrap == "Enable") TRUE else FALSE
      
      argonTable(
        cardWrap = wrap,
        headTitles = c(
          "PROJECT",
          "BUDGET",
          "STATUS",
          "USERS",
          "COMPLETION",
          ""
        ),
        argonTableItems(
          argonTableItem("Argon Design System"),
          argonTableItem(dataCell = TRUE, "$2,500 USD"),
          argonTableItem(
            dataCell = TRUE, 
            argonBadge(
              text = "Pending",
              status = "danger"
            )
          ),
          argonTableItem(
            argonAvatar(
              size = "sm",
              src = "https://image.flaticon.com/icons/svg/219/219976.svg"
            )
          ),
          argonTableItem(
            dataCell = TRUE, 
            argonProgress(value = 60, status = "danger")
          ),
          argonTableItem(
            argonButton(
              name = "Click me!",
              status = "warning",
              icon = "atom",
              size = "sm"
            )
          )
        )
      )
    })
    
  }
)