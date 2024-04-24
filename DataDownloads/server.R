function(input, output) {
  
  
  filterData <- reactive({
    filteredData <- mtcars[mtcars$cyl == input$cylSelector,]
    return(filteredData)
  })

  output$datatable1 <- renderDT({datatable(filterData())})
  
  output$downloadData <- downloadHandler(
    filename = "FilteredData.csv",
    content = function(file) {
      write.csv(filterData()[input[["datatable1_rows_all"]], ], file)
    }
  )
  
  
}