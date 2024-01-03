all: homework3 homework4 useful_proofs

clean:
	latexmk -c
	rm -f *.pdf *.xdv

%: %.tex
	latexmk -xelatex -shell-escape $^
	latexmk -c

.PHONY: all clean