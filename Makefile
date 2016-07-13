all: 
	latexmk -pv

update:
	#continuously-update
	latexmk -pvc

clean:
	latexmk -c
	rm *.bbl *.dvi *.synctex.gz *-blx.bib *.run.xml

distclean:
	latexmk -C
	rm *.bbl
