argonNav <- argonDashNavbar(
  argonDropNav(
    title = "Dropdown Menu", 
    src = "https://demos.creative-tim.com/argon-dashboard/assets/img/theme/team-4-800x800.jpg", 
    orientation = "right",
    argonDropNavTitle(title = "Welcome!"),
    argonDropNavItem(
      title = "Item 1", 
      src = "https://www.google.com", 
      icon = argonIcon("single-02")
    ),
    argonDropNavItem(
      title = "Item 2", 
      src = NULL, 
      icon = argonIcon("settings-gear-65")
    ),
    argonDropNavDivider(),
    argonDropNavItem(
      title = "Item 3", 
      src = "#", 
      icon = argonIcon("calendar-grid-58")
    )
  )
)