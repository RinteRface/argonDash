tabText1 <- "Raw denim you probably haven't heard of them jean shorts Austin. 
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache 
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit 
            butcher retro keffiyeh dreamcatcher synth. Raw denim you probably 
            haven't heard of them jean shorts Austin. Nesciunt tofu stumptown 
            aliqua, retro synth master cleanse"

tabText2 <- "Cosby sweater eu banh mi, qui irure terry richardson ex squid. 
            Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan 
            american apparel, butcher voluptate nisi qui."

tabText3 <- "Raw denim you probably haven't heard of them jean shorts Austin. 
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. 
            Mustache cliche tempor, williamsburg carles vegan helvetica. 
            Reprehenderit butcher retro keffiyeh dreamcatcher synth"


tabsets_tab <- argonTabItem(
  tabName = "tabs",
  
  argonRow(
    
    # Horizontal Tabset
    argonColumn(
      width = 6,
      argonH1("Horizontal Tabset", display = 4),
      argonTabSet(
        id = "tab-1",
        card_wrapper = TRUE,
        horizontal = TRUE,
        circle = FALSE,
        size = "sm",
        width = 12,
        iconList = lapply(X = 1:3, FUN = argonIcon, name = "atom"),
        argonTab(
          tabName = "Tab 1",
          active = FALSE,
          tabText1
        ),
        argonTab(
          tabName = "Tab 2",
          active = TRUE,
          tabText2
        ),
        argonTab(
          tabName = "Tab 3",
          active = FALSE,
          tabText3
        )
      )
    ),
    
    # Vertical Tabset
    argonColumn(
      width = 6,
      argonH1("Vertical Tabset", display = 4),
      argonTabSet(
        width = 12,
        id = "tab-2",
        card_wrapper = TRUE,
        horizontal = FALSE,
        circle = TRUE,
        size = "sm",
        argonTab(
          tabName = "Tab 4",
          active = FALSE,
          tabText1
        ),
        argonTab(
          tabName = "Tab 5",
          active = TRUE,
          tabText2
        ),
        argonTab(
          tabName = "Tab 6",
          active = FALSE,
          tabText3
        )
      ) 
    )
  )
)