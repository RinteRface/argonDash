library(shiny)
library(argonR)
library(argonDash)
library(magrittr)

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
          tabName = "cards",
          icon = "tv-2",
          icon_color = "primary",
          "Cards"
        ),
        argonSidebarMenuItem(
          tabName = "tabs",
          icon = "planet",
          icon_color = "warning",
          "Tabs"
        ),
        argonSidebarMenuItem(
          tabName = "alerts",
          icon = "bullet-list-67",
          icon_color = "danger",
          "Alerts"
        ),
        argonSidebarMenuItem(
          tabName = "images",
          icon = "circle-08",
          icon_color = "success",
          "Images"
        ),
        argonSidebarMenuItem(
          tabName = "badges",
          icon = "ui-04",
          icon_color = "pink",
          "Badges"
        ),
        argonSidebarMenuItem(
          tabName = "progress",
          icon = "pin-3",
          icon_color = "yellow",
          "Progress"
        ),
        argonSidebarMenuItem(
          tabName = "profile",
          icon = "spaceship",
          icon_color = "info",
          "Profile"
        ),
        argonSidebarMenuItem(
          tabName = "effects",
          icon = "atom",
          icon_color = "black",
          "CSS effects"
        ),
        argonSidebarMenuItem(
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
      HTML(
        paste0(
          '<ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
          <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <div class="media align-items-center">
          <span class="avatar avatar-sm rounded-circle">
          <img alt="Image placeholder" src="./assets/img/theme/team-4-800x800.jpg">
          </span>
          <div class="media-body ml-2 d-none d-lg-block">
          <span class="mb-0 text-sm  font-weight-bold">Jessica Jones</span>
          </div>
          </div>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
          <div class=" dropdown-header noti-title">
          <h6 class="text-overflow m-0">Welcome!</h6>
          </div>
          <a href="./examples/profile.html" class="dropdown-item">
          <i class="ni ni-single-02"></i>
          <span>My profile</span>
          </a>
          <a href="./examples/profile.html" class="dropdown-item">
          <i class="ni ni-settings-gear-65"></i>
          <span>Settings</span>
          </a>
          <a href="./examples/profile.html" class="dropdown-item">
          <i class="ni ni-calendar-grid-58"></i>
          <span>Activity</span>
          </a>
          <a href="./examples/profile.html" class="dropdown-item">
          <i class="ni ni-support-16"></i>
          <span>Support</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#!" class="dropdown-item">
          <i class="ni ni-user-run"></i>
          <span>Logout</span>
          </a>
          </div>
          </li>
          </ul>
          '
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
          fluidRow(
            argonColumn(
              width = 6,
              argonCard(
                width = 12,
                src = "https://www.google.com",
                icon = "ui-04",
                status = "success",
                shadow = TRUE,
                border_level = 2,
                hover_shadow = TRUE,
                title = "Shiny Inputs",
                sliderInput(
                  "obs", 
                  "Number of observations:",
                  min = 0, 
                  max = 1000, 
                  value = 500
                ),
                plotOutput("distPlot")
              )
            ),
            argonColumn(
              width = 6,
              argonCard(
                width = 12,
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
            ) 
          ),
          br(),
          fluidRow(
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
          fluidRow(
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
            argonTabSet(
              id = "tab-2",
              card_wrapper = TRUE,
              horizontal = FALSE,
              circle = TRUE,
              size = "sm",
              argonTab(
                tabName = "Tab 4",
                active = FALSE,
                "Tab 4 content"
              ),
              argonTab(
                tabName = "Tab 5",
                active = TRUE,
                "Tab 5 content"
              ),
              argonTab(
                tabName = "Tab 6",
                active = FALSE,
                "Tab 6 content"
              )
            )
          )
        ),
        argonTabItem(
          tabName = "alerts",
          fluidRow(
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
          fluidRow(
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
                floating = FALSE,
                card_mode = TRUE
              )
            )
          ),
          br(),
          fluidRow(
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
            )
          )
        ),
        argonTabItem(
          tabName = "badges",
          fluidRow(
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
          argonProgress(value = 10, status = "danger"),
          argonProgress(value = 40, status = "info"),
          argonProgress(value = 90, status = "warning")
        ),
        argonTabItem(
          tabName = "profile",
          fluidRow(
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
          fluidRow(
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
          fluidRow(
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
          )
        ),
        argonTabItem(
          tabName = "sections",
          argonDashHeader(
            gradient = TRUE,
            color = "warning",
            separator = TRUE,
            separator_color = "info",
            argonCard(
              src = "https://www.google.com",
              icon = "ui-04",
              status = "success",
              shadow = TRUE,
              border_level = 2,
              #gradient = TRUE,
              #background_color = "orange",
              hover_shadow = TRUE,
              title = "Shiny Inputs"
            )
          ),
          argonDashHeader(
            gradient = FALSE,
            color = "info",
            separator = TRUE,
            separator_color = "secondary",
            h1("Section Text"),
            h3("Some text here")
          )
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