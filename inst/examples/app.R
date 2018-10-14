library(shiny)
library(argonR)
library(argonDash)

shiny::shinyApp(
  ui = argonDashPage(
    title = "test",
    author = "David",
    description = "Argon Dash Test",
    sidebar = argonDashSidebar(
      vertical = TRUE,
      skin = "light",
      background = "white",
      size = "md",
      side = "left",
      id = "my_sidebar",
      brand_url = "http://www.google.com",
      brand_logo = "https://demos.creative-tim.com/argon-design-system/assets/img/brand/blue.png",
      argonSidebarMenu(
        argonSidebarMenuItem(
          tabName = "test",
          icon = "tv-2",
          icon_color = "primary",
          "Item 1"
        ),
        argonSidebarMenuItem(
          tabName = "item",
          icon = "planet",
          icon_color = "warning",
          "Item 2"
        )
      ),
      argonSidebarDivider(),
      argonSidebarHeader(title = "A header")
    ),
    navbar = argonDashNavbar(), 
    header = argonDashHeader(
      gradient = TRUE,
      color = "primary",
      argonCard(
        title = "Argon Card",
        src = "http://www.google.com",
        hover_lift = TRUE,
        shadow = TRUE,
        shadow_size = NULL,
        hover_shadow = FALSE,
        border_level = 0,
        icon = "phone",
        status = "primary",
        background_color = NULL,
        gradient = FALSE, 
        floating = FALSE,
        "This is the content"
      )
    ),
    body = argonDashBody(
      argonTabItems(
        argonTabItem(
          tabName = "test",
          shiny::tags$div(
            class = "card",
            shiny::tags$div(
              class = "card-body",
              sliderInput("obs", "Number of observations:",
                          min = 0, max = 1000, value = 500
              ),
              plotOutput("distPlot")
            )
          )
        ),
        argonTabItem(
          tabName = "item",
          br(), br(), br(),
          argonTabSet(
            id = "tab-1",
            card_wrapper = TRUE,
            horizontal = TRUE,
            circle = FALSE,
            size = "sm",
            argonTab(
              tabName = "Tab 1",
              active = FALSE,
              "Tab 1 content"
            ),
            argonTab(
              tabName = "Tab 2",
              active = TRUE,
              "Tab 2 content"
            ),
            argonTab(
              tabName = "Tab 3",
              active = FALSE,
              "Tab 3 content"
            )
          ),
          argonAlert(
            icon = "basket",
            status = "danger",
            "This is an alert",
            closable = TRUE
          ),
          argonImage(
            url = "https://www.google.com",
            src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/promo-1.png",
            floating = FALSE,
            card_mode = TRUE
          ),
          argonBadge(
            text = "My badge",
            src = "https://www.google.com",
            pill = TRUE,
            status = "danger"
          ),
          argonProgress(value = 10, status = "danger")
        )
      ) 
    ),
    footer = argonDashFooter(
      copyrights = "Divad Nojnarg, 2018",
      src = "https://github.com/DivadNojnarg",
      argonFooterMenu(
        argonFooterItem("RinteRface", src = "https://github.com/RinteRface"),
        argonFooterItem("argon", src = "https://demos.creative-tim.com/argon-design-system/index.html")
      )
    )
  ),
  server = function(input, output) {
    output$distPlot <- renderPlot({
      hist(rnorm(input$obs))
    })
  }
)