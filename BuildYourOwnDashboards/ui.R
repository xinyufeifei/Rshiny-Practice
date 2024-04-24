dashboardPage(
  dashboardHeader(title = "Baseball App"),
  dashboardSidebar(
    sidebarMenu(
      menuItem(text = "Player Data", tabName = "player",
               startExpanded = TRUE,
               menuSubItem("Data", tabName = "playerData"),
               menuSubItem("Plots", tabName = "playerPlots")
               ),
      menuItem(text = "Data Per Team/Year", tabName = "teamYear"),
      menuItem(text = "Yearly Leaders", tabName = "leaders"),
      selectInput(inputId = "selectPlayer", label = "select a player", choices = playerChoices),
      selectInput(inputId = "selectStats", label = "select which stas to display", choices = statsChoices),
      selectInput(inputId = "selectTeam", label = "select which team to view", choices = teamChoices),
      selectInput(inputId = "selectYear", label = "select which year to view", choices = yearChoices)
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "playerData",
              DTOutput("playerData1"),
              DTOutput("playerData2")
              ),
      tabItem(tabName = "playerPlots",
              plotOutput("playerStatsPlot")),
      tabItem(tabName = "teamYear",
              DTOutput("teamYearData")
              ),
      tabItem(tabName = "leaders",
              plotOutput("LeaderStatsPlot")
      )
    )
  )
)