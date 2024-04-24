dashboardPage(
  dashboardHeader(title = "Dashboard Header"),
  dashboardSidebar(
    sidebarMenu(
      menuItem(text = "Data", tabName = "data", icon = icon("table")),
      menuItem(text = "Plots", tabName = "plots", icon = icon("chart-bar")),
      selectInput(inputId = "selectCylinder", label = "select a cylinder", choices = cylinderChoices)
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "plots",
              plotOutput("plot1")),
      tabItem(tabName = "data",
              DTOutput(outputId = "data1"))
    )
  )
)