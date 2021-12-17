### Title:    Deploy Practice Exam as Shiny App
### Author:   Kyle M. Lang
### Created:  2021-12-15
### Modified: 2021-12-15

library(rsconnect)

rsconnect::deployApp("./practice_exam.Rmd")
