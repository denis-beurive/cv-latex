# Generate the PDF files:                           make 
# Clean all the temporary files:                    make clean
# Clean all the temporary files and the PDF files : make clear

LATEX_EXE     = /usr/bin/lualatex
LATEX_OPTIONS = -halt-on-error -shell-escape -interaction=nonstopmode --output-format=pdf
PDF_VIEWER    = xdg-open 

all: perso.pdf

perso.pdf: perso.tex cv.cls
	${LATEX_EXE} ${LATEX_OPTIONS} $< && echo "SUCCESS" && ${PDF_VIEWER} $@

clean:
	rm -f *.log *.out *.aux

clear: clean
	rm -f *.pdf

