radical=main

defaut:
	latex $(radical).tex
	bibtex $(radical)
	latex $(radical).tex
	latex $(radical).tex
	latex $(radical).tex
	dvips $(radical)
	ps2pdf $(radical).ps $(radical).pdf

suppl:
	latex suppl.tex
	latex suppl.tex
	dvips suppl
	ps2pdf suppl.ps suppl.pdf

abstract:
	latex abstract.tex
	latex abstract.tex
	dvips abstract
	ps2pdf abstract.ps abstract.pdf

all:defaut suppl

clean:
	rm $(radical).aux $(radical).dvi $(radical).log $(radical).pdf $(radical).ps suppl.ps suppl.pdf suppl.dvi suppl.aux suppl.log
