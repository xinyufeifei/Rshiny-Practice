function(input, output) {
  
  
  filterData <- reactive({
    filteredData <- mtcars[mtcars$cyl == input$cylSelector,]
    return(filteredData)
  })

  plot1 <- eventReactive(input$refreshPlot, {
    if(input$showTitle == TRUE){
      ggplot(data = filterData(),
             aes_string(x=input$xSelector, y=input$ySelector)) + geom_point() + ggtitle(input$title)        
    } else {
      ggplot(data = filterData(),
             aes_string(x=input$xSelector, y=input$ySelector)) + geom_point()  
    }
  })
  output$p1 <- renderPlot(plot1())

  output$d1 <- renderDT({datatable(filterData())})
  
}