# -*- Makefile -*-

TARGET = logistic_regression_diagnostics.pdf
DEST = ../

all: $(TARGET)
	
%.pdf: %.tex
	latexmk -pdf -f $^

%.tex: %.Rnw
	Rscript -e "knitr::knit('$^')"

.PHONY: nuke clean tidy

nuke: clean
	rm -f cache/* figure/* $(TARGET)

tidy: clean
	mv $(TARGET) $(DEST)

clean:
	rm -f *.tex *.aux *.log *.out *.nav *.snm *.toc *.vrb *.bbl *.blg *.fdb_latexmk *.fls
