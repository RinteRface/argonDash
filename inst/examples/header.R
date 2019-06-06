argonHeader <- argonDashHeader(
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
    icon = argonIcon("atom"),
    status = "primary",
    background_color = NULL,
    gradient = FALSE, 
    floating = FALSE,
    "This is the content"
  )
)