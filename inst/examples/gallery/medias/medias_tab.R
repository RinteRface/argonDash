images_tab <- argonTabItem(
  tabName = "medias",

  # Images
  argonRow(
    argonColumn(
      width = 6,
      argonImage(
        url = "https://www.google.com",
        src = "images/undraw_profile-pic_fatv.svg",
        floating = FALSE,
        card_mode = TRUE
      )
    ),
    argonColumn(
      width = 6,
      argonImage(
        url = "https://www.google.com",
        src = "images/undraw_profile-pic_fatv.svg",
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
        src = "images/undraw_profile-pic_fatv.svg",
        active = TRUE
      ),
      argonCarouselItem(
        src = "images/undraw_profile-pic_fatv.svg",
        active = FALSE
      )
    ) %>%
      argonPersp(side = "left")
  )
)
