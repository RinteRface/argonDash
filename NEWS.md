# argonDash 0.2.0

## Major Note 
- add support for shinyapps.io, RStudio connect and shiny server pro

## Documentation
- revamp the gallery
- Better documentation of `argonDashPage()`

## Minor improvement
- add min-height to body
- add `argonTable()`, `argonTableItems` and `argonTableItem`
- add `argonAvatars()` and `argonAvatar` 
- Fix #12: reduce vertical space between brand logo and menu items in `argonDashSidebar()`. Thanks @ShixiangWang
- fix issue in `argonInfoCard()` when stat is NULL
- fix #3 thanks @noahbishop: when vertical is FALSE in the `argonDashSidebar()`,
navbar elements are horizontally displayed, as expected

## Bug fix
- fix #21: icon_background has a default value in `argonInfoCard()`. Thanks @tusharmajhi9
- fix #20: Remove hardcoded stat parameter, leave it user defined. Thanks @mkaranja
- fix #10: allow to programmatically set the value of 'stat' in the `argonInfoCard()`. Thanks @Patrikios 
- fix #2: `argonDropdown()` correctly render in the navbar

## Breaking changes
In order to enable user to choose between `shiny::icon()` and `argonR::argonIcon()`:
- Change icon args of `argonDropNavItem()`, `argonSidebarItem()` and `argonInfoCard()`
- remove icon_color arg from `argonSidebarItem()`
- stat_icon arg of `argonInfoCard()` can use either `icon()` or `argonIcon()`

# argonDash 0.1.0
- first release