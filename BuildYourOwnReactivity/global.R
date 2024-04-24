library(shiny)
library(ggplot2)
library(DT)

data("airquality")

yAxisChoices <- c('Wind', 'Temp')

monthChoices <- unique(airquality$Month)
