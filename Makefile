TANGLE=notangle
WEAVE=noweave
CC=gcc
CFLAGS=-Wall -Werror

.PHONY: all
all: cv doc

cv: main.c
	$(CC) $(CFLAGS) -o $@ $<

doc: cv.pdf

cv.pdf: documentation.tex
	latexmk -pdf documentation
	mv documentation.pdf cv.pdf

main.c: main.nw
	$(TANGLE) -R$@ $< > $@

documentation.tex: main.nw
	$(WEAVE) -delay $< > $@

.PHONY: clean
clean:
	latexmk -f -C documentation
	rm -rf main.c cv cv.pdf documentation.tex

.PHONY: tidy
tidy:
	latexmk -f -c documentation
	rm -rf main.c documentation.tex
