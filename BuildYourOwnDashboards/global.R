library(shiny)
library(shinydashboard)
library(DT)
library(tidyverse)
library(data.table)


baseball <- as.data.frame(read_csv('~/Project/udemy/RShiny_by_Weis/BuildYourOwnDashboards/allBaseballData.csv'))

playerChoices <- unique(baseball$name)
statsChoices <- tail(colnames(baseball), 10)
teamChoices <- unique(baseball$franchName)
yearChoices <- unique(baseball$yearID)
