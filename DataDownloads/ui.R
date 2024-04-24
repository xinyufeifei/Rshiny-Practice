fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "cylSelector", label="Select a cylinder", choices = cylinderChoices),
    ),
    mainPanel(
      downloadButton("downloadData", "Download Data"),
      DTOutput("datatable1")
    )
  )
)


