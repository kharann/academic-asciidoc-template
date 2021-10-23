PDVARS += --verbose
PDVARS += --highlight-style=pygments # the default theme

.PHONY: help
pdf-print:
	asciidoctor-pdf -r asciidoctor-bibtex -a stem -a docinfodir="./configuration/print" -a pdf-theme="./themes/ntnu-theme.yml" index.adoc