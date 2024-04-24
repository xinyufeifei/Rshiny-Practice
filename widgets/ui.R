library(shiny)

fluidPage(
  # textInput(inputId = "textInput", label = "Enter text",
  #           value = "Default Text", placeholder = "")
  # numericInput(inputId = "numeric", label = "Enter a number", value = 5, min = 1, max = 10, step = 1)
  # checkboxInput(inputId = "checkbox", label = "Check or uncheck", value = F),
  # checkboxGroupInput(inputId = "multi checkbox", label = "Check or uncheck", 
  #                    choices = c("Choice1", "Choice2", "Choice3"))
  # selectInput(inputId = "select", label = "Select", 
  #             choices = c("Choice1", "Choice2", "Choice3"))
  #verbatimTextOutput("text1")
  #tableOutput("table1")
  # DTOutput("datatable1"),
  # plotOutput("plot1")
  # selectInput(inputId = "xSelector", label="Select the x axis:",
  #             choices = xAxisChoices),
  # selectInput(inputId = "ySelector", label="Select the y axis:",
  #             choices = yAxisChoices),
  # selectInput(inputId = "cylSelector", label="Select a cylinder",
  #             choices = cylinderChoices),
  # actionButton("refreshPlot", label="Refresh"),
  # 
  # plotOutput("p1")

  selectInput(inputId = "monthSelector", label="Select the month:",
              choices = monthChoices),
  
  selectInput(inputId = "ySelector", label="Select the column to plot vs day:",
              choices = yAxisChoices),

  DTOutput("datatable1"),
  plotOutput("p1")  
  
  # actionButton("refreshPlot", label="Refresh"),
  # 
  # plotOutput("p1")
)

# ui <- page_sidebar(
#   title = "Hello Shiny!",
#   sidebar = sidebar(
#     sliderInput(
#       inputId = "bins",
#       label = "Number of bins:",
#       min = 1,
#       max = 50,
#       value = 30
#     )
#   ),
#   plotOutput(outputId = "distPlot")
# )