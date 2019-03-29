# process LaTeX

# based on http://www.sigterm.de/misc/src/Makefile-latex

# Basename for result
TARGET=utaexample
SRC=*.tex *.bib *.eps
LATEX=pdflatex


all: ${TARGET}.pdf

${TARGET}.pdf: ${SRC}
	${LATEX} ${TARGET}
	bibtex ${TARGET}
	${LATEX} ${TARGET}
	${LATEX} ${TARGET}

objects := $(wildcard *.aux *.bbl *.blg *.out *.ilg *.ind *.log *.toc *.lot *.lof)


clean: $(objects)
	rm $(objects) 
	

