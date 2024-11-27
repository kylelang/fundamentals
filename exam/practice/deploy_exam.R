### Title:    Deploy Practice Exam as Shiny App
### Author:   Kyle M. Lang
### Created:  2021-12-15
### Modified: 2023-01-17

                                        #update.packages()
                                        #library(devtools)
                                        #install_github("rstudio/gradethis")

library(rsconnect)

rsconnect::deployApp("./practice_exam.Rmd")
