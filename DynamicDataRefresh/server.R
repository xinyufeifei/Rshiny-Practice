library(data.table)
function(input, output, session) {
  
  
  fileData <- reactiveFileReader(intervalMillis = 1000, 
                                 session = session,
                                 filePath = "~/Project/udemy/RShiny_by_Weis/DynamicDataRefresh/dataToRefresh.csv",
                                 readFunc = read.csv)

  dataAggregation <- reactive({
    aggData <- data.table(fileData())[, list(totalSales = sum(Amount)), 
                                     by=list(SalesPerson, Day)]
    return(aggData)
  })
  
  output$updateData <- renderDT(datatable(dataAggregation()))
  
  output$updatePlot <- renderPlot({
    ggplot(data = dataAggregation(), aes(x=SalesPerson, y=totalSales, fill=SalesPerson)) + geom_col()
  })
  
}