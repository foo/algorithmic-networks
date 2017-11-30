FILE = thesis
TEX_FILES = thesis.tex cache-management.tex dynamic-mapping.tex static-mapping.tex introduction.tex appendix.tex intro-mapping.tex contribution.tex macros.tex related-work.tex

all: $(FILE).pdf 

%.pdf: %.tex $(PICT) $(TEX_FILES) references.bib 
	pdflatex -synctex=1 $<
	bibtex $*
	pdflatex -synctex=1 $<
	pdflatex -synctex=1 $<

clean: 
	rm -f *.aux *.toc *.log *.out *.nav *.snm *.vrb *.blg *.bbl *.vtc *.synctex.gz *.thm *.fdb_latexmk *.synctex thesis.run.xml *.bcf

distclean: clean
	rm -f $(FILE).pdf

.PHONY: all clean

