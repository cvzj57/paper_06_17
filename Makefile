radical=main
latex=pdflatex

defaut:
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
	rm $(radical).aux $(radical).dvi $(radical).log $(radical).pdf $(radical).ps suppl.ps suppl.pdf suppl.dvi suppl.aux suppl.log
