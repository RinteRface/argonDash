items_tab <- argonTabItem(
  tabName = "items",
  
  # Badges
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
  ),
  br(), br(),
  # Progress
  argonRow(
    argonProgress(value = 10, status = "danger", text = "Custom Text"),
    argonProgress(value = 40, status = "info", text = NULL),
    argonProgress(value = 90, status = "warning", text = argonIcon("atom"))
  )
)