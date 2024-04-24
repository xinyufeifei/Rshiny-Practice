library(shiny)
library(ggplot2)
library(DT)

data("mtcars")

xAxisChoices <- colnames(mtcars)
yAxisChoices <- colnames(mtcars)
cylinderChoices <- unique(mtcars$cyl)

