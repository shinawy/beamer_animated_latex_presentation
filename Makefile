FileName=beamerAnimatedTemplate.tex
TemplateFile=beamerAnimatedTemplate.tex

# Makefile for building the LaTeX document
run: $(FileName)
	pdflatex $(FileName)
	pdflatex $(FileName)
	@echo "Cleaning auxiliary files..."
	@rm -f *.blg *.nav *.bbl *.aux *.log *.out *.snm *.toc *.vrb *.synctex.gz

# Build the comprehensive animation template
template: $(TemplateFile)
	pdflatex $(TemplateFile)
	pdflatex $(TemplateFile)
	@echo "Cleaning auxiliary files..."
	@rm -f *.blg *.nav *.bbl *.aux *.log *.out *.snm *.toc *.vrb *.synctex.gz

# Build without cleaning (useful for debugging)
run-keep: $(FileName)
	pdflatex $(FileName)
	pdflatex $(FileName)

# Alternative target if you need bibliography support
run-with-bib: $(FileName)
	pdflatex $(FileName)
	biber $(basename $(FileName))
	pdflatex $(FileName)
	pdflatex $(FileName)
	@echo "Cleaning auxiliary files..."
	@rm -f *.nav *.bbl *.aux *.log *.out *.snm *.toc *.vrb *.synctex.gz *.bcf *.blg *.run.xml
	

rmpdf:
	rm -f $(basename $(FileName)).pdf
clean:
	rm -f *.blg *.nav *.bbl *.aux *.log *.out *.snm *.toc *.vrb *.synctex.gz
