library(shiny)
library(ggplot2)

data("airquality")

yAxisChoices <- c('Wind', 'Temp')

monthChoices <- unique(airquality$Month)

