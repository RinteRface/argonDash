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
          argonProgress(value = 10, status = "danger"),
          # argonSection(
          #   gradient = TRUE,
          #   size = "lg",
          #   status = "primary",
          #   separator = TRUE,
          #   fluidRow(
          #     argonCard(
          #       title = "Perspective effect"
          #     ) %>% argonPersp(side = "right")
          #   )
          # ),
          fluidRow(
            width = 6,
            HTML(
              paste0(
                '<div class="pr-md-5">
                <div class="icon icon-lg icon-shape icon-shape-success shadow rounded-circle mb-5">
                <i class="ni ni-settings-gear-65"></i>
                </div>
                <h3>Awesome features</h3>
                <p>The kit comes with three pre-built pages to help you get started faster. You can change the text and images and youre good to go.</p>
                <ul class="list-unstyled mt-5">
                <li class="py-2">
                <div class="d-flex align-items-center">
                <div>
                <div class="badge badge-circle badge-success mr-3">
                <i class="ni ni-settings-gear-65"></i>
                </div>
                </div>
                <div>
                <h6 class="mb-0">Carefully crafted components</h6>
                </div>
                </div>
                </li>
                <li class="py-2">
                <div class="d-flex align-items-center">
                <div>
                <div class="badge badge-circle badge-success mr-3">
                <i class="ni ni-html5"></i>
                </div>
                </div>
                <div>
                <h6 class="mb-0">Amazing page examples</h6>
                </div>
                </div>
                </li>
                <li class="py-2">
                <div class="d-flex align-items-center">
                <div>
                <div class="badge badge-circle badge-success mr-3">
                <i class="ni ni-satisfied"></i>
                </div>
                </div>
                <div>
                <h6 class="mb-0">Super friendly support team</h6>
                </div>
                </div>
                </li>
                </ul>
                </div>
                '
              )
            )
          ),
          fluidRow(
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