#------------------------------------------------------------------------------#
#
# Main Makefile 
#
#------------------------------------------------------------------------------#

TEX_FILES=Gaav.tex
PDF_FILES=$(TEX_FILES:.tex=.pdf)
NON_FILES=$(TEX_FILES:.tex=)
DIRS= 01-Introducao \
      02-Revisao    \
      03-Matrizes   \
      04-Equacoes

all: $(PDF_FILES)

RUBBER= rubber --inplace --quiet --short 
RUBBER_PDF= ${RUBBER} --pdf

%.pdf: %.tex $(wildcard *.tex) $(wildcard *.cls) $(wildcard *.sty) $(wildcard *.bib)
	${RUBBER_PDF} $(<:.tex=)

.PHONY: clean
clean:
	-@ rm -vf *~ .*~  *.bak \
                  *.aux *.bbl *.blg *.lof *.log *.lot *.out *.toc \
		  *.bcf *.run.xml .*.sw? *.synctex.gz
	-@ for T in $(NON_FILES) ; do ${RUBBER} --clean --verbose $$T ; done
	-@ for D in $(DIRS)      ; do make -C $$D clean               ; done

.PHONY: distclean
distclean: clean
	-@ rm -vf $(PDF_FILES)

#------------------------------------------------------------------------------#
