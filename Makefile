radical=main
latex=pdflatex

defaut: clean
	(cd data; make)
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

warn:
	@(awk '/Warning/,/^$$/{if ($$0!~/^$$/) {print $0}}' main.log)

all:defaut suppl

clean:
	@(rm $(radical).{aux,log,pdf,bbl,blg} suppl.{pdf,dvi,aux,log};true)
