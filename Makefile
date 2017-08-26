#!/usr/bin/env make

.PHONY: all clean cleanall run
.SUFFIXES: .tex .pdf

DOCS = presentation
TEXS = $(patsubst %, %.tex, $(DOCS))

.tex.pdf:
	-latexmk -quiet -f -shell-escape -pdf $<

tex := $(patsubst %.tex, %.pdf, $(TEXS))

all: clean $(tex)

clean:
	-latexmk -quiet -c $(TEXS)
	@$(RM) $(patsubst %.tex, %.*.*, $(TEXS))

cleanall: clean
	-latexmk -quiet -C $(TEXS)
	@$(RM) *~ *.nav *.pyc *.pyg *.snm *.vrb *.retry
	-rm -rf _minted-presentation

run: all
