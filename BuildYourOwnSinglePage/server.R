function(input, output) {

  filterData <- reactive({
    filteredData <- airquality[airquality$Month == input$monthSelector,]
    return(filteredData)
  })
  
  output$datatable1 <- renderDT({
    datatable(filterData(), options=list(pageLength = 10,
                                         lengthMenu = c(5, 10, 15, 20)))
  })
  
  output$p1 <- renderPlot({
    ggplot(data = filterData(),
           aes_string(x="Day", y=input$ySelector)) + geom_point() + geom_line()
  })  
    
}