
# NOMES
TEXFILE=main.tex

# REGRAS
PDFFILE=$(TEXFILE:%.tex=%.pdf)

all: $(PDFFILE) 

$(PDFFILE): main.tex
	pdflatex $(@:%.pdf=%.tex)
	bibtex $(@:%.pdf=%)
	pdflatex $(@:%.pdf=%.tex)
	pdflatex $(@:%.pdf=%.tex)

clean:
	@rm -vf *.aux *.glo *.gls *.glg *.dvi *.ps *.out *.brf *.ist *.spl
	@rm -vf *.lo[gtfa] *.toc *.idx *.inc *.ilg *.ind *.bbl *.blg *.backup
	@find . -name "*.bak" -exec rm -fv {} \;
	@find . -name "*~" -exec rm -fv {} \;
	@find . -name "*.aux" -exec rm -fv {} \;
	@find . -name "*.log" -exec rm -fv {} \;

deepclean: clean
	@rm -vf main.pdf 
