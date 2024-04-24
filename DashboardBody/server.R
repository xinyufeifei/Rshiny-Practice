function(input, output) {
  filterData <- reactive({
    filteredData <- mtcars[mtcars$cyl == input$selectCylinder,]
    return(filteredData)
  })
  
  output$data1 <- renderDT(datatable(filterData()))
  output$plot1 <- renderPlot({
    ggplot(data = filterData(),
           aes(x=mpg, y=hp)) + geom_point()
  })
}