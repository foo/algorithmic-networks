FILE = vcemb-locality
FILES = 
PICT = 

all: $(FILE).pdf

%.pdf: %.tex references.bib $(PICT) $(FILES)
	pdflatex -synctex=1 $<
	bibtex $*
	pdflatex -synctex=1 $<
	pdflatex -synctex=1 $<

clean: 
	rm -f *.aux *.toc *.log *.out *.nav *.snm *.vrb *.blg *.bbl *.vtc *.synctex.gz *.thm

distclean: clean
	rm -f $(FILE).pdf

.PHONY: clean distclean

