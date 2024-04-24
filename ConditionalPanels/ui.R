fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "xSelector", label="Select the x axis:", choices = xAxisChoices),
      selectInput(inputId = "ySelector", label="Select the y axis:", choices = yAxisChoices),
      selectInput(inputId = "cylSelector", label="Select a cylinder", choices = cylinderChoices),
      checkboxInput("showTitle", label = "Check to enter title", value = FALSE),
      conditionalPanel(condition = "input.showTitle == true", 
                       textInput("title", label = "Enter a plot title", placeholder = "Title")),
      actionButton("refreshPlot", label = "Refresh")
    ),
    mainPanel(
      plotOutput("p1")
    )
  )
)

