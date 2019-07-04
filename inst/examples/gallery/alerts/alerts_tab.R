alerts_tab <- argonTabItem(
  tabName = "alerts",
  argonH1("Alerts", display = 4),
  argonRow(
    argonColumn(
      width = 4,
      argonAlert(
        icon = argonIcon("basket"),
        status = "danger",
        "This is an alert",
        closable = TRUE
      )
    ),
    argonColumn(
      width = 4,
      argonAlert(
        icon = icon("bars"),
        status = "success",
        "This is an alert",
        closable = TRUE
      )
    ),
    argonColumn(
      width = 4,
      argonAlert(
        icon = argonIcon("app", color = "white"),
        status = "info",
        "This is an alert",
        closable = TRUE
      )
    )
  ),
  br(), br(),
  
  # Modals
  argonH1("Modals", display = 4),
  argonRow(
    
    # modal with gradient
    argonButton(
      name = "Click me!",
      status = "danger",
      icon = argonIcon("atom"),
      size = "lg",
      toggle_modal = TRUE,
      modal_id = "modal1"
    ),
    argonModal(
      id = "modal1",
      title = "This is a modal",
      status = "danger",
      gradient = TRUE,
      "YOU SHOULD READ THIS!",
      br(),
      "A small river named Duden flows by their place and supplies it with the necessary regelialia."
    ),
    
    # modal without gradient
    argonButton(
      name = "Click me!",
      status = "warning",
      icon = argonIcon("atom"),
      size = "lg",
      toggle_modal = TRUE,
      modal_id = "modal2"
    ),
    argonModal(
      id = "modal2",
      title = "This is a modal without gradient",
      status = "warning",
      gradient = FALSE,
      "YOU SHOULD READ THIS!",
      br(),
      "A small river named Duden flows by their place and supplies it with the necessary regelialia."
    ),
    
    # Modal without status not gradient
    argonButton(
      name = "Click me!",
      status = "info",
      icon = argonIcon("atom"),
      size = "lg",
      toggle_modal = TRUE,
      modal_id = "modal3"
    ),
    argonModal(
      id = "modal3",
      title = "This is a modal without gradient nor status",
      status = NULL,
      gradient = FALSE,
      "YOU SHOULD READ THIS!",
      br(),
      "A small river named Duden flows by their place and supplies it with the necessary regelialia."
    )
    
  )
)