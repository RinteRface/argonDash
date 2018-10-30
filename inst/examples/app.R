library(shiny)
library(argonR)
library(argonDash)
library(magrittr)

tabText1 <- "Raw denim you probably haven't heard of them jean shorts Austin. 
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache 
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit 
            butcher retro keffiyeh dreamcatcher synth. Raw denim you probably 
            haven't heard of them jean shorts Austin. Nesciunt tofu stumptown 
            aliqua, retro synth master cleanse"

tabText2 <- "Cosby sweater eu banh mi, qui irure terry richardson ex squid. 
            Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan 
            american apparel, butcher voluptate nisi qui."

tabText3 <- "Raw denim you probably haven't heard of them jean shorts Austin. 
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. 
            Mustache cliche tempor, williamsburg carles vegan helvetica. 
            Reprehenderit butcher retro keffiyeh dreamcatcher synth"

shiny::shinyApp(
  ui = argonDashPage(
    title = "Argon Dashboard Demo",
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
        argonSidebarItem(
          tabName = "cards",
          icon = "tv-2",
          icon_color = "primary",
          "Cards"
        ),
        argonSidebarItem(
          tabName = "tabs",
          icon = "planet",
          icon_color = "warning",
          "Tabs"
        ),
        argonSidebarItem(
          tabName = "alerts",
          icon = "bullet-list-67",
          icon_color = "danger",
          "Alerts"
        ),
        argonSidebarItem(
          tabName = "images",
          icon = "circle-08",
          icon_color = "success",
          "Images"
        ),
        argonSidebarItem(
          tabName = "badges",
          icon = "ui-04",
          icon_color = "pink",
          "Badges"
        ),
        argonSidebarItem(
          tabName = "progress",
          icon = "pin-3",
          icon_color = "yellow",
          "Progress"
        ),
        argonSidebarItem(
          tabName = "profile",
          icon = "spaceship",
          icon_color = "info",
          "Profile"
        ),
        argonSidebarItem(
          tabName = "effects",
          icon = "atom",
          icon_color = "black",
          "CSS effects"
        ),
        argonSidebarItem(
          tabName = "sections",
          icon = "credit-card",
          icon_color = "grey",
          "Sections"
        )
      ),
      argonSidebarDivider(),
      argonSidebarHeader(title = "A header")
    ),
    navbar = argonDashNavbar(
      argonDropNav(
        title = "Dropdown Menu", 
        src = "https://demos.creative-tim.com/argon-dashboard/assets/img/theme/team-4-800x800.jpg", 
        orientation = "right",
        argonDropNavTitle(title = "Welcome!"),
        argonDropNavItem(
          title = "Item 1", 
          src = "https://www.google.com", 
          icon = "single-02"
        ),
        argonDropNavItem(
          title = "Item 2", 
          src = NULL, 
          icon = "settings-gear-65"
        ),
        argonDropNavDivider(),
        argonDropNavItem(
          title = "Item 3", 
          src = "#", 
          icon = "calendar-grid-58"
        )
      )
    ), 
    header = argonDashHeader(
      gradient = TRUE,
      color = "primary",
      separator = TRUE,
      separator_color = "secondary",
      argonCard(
        title = "Argon Card",
        src = "http://www.google.com",
        hover_lift = TRUE,
        shadow = TRUE,
        shadow_size = NULL,
        hover_shadow = FALSE,
        border_level = 0,
        icon = "atom",
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
          tabName = "cards",
          argonRow(
            argonCard(
              width = 12,
              src = NULL,
              icon = "ui-04",
              status = "success",
              shadow = TRUE,
              border_level = 2,
              hover_shadow = TRUE,
              title = "Shiny Inputs",
              argonRow(
                argonColumn(
                  width = 6,
                  sliderInput(
                    "obs", 
                    "Number of observations:",
                    min = 0, 
                    max = 1000, 
                    value = 500
                  )
                ),
                argonColumn(width = 6, plotOutput("distPlot"))
              )
            ),
            br(), br(),
            argonCard(
              width = 12,
              title = "Argon Card",
              src = NULL,
              hover_lift = TRUE,
              shadow = TRUE,
              shadow_size = NULL,
              hover_shadow = FALSE,
              border_level = 0,
              icon = "atom",
              status = "primary",
              background_color = NULL,
              gradient = FALSE, 
              floating = FALSE,
              argonRow(
                argonColumn(
                  width = 6,
                  radioButtons(
                    "dist", 
                    "Distribution type:",
                    c("Normal" = "norm",
                      "Uniform" = "unif",
                      "Log-normal" = "lnorm",
                      "Exponential" = "exp")
                  )
                ),
                argonColumn(width = 6, plotOutput("plot"))
              )
            ) 
          ),
          br(),
          argonRow(
            argonInfoCard(
              value = "350,897", 
              title = "TRAFFIC", 
              stat = 3.48, 
              stat_icon = "arrow-up",
              description = "Since last month", 
              icon = "chart-bar", 
              icon_background = "danger",
              hover_lift = TRUE
            ),
            argonInfoCard(
              value = "2,356", 
              title = "NEW USERS", 
              stat = -3.48, 
              stat_icon = "arrow-down",
              description = "Since last week", 
              icon = "chart-pie", 
              icon_background = "warning",
              shadow = TRUE
            ),
            argonInfoCard(
              value = "924", 
              title = "SALES", 
              stat = -1.10, 
              stat_icon = "arrow-down",
              description = "Since yesterday", 
              icon = "users", 
              icon_background = "yellow",
              background_color = "default"
            ),
            argonInfoCard(
              value = "49,65%", 
              title = "PERFORMANCE", 
              stat = 12, 
              stat_icon = "arrow-up",
              description = "Since last month", 
              icon = "percent", 
              icon_background = "info",
              gradient = TRUE,
              background_color = "orange",
              hover_lift = TRUE
            )
          )
        ),
        argonTabItem(
          tabName = "tabs",
          argonRow(
            argonTabSet(
              id = "tab-1",
              card_wrapper = TRUE,
              horizontal = TRUE,
              circle = FALSE,
              size = "sm",
              width = 6,
              argonTab(
                tabName = "Tab 1",
                active = FALSE,
                tabText1
              ),
              argonTab(
                tabName = "Tab 2",
                active = TRUE,
                tabText2
              ),
              argonTab(
                tabName = "Tab 3",
                active = FALSE,
                tabText3
              )
            ),
            argonTabSet(
              id = "tab-2",
              card_wrapper = TRUE,
              horizontal = FALSE,
              circle = TRUE,
              size = "sm",
              argonTab(
                tabName = "Tab 4",
                active = FALSE,
                tabText1
              ),
              argonTab(
                tabName = "Tab 5",
                active = TRUE,
                tabText2
              ),
              argonTab(
                tabName = "Tab 6",
                active = FALSE,
                tabText3
              )
            )
          )
        ),
        argonTabItem(
          tabName = "alerts",
          argonRow(
            argonColumn(
              width = 4,
              argonAlert(
                icon = "basket",
                status = "danger",
                "This is an alert",
                closable = TRUE
              )
            ),
            argonColumn(
              width = 4,
              argonAlert(
                icon = "ui-02",
                status = "success",
                "This is an alert",
                closable = TRUE
              )
            ),
            argonColumn(
              width = 4,
              argonAlert(
                icon = "ui-03",
                status = "info",
                "This is an alert",
                closable = TRUE
              )
            )
          )
        ),
        argonTabItem(
          tabName = "images",
          argonRow(
            argonColumn(
              width = 6,
              argonImage(
                url = "https://www.google.com",
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/promo-1.png",
                floating = FALSE,
                card_mode = TRUE
              )
            ),
            argonColumn(
              width = 6,
              argonImage(
                url = "https://www.google.com",
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/promo-1.png",
                floating = TRUE,
                card_mode = FALSE
              )
            )
          ),
          br(),
          argonRow(
            argonCarousel(
              id = "carousel1",
              argonCarouselItem(
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/img-1-1200x1000.jpg",
                active = TRUE
              ),
              argonCarouselItem(
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/img-2-1200x1000.jpg",
                active = FALSE
              )
            ) %>% argonPersp(side = "left")
          )
        ),
        argonTabItem(
          tabName = "badges",
          argonRow(
            argonColumn(
              width = 3,
              argonBadge(
                text = "My badge",
                src = "https://www.google.com",
                pill = TRUE,
                status = "danger"
              )
            ),
            argonColumn(
              width = 3,
              argonBadge(
                text = "My badge",
                src = "https://www.google.com",
                pill = TRUE,
                status = "primary"
              )
            ),
            argonColumn(
              width = 3,
              argonBadge(
                text = "My badge",
                pill = TRUE,
                status = "warning"
              )
            ),
            argonColumn(
              width = 3,
              argonBadge(
                text = "My badge",
                src = "https://www.google.com",
                pill = FALSE,
                status = "success"
              )
            )
          )
        ),
        argonTabItem(
          tabName = "progress",
          argonProgress(value = 10, status = "danger", text = "Custom Text"),
          argonProgress(value = 40, status = "info", text = NULL),
          argonProgress(value = 90, status = "warning", text = argonIcon("atom"))
        ),
        argonTabItem(
          tabName = "profile",
          argonRow(
            argonColumn(
              width = 3,
              argonUser(
                title = "Ryan Tompson",
                subtitle = "Web Developer",
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/team-1-800x800.jpg"
              )
            ),
            argonColumn(
              width = 3,
              argonUser(
                title = "Romina Hadid",
                subtitle = "Marketing Strategist",
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/team-2-800x800.jpg"
              )
            ),
            argonColumn(
              width = 3,
              argonUser(
                title = "Alexander Smith",
                subtitle = "UI/UX Designer",
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/team-3-800x800.jpg"
              )
            ),
            argonColumn(
              width = 3,
              argonUser(
                title = "John Doe",
                subtitle = "Founder and CEO",
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/team-4-800x800.jpg"
              )
            )
          ),
          br(), br(),
          argonRow(
            argonColumn(
              width = 12,
              argonProfile(
                title = "John",
                subtitle = "Japan, Kagoshima",
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/team-1-800x800.jpg",
                url = "https://www.google.com",
                url_1 = "https://www.google.com",
                url_2 = "https://www.google.com",
                stats = argonProfileStats(
                  argonProfileStat(
                    value = 22,
                    description = "Friends"
                  ),
                  argonProfileStat(
                    value = 10,
                    description = "Photos"
                  ),
                  argonProfileStat(
                    value = 89,
                    description = "Comments"
                  )
                ),
                "An artist of considerable range, Ryan — 
                  the name taken by Melbourne-raised, 
                  Brooklyn-based Nick Murphy — writes, 
                  performs and records all of his own music, 
                  giving it a warm, intimate feel with a solid 
                  groove structure. An artist of considerable 
                  range."
              )
            )
          )
        ),
        argonTabItem(
          tabName = "effects",
          argonRow(
            argonColumn(
              width = 6, 
              h1("Perspective effect"),
              h6("Disabled on small screens")
            ),
            argonColumn(
              width = 6, 
              argonPersp(
                side = "right",
                argonImage(
                  url = "https://www.google.com",
                  src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/promo-1.png",
                  floating = TRUE,
                  card_mode = TRUE,
                  hover_lift = FALSE
                )
              )
            )
          ),
          argonRow(
            argonColumn(
              width = 6, 
              argonImage(
                src = "https://demos.creative-tim.com/argon-design-system/assets/img/ill/ill-2.svg",
                floating = TRUE,
                card_mode = TRUE
              ) %>% argonPersp(side = "left")
            )
          )
        ),
        argonTabItem(
          tabName = "sections",
          argonDashHeader(
            gradient = TRUE,
            color = "warning",
            separator = TRUE,
            separator_color = "info",
            top_padding = 8,
            bottom_padding = 8,
            argonCard(
              src = "https://www.google.com",
              status = "success",
              border_level = 0,
              hover_shadow = TRUE,
              title = "Card with Margins"
            ) %>% argonMargin(orientation = "t", value = -150)
          ),
          argonDashHeader(
            gradient = FALSE,
            color = "info",
            top_padding = 8,
            bottom_padding = 8,
            argonRow(
              argonColumn(
                width = 6,
                h1("Section Text"),
                h3("Some text here"),
                argonCard()
              ),
              argonColumn(
                width = 6, 
                argonCard() %>% argonMargin(orientation = "t", value = -200)
              )
            )
          ),
          argonDashHeader(
            gradient = FALSE,
            color = "secondary",
            top_padding = 8,
            bottom_padding = 8,
            mask = TRUE,
            background_img = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/img-1-1200x1000.jpg",
            opacity = 6,
            argonH1("Header with mask", display = 1) %>% argonTextColor(color = "white"),
            argonLead("This is the content.") %>% argonTextColor(color = "white")
          )
        )
      )
    ),
    footer = argonDashFooter(
      copyrights = "@Divad Nojnarg, 2018",
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
    
    output$plot <- renderPlot({
      dist <- switch(input$dist,
                     norm = rnorm,
                     unif = runif,
                     lnorm = rlnorm,
                     exp = rexp,
                     rnorm)
      
      hist(dist(500))
    })
  }
)