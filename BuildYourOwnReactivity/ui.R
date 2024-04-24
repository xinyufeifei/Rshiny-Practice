library(shiny)

fluidPage(

  selectInput(inputId = "monthSelector", label="Select the month:",
              choices = monthChoices),
  
  selectInput(inputId = "ySelector", label="Select the column to plot vs day:",
              choices = yAxisChoices),

  DTOutput("datatable1"),
  plotOutput("p1")  
)