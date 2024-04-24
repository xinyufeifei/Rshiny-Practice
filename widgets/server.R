#library(ggplot2)
library(DT)
# server <- function(input, output) {
#   output$distPlot <- renderPlot({
#     x <- faithful$waiting
#     bins <- seq(min(x), max(x), length.out = input$bins + 1)
#     hist(x, breaks = bins, col = '#007bc2', border = "white",
#          xlab = "Waiting time to next eruption (in mins)",
#          main = "Histogram of waiting times")
#     })
# }
function(input, output) {
  
  # data("mtcars")
  # 
  # # output$plot1 <- renderPlot({
  # #  ggplot(data = mtcars, aes(x = mpg, y = hp)) + geom_point() 
  # # })
  # # 
  # mtcars$cyl = as.factor(mtcars$cyl)
  # output$datatable1 <- renderDT({
  #   datatable(mtcars, options=list(pageLength = 10,
  #                                  lengthMenu = c(5, 10, 15, 20)))
  # })
  # output$plot1 <- renderPlot({
  #  ggplot(data = mtcars, aes(x = mpg, y = hp, color=cyl)) + geom_point()
  # })
  
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
  
  # plot1 <- eventReactive(input$refreshPlot, {
  #   ggplot(data = filterData(),
  #          aes_string(x=input$xSelector, y=input$ySelector)) + geom_point()  
  # })
  # 
  # output$p1 <- renderPlot(plot1())  
    
  # output$p1 <- renderPlot({
  #   ggplot(data = filterData(),
  #          aes_string(x="mpg", y=input$colSelector)) + geom_point()
  # })
  
}