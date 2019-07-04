avatarSizes <- c("sm", "md", "lg")
avatarTooltips <- c(NULL, "My avatar", NULL)

items_tab <- argonTabItem(
  tabName = "items",
  
  # Badges
  argonH1("Badges", display = 4),
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
  
  argonH1("Progress Bars", display = 4),
  argonProgress(value = 10, status = "danger", text = "Custom Text"),
  argonProgress(value = 40, status = "info", text = NULL),
  argonProgress(value = 90, status = "warning", text = argonIcon("atom")),
  
  br(), br(),
  argonH1("Avatars", display = 4),
  argonAvatars(
    lapply(X = 1:3, FUN = function(i) {
      argonAvatar(
        toolTip = avatarTooltips[i],
        size = avatarSizes[i],
        src = "https://image.flaticon.com/icons/svg/219/219976.svg"
      )
    })
  )
)