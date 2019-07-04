effects_tab <- argonTabItem(
  tabName = "effects",
  argonRow(
    argonColumn(
      width = 6, 
      argonImage(
        src = "https://demos.creative-tim.com/argon-design-system/assets/img/ill/ill-2.svg",
        floating = TRUE,
        card_mode = TRUE
      ) %>% argonPersp(side = "left")
    )
  ) %>% argonPadding(orientation = "y", value = 5),
  argonRow(
    argonColumn(
      width = 6, 
      h1("Perspective effect"),
      h6("Disabled on small screens")
    ),
    argonColumn(
      width = 6, 
      argonImage(
        url = "https://www.google.com",
        src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/promo-1.png",
        floating = TRUE,
        card_mode = TRUE,
        hover_lift = FALSE
      ) %>% argonPersp(side = "right")
    )
  )
)