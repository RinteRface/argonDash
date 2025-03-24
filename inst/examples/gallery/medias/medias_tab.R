images_tab <- argonTabItem(
  tabName = "medias",

  # Images
  argonRow(
    argonColumn(
      width = 6,
      argonImage(
        url = "https://www.google.com",
        src = "https://demos.creative-tim.com/argon-dashboard-bs4/assets/img/theme/team-4.jpg",
        floating = FALSE,
        card_mode = TRUE
      )
    ),
    argonColumn(
      width = 6,
      argonImage(
        url = "https://www.google.com",
        src = "https://demos.creative-tim.com/argon-dashboard-bs4/assets/img/theme/team-4.jpg",
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
        src = "https://demos.creative-tim.com/argon-dashboard-bs4/assets/img/theme/team-4.jpg",
        active = TRUE
      ),
      argonCarouselItem(
        src = "https://demos.creative-tim.com/argon-dashboard-bs4/assets/img/theme/team-4.jpg",
        active = FALSE
      )
    ) %>%
      argonPersp(side = "left")
  )
)
