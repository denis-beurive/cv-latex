# This document illustrates the use of the "make" tool to produce PDF files from LaTeX sources.
# 
#      Generate the PDF file:         make all
#      Clean all the temporary files: make clean
#
# You may need to customise this document. 

LATEX_EXE     = /usr/bin/lualatex
LATEX_OPTIONS = -halt-on-error -shell-escape -interaction=nonstopmode --output-format=pdf
PDF_VIEWER    = xdg-open 

perso.pdf: perso.tex cv.cls
	${LATEX_EXE} ${LATEX_OPTIONS} $< && echo "SUCCESS" && ${PDF_VIEWER} $@

all: perso.pdf

clean:
	rm -f *.log *.out *.aux

clear: clean
	rm -f *.pdf

