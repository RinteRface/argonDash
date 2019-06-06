tables_tab <- argonTabItem(
  tabName = "tables",
  radioButtons(
    inputId = "cardWrap", 
    inline = TRUE,
    label = "Enable card wrap?",
    choices = c("Enable", "Disable"), 
    selected = "Enable"
  ),
  uiOutput("argonTable")
)