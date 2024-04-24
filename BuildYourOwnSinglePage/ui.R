fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "monthSelector", label="Select the month:",
                  choices = monthChoices),
      selectInput(inputId = "ySelector", label="Select the column to plot vs day:",
                  choices = yAxisChoices),
    ),
    mainPanel(
      fluidRow(
        column(width = 6, DTOutput("datatable1")),
        column(width = 6, plotOutput("p1"))
      )
    )
  )
)

