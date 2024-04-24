library(shiny)
library(ggplot2)

# data("mtcars")
# 
# # colChoices <- colnames(mtcars)
# xAxisChoices <- colnames(mtcars)
# yAxisChoices <- colnames(mtcars)
# 
# cylinderChoices <- unique(mtcars$cyl)

data("airquality")

yAxisChoices <- c('Wind', 'Temp')

monthChoices <- unique(airquality$Month)
