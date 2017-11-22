FILE = paper
TEX_FILES = paper.tex

all: $(FILE).pdf 

%.pdf: %.tex references.bib $(PICT) $(TEX_FILES)
	pdflatex -synctex=1 $<
	bibtex $*
	pdflatex -synctex=1 $<
	pdflatex -synctex=1 $<

clean: 
	latexmk -c
	rm -f $(FILE).synctex.gz $(FILE).vtc $(FILE).thm

distclean: clean
	latexmk -C
	rm -f $(FILE).bbl

.PHONY: all clean

