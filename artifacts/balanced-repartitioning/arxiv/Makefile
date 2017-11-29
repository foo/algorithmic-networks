all: paper.pdf

paper.pdf: paper.tex 
	pdflatex -synctex=1 $<
	bibtex paper
	pdflatex -synctex=1 $<
	pdflatex -synctex=1 $<

clean: 
	rm -f *.aux *.toc *.log *.out *.nav *.snm *.vrb *.blg *.bbl *.vtc *.synctex.gz *.thm

distclean: clean
	rm -f paper.pdf

.PHONY: clean distclean

