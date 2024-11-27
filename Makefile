# -*- Makefile -*-

all: index.html

## Update course page:
index.html: index.Rmd
	Rscript -e "rmarkdown::render('$^')" 
