### Title:    Lecture 6 Examples
### Author:   Kyle M. Lang
### Created:  2021-12-17
### Modified: 2021-12-17

dataDir <- "../data/"
fn      <- "utmb_2017.csv"

utmb <- read.csv(paste0(dataDir, fn))

dat1 <- data.frame(Sex = factor(grepl("H$", utmb$category), labels = c("Female", "Male")),
                   Finish = factor(utmb$time != " ", labels = c("No", "Yes"))
                   )

saveRDS(dat1, paste0(dataDir, "utmb_finish_2017.rds"))
