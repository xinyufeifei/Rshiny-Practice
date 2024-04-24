function(input, output) {
  
  
  filterData <- reactive({
    filteredData <- mtcars[mtcars$cyl == input$cylSelector,]
    return(filteredData)
  })

  output$p1 <- renderPlot({
    ggplot(data = filterData(),
           aes_string(x=input$xSelector, y=input$ySelector)) + geom_point()
  })
  
}