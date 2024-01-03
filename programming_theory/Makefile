all: homework1

clean:
	latexmk -c
	rm -f *.pdf *.xdv

%: %.tex
	latexmk -xelatex -shell-escape $^
	latexmk -c

.PHONY: all clean