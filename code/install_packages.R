### Title:    Install R Packages
### Author:   Kyle M. Lang
### Created:  2022-11-10
### Modified: 2022-11-10

install.packages(c("psychTools", "labelled"),
                 dependencies = TRUE,
                 repos = "https://cloud.r-project.org")

update.packages()
