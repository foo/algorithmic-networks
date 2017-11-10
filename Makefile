FILE = paper
TEX_FILES = paper.tex

all: $(FILE).pdf 

%.pdf: %.tex $(PICT) $(TEX_FILES) references.bib 
	pdflatex -synctex=1 $<
	bibtex $*
	pdflatex -synctex=1 $<
	pdflatex -synctex=1 $<

clean: 
	rm -f *.aux *.toc *.log *.out *.nav *.snm *.vrb *.blg *.bbl *.vtc *.synctex.gz *.thm *.fdb_latexmk *.synctex

distclean: clean
	rm -f $(FILE).pdf

.PHONY: all clean

