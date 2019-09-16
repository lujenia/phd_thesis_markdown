# BASEDIR ends with "/"
BASEDIR=$(dir $(realpath $(firstword $(MAKEFILE_LIST))))
INPUTDIR=${BASEDIR}source
OUTPUTDIR=${BASEDIR}output
STYLEDIR=${BASEDIR}style

BIBFILE=${INPUTDIR}/references.bib

DOCNAME=BA_JulianeSeidl



help:
	@echo ' 																	  '
	@echo 'Makefile for the Markdown thesis                                       '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make pdf                         generate a PDF file  			  '
	@echo '                                                                       '
	@echo ' 																	  '
	@echo ' 																	  '
	@echo 'get local templates with: pandoc -D latex/html/etc	  				  '
	@echo 'or generic ones from: https://github.com/jgm/pandoc-templates		  '


# for other csl styles look at https://github.com/citation-style-language/styles
pdf:
	pandoc \
	${INPUTDIR}/01_title_page.md \
	-o ${OUTPUTDIR}/${DOCNAME}.pdf \
	-H ${STYLEDIR}/preamble.tex \
	--filter pandoc-crossref \
	--template=${STYLEDIR}/template.tex \
	--csl=${STYLEDIR}/ref_format.csl \
	--highlight-style pygments \
	-V fontsize=12pt \
	-V papersize=a4paper \
	-V documentclass:report \
	-V lang:de-DE \
	-V mainlang:german \
	-V author-meta:"Juliane Seidl" \
	-V title-meta:"Bachelorarbeit Juliane Seidl" \
	-N \
	--pdf-engine=xelatex

.PHONY: help pdf
