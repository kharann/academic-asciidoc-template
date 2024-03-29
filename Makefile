PDVARS += --verbose
PDVARS += --highlight-style=pygments # the default theme

.PHONY: help
pdf:
	asciidoctor-pdf -r asciidoctor-bibtex -a docinfodir="./configuration/print" -a pdf-theme="./themes/ntnu-theme.yml" -a pdf-fontsdir="./fonts" index.adoc

dpdf:
	docker run --rm -it --privileged -u $(id -u):$(id -g) -v `pwd`:/documents asciidoctor/docker-asciidoctor \
	asciidoctor-pdf -r asciidoctor-bibtex -a stem -a docinfodir="./configuration/print" -a pdf-theme="./themes/ntnu-theme.yml" -a pdf-fontsdir="./fonts" index.adoc
