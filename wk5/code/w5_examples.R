### Title:    Week 5 R Examples
### Author:   Kyle M. Lang 
### Created:  2023-12-08
### Modified: 2023-12-08

rm(list = ls(all = TRUE))

#install.packages("ICC", repos = "https://cloud.r-project.org")

library(performance)
library(ICC)
library(lme4)
library(dplyr)
library(sandwich)
library(lmtest)

dataDir <- "../../data/"

LeeBryk <- read.csv(paste0(dataDir, "LeeBryk.csv")) %>%
  mutate(sector = factor(sector, labels = c("public", "private")))

dim(LeeBryk)
str(LeeBryk)
head(LeeBryk)

saveRDS(LeeBryk, paste0(dataDir, "lee_bryk.rds"))

lmer(math ~ ses + sector + (1 | schoolid), data = LeeBryk) %>% icc()

ICCbare(x = schoolid, y = math, data = LeeBryk)

summary(LeeBryk)

fit <- lm(math ~ ses + sector, data = LeeBryk)

ICCbare(LeeBryk$schoolid, resid(fit))

v <- vcovCL(fit, ~ schoolid)

summary(fit)$coef
coeftest(fit, vcov = v)
