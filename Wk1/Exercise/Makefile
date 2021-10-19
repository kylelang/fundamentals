# -*- Makefile -*-

all: exercises solutions

exercises: exercise1.Rnw
	Rscript --vanilla render.R exercise1 FALSE

solutions: exercise1.Rnw
	Rscript --vanilla render.R exercise1 TRUE
