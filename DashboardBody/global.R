library(shiny)
library(shinydashboard)


data("mtcars")

cylinderChoices <- unique(mtcars$cyl)
