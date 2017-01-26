.PHONY: all clean

basepart := fancycourse16-exam-draft
pdf := $(basepart)-$(shell date "+%Y-%m-%dT%H\:%M").pdf
latest := $(basepart).pdf
mastertex := master.tex
alltex := $(wildcard *.tex) $(wildcard *.sty)
temp := latex.out/master.pdf

mkfilepath := $(abspath $(lastword $(MAKEFILE_LIST)))
dirpath := $(dir $(mkfilepath))

all: $(temp)

$(temp) : $(alltex) Makefile
	$(dirpath)latexrun -o $(temp) $(mastertex)

release: $(temp)
	mv $(temp) $(pdf)
	ln -sf $(pdf) $(latest)

$(pdf): $(alltex) Makefile
	$(dirpath)latexrun -o $(pdf) $(mastertex)
	ln -s -f $(pdf) $(latest)

clean:
	rm -f *.pdf
	rm -rf latex.out/
