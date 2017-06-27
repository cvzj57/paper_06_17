radical=main
latex=pdflatex

defaut: clean
	$(latex) $(radical).tex
	bibtex $(radical)
	$(latex) $(radical).tex
	$(latex) $(radical).tex
	$(latex) $(radical).tex

suppl:
	$(latex) suppl.tex
	$(latex) suppl.tex

abstract:
	$(latex) abstract.tex
	$(latex) abstract.tex

all:defaut suppl

clean:
	@(rm $(radical).{aux,log,pdf,bbl,blg} suppl.{pdf,dvi,aux,log};true)
