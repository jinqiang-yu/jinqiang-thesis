TRGT = thesis
.PHONY: all r echo clean allclean wek b w $(TRGT).pdf

all: r
#all: nopdftex

# Make thesis
r: TRGT=thesis

r: echo thesis.pdf

echo:
	@echo "Making $(TRGT)"

clean:
	@-latexmk -C $(TRGT)
	@rm -fv $(TRGT).bbl

$(TRGT).pdf:
	@echo "Building the pdf..."
	@-latexmk -pdf $(TRGT)
	@echo "Done."

l:
	pdflatex $(TRGT)

b:
	bibtex $(TRGT)

### Makefile ends here
