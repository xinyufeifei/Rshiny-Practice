fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "monthSelector", label="Select the month:",
                  choices = monthChoices),
      selectInput(inputId = "ySelector", label="Select the column to plot vs day:",
                  choices = yAxisChoices)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Data", DTOutput("datatable1")),
        tabPanel("Plot", plotOutput("p1"))
      )
    )
  )
)

