.PHONY: all clean default test

default: pdf

PAPER = main
JUNK = *.ps *.dvi *.loc *.soc *.log *.out *.aux *.backup *~ *.blg *.bbl *.fls *.fdb_latexmk *.synctex.gz

# Define the tools we are going to use

# Rules for various parts of the target
pdf: $(PAPER).tex
	pdflatex -shell-escape -nonstopmode $(PAPER).tex
	bibtex  $(PAPER)
	pdflatex -shell-escape -nonstopmode $(PAPER).tex
	pdflatex -shell-escape -nonstopmode $(PAPER).tex


clean:
	rm -f $(JUNK) 
# $(PAPER).pdf
