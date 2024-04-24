fluidPage(
  sidebarLayout(
    sidebarPanel(
      fileInput("file1", "Upload a csv file",
                multiple = FALSE,
                accept = c(".csv")
      ),
      textInput("sep", label = "Enter the Separator character,", value = ","),
      checkboxInput("header", label = "file contains a header", value = TRUE)
    ),
    mainPanel(
      DTOutput("data1")
    )
  )
)


