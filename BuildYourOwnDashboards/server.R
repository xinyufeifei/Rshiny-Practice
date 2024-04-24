library(data.table)
function(input, output) {
  playerData <- reactive({
    playerFilteredData <- baseball[baseball$name == input$selectPlayer,]
    return(playerFilteredData)
  })
  
  teamData <- reactive({
    #teamFilteredData <- baseball[baseball$franchName == input$selectTeam,]
    teamFilteredData <- subset(baseball, franchName == input$selectTeam)
    resultData <- data.table(teamFilteredData)[, lapply(.SD, sum, na.rm=TRUE),
                                               by=.(franchName, yearID),
                                               .SDcols=statsChoices]
    return(resultData)
  })  
  
  playerDataAggregation <- reactive({
    aggData <- data.table(playerData())[, lapply(.SD, sum, na.rm=TRUE), by=name, 
                                        .SDcols=statsChoices]
    return(aggData)
  })
  
  yearData <- reactive({
    yearFilteredData <- subset(baseball, yearID == input$selectYear)
    resultData <- yearFilteredData[order(yearFilteredData[, input$selectStats], decreasing = T), ]
    leaderData <- resultData[1:10, ]
    leaderData$name <- factor(leaderData$name, levels = unique(leaderData$name))
    return(leaderData)
  })
  
  output$playerData1 <- renderDT(datatable(playerDataAggregation()))
  output$playerData2 <- renderDT(datatable(playerData()))
  output$teamYearData <- renderDT({datatable(teamData(), options=list(pageLength = 45))})
  output$playerStatsPlot <- renderPlot({
    ggplot(data = playerData(),
           aes_string(x="yearID", y=input$selectStats)) + geom_col(fill="blue") + ggtitle(
             paste0(input$selectStats, 'Per Year For', input$selectTeam))
  })
  output$LeaderStatsPlot <- renderPlot({
    ggplot(data = yearData(),
           aes_string(x="name", y=input$selectStats)) + geom_col(fill="blue") + ggtitle(
             paste0(input$selectStats, ' Leaders For the Year ', input$selectYear)
           )
  })
}