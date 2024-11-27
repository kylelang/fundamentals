### Title:    Process Titanic Data
### Author:   Kyle M. Lang
### Created:  2021-12-23
### Modified: 2021-12-23

rm(list = ls(all = TRUE))

library(dplyr)

dataDir <- "../data/"
dat1    <- read.csv(paste0(dataDir, "titanic.csv"))

## Get rid of upper case letters in names:
colnames(dat1) <- tolower(colnames(dat1))

## Give some variables shorter names:
dat1 <- rename(dat1,
               class = pclass,
               siblings_spouses = siblings.spouses.aboard,
               parents_children = parents.children.aboard)

## Convert categorical variables to factors:
dat1$survived <- factor(dat1$survived, labels = c("no", "yes"))
dat1$class    <- factor(dat1$class, labels = c("1st", "2nd", "3rd"))
dat1$sex      <- factor(dat1$sex)

## Save data:
saveRDS(dat1, paste0(dataDir, "titanic.rds"))
