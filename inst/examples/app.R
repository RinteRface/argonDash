library(shiny)
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
      HTML(
        paste0(
          '<div class="row">
          <div class="col-xl-3 col-lg-6">
          <div class="card card-stats mb-4 mb-xl-0">
          <div class="card-body">
          <div class="row">
          <div class="col">
          <h5 class="card-title text-uppercase text-muted mb-0">Traffic</h5>
          <span class="h2 font-weight-bold mb-0">350,897</span>
          </div>
          <div class="col-auto">
          <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
          <i class="fas fa-chart-bar"></i>
          </div>
          </div>
          </div>
          <p class="mt-3 mb-0 text-muted text-sm">
          <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
          <span class="text-nowrap">Since last month</span>
          </p>
          </div>
          </div>
          </div>
          <div class="col-xl-3 col-lg-6">
          <div class="card card-stats mb-4 mb-xl-0">
          <div class="card-body">
          <div class="row">
          <div class="col">
          <h5 class="card-title text-uppercase text-muted mb-0">New users</h5>
          <span class="h2 font-weight-bold mb-0">2,356</span>
          </div>
          <div class="col-auto">
          <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
          <i class="fas fa-chart-pie"></i>
          </div>
          </div>
          </div>
          <p class="mt-3 mb-0 text-muted text-sm">
          <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 3.48%</span>
          <span class="text-nowrap">Since last week</span>
          </p>
          </div>
          </div>
          </div>
          <div class="col-xl-3 col-lg-6">
          <div class="card card-stats mb-4 mb-xl-0">
          <div class="card-body">
          <div class="row">
          <div class="col">
          <h5 class="card-title text-uppercase text-muted mb-0">Sales</h5>
          <span class="h2 font-weight-bold mb-0">924</span>
          </div>
          <div class="col-auto">
          <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
          <i class="fas fa-users"></i>
          </div>
          </div>
          </div>
          <p class="mt-3 mb-0 text-muted text-sm">
          <span class="text-warning mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
          <span class="text-nowrap">Since yesterday</span>
          </p>
          </div>
          </div>
          </div>
          <div class="col-xl-3 col-lg-6">
          <div class="card card-stats mb-4 mb-xl-0">
          <div class="card-body">
          <div class="row">
          <div class="col">
          <h5 class="card-title text-uppercase text-muted mb-0">Performance</h5>
          <span class="h2 font-weight-bold mb-0">49,65%</span>
          </div>
          <div class="col-auto">
          <div class="icon icon-shape bg-info text-white rounded-circle shadow">
          <i class="fas fa-percent"></i>
          </div>
          </div>
          </div>
          <p class="mt-3 mb-0 text-muted text-sm">
          <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
          <span class="text-nowrap">Since last month</span>
          </p>
          </div>
          </div>
          </div>
          </div>
          '
        )
      )
    ),
    body = argonDashBody(
      argonTabItems(
        argonTabItem(
          tabName = "test",
          sliderInput("obs", "Number of observations:",
                      min = 0, max = 1000, value = 500
          ),
          plotOutput("distPlot")
        ),
        argonTabItem(
          tabName = "item",
          HTML(
            paste0(
              '<div class="card bg-gradient-default shadow">
              <div class="card-header bg-transparent">
              <div class="row align-items-center">
              <div class="col">
              <h6 class="text-uppercase text-light ls-1 mb-1">Overview</h6>
              <h2 class="text-white mb-0">Sales value</h2>
              </div>
              <div class="col">
              <ul class="nav nav-pills justify-content-end">
              <li class="nav-item mr-2 mr-md-0" data-toggle="chart" data-target="#chart-sales" data-update="{"data":{"datasets":[{"data":[0, 20, 10, 30, 15, 40, 20, 60, 60]}]}}" data-prefix="$" data-suffix="k">
              <a href="#" class="nav-link py-2 px-3 active" data-toggle="tab">
              <span class="d-none d-md-block">Month</span>
              <span class="d-md-none">M</span>
              </a>
              </li>
              <li class="nav-item" data-toggle="chart" data-target="#chart-sales" data-update="{"data":{"datasets":[{"data":[0, 20, 5, 25, 10, 30, 15, 40, 40]}]}}" data-prefix="$" data-suffix="k">
              <a href="#" class="nav-link py-2 px-3" data-toggle="tab">
              <span class="d-none d-md-block">Week</span>
              <span class="d-md-none">W</span>
              </a>
              </li>
              </ul>
              </div>
              </div>
              </div>
              <div class="card-body">
              <!-- Chart -->
              <div class="chart">
              <!-- Chart wrapper -->
              <canvas id="chart-sales" class="chart-canvas"></canvas>
              </div>
              </div>
              </div>
              </div>'
            )
          )
        )
      ) 
    ),
    footer = HTML(
      paste0(
        '<!-- Footer -->
      <footer class="footer">
        <div class="row align-items-center justify-content-xl-between">
        <div class="col-xl-6">
        <div class="copyright text-center text-xl-left text-muted">
        &copy; 2018 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Creative Tim</a>
        </div>
        </div>
        <div class="col-xl-6">
        <ul class="nav nav-footer justify-content-center justify-content-xl-end">
        <li class="nav-item">
        <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
        </li>
        <li class="nav-item">
        <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
        </li>
        <li class="nav-item">
        <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
        </li>
        <li class="nav-item">
        <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
        </li>
        </ul>
        </div>
        </div>
        </footer>
        '
      )
    )
  ),
  server = function(input, output) {
    output$distPlot <- renderPlot({
      hist(rnorm(input$obs))
    })
  }
)