images_tab <- argonTabItem(
  tabName = "medias",
  
  # Images
  argonRow(
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
        src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/img-1-1200x1000.jpg",
        active = TRUE
      ),
      argonCarouselItem(
        src = "https://demos.creative-tim.com/argon-design-system/assets/img/theme/img-2-1200x1000.jpg",
        active = FALSE
      )
    ) %>% argonPersp(side = "left")
  )
)