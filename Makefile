filename = paper

.PHONY: $(filename).pdf all cleanall clean

all: $(filename).pdf

$(filename).pdf: $(filename).tex
	latexmk -pdf -use-make $<

cleanall: clean
	latexmk -C

clean:
	latexmk -c
	$(RM) *.bbl *.lol *.tdo
