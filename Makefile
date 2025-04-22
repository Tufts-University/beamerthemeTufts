#
# Build siles as PDFs
#
# Uses `latexmk` (https://ctan.org/pkg/latexmk?lang=en)
# or `tectonic` (https://tectonic-typesetting.github.io/)
#

# PDF viewer. Another alternatives are `xpdf` for Lunux
# On MacOS you can just use `open` to invoke default
# system viewer.
PDFVIEWER=evince

SRC=    example.tex

# 3-rd party files I am unlikely to modify
AUX=	beamerthemeTufts.sty \
	Tufts_univ_blue.pdf \
        Makefile

all: example.pdf

Tufts_univ_blue.pdf: Tufts_univ_blue.eps
	epstopdf Tufts_univ_blue.eps

TECTONIC_PATH := $(shell which tectonic)
USE_LATEX ?= no

LATEX=latexmk
LATEXFLAGS=-halt-on-error -g --pdf -f -shell-escape 
LATEXCLEAN=latexmk -C

ifneq ($(TECTONIC_PATH),)
    # tectonic is present, use it unnless overriden by USE_LATEX=yes
    ifneq ($(USE_LATEX),yes)
	    LATEX=tectonic
	    LATEXFLAGS=--outfmt=pdf --chatter=minimal
	    LATEXCLEAN=rm -f *.aux *.blg *.fls  *.out *.fdb_latexmk *.log  *.toc
    endif
endif

clean:
	$(LATEXCLEAN)
	rm -f example.pdf
	rm -f *.bbl *.brf
	rm -f *.nav *.snm *.vrb
	rm -f fig/*-converted-to.pdf

example.pdf: $(SRC) $(AUX)
	$(LATEX) $(LATEXFLAGS) example.tex

run: example.pdf
	$(PDFVIEWER) example.pdf

# Monitors TeX files and rebuilds PDF if they change.
# Requires:
# 1. https://github.com/inotify-tools/inotify-tools/wiki
# 2. https://github.com/quitesimpleorg/adhocify
.PHONY: watch
watch: example.pdf
	adhocify $(patsubst %,-w %,$(SRC) $(AUX)) --no-env ./rebuild.sh $^


