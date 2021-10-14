# -*- Makefile -*-

all: practical1.html practical1_answers.html

practical1.html: practical1.Rnw
	Rscript -e "
	rmarkdown::render(input = "practical1.Rmd", 
                    params = list(answers = FALSE),
                    output_file = "practical1.html",
                    envir = new.env()
                    )
  "
  
practical1_solutions.html: practical1.Rnw
	Rscript -e "
	rmarkdown::render(input = "practical1.Rmd", 
                    params = list(answers = TRUE),
                    output_file = "practical1.html",
                    envir = new.env()
                    )
  "
  
clean: