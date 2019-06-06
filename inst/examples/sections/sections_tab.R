sections_tab <- argonTabItem(
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