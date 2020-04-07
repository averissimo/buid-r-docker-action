#!/bin/sh -l

Rscript -e "rmarkdown::render_site('$GITHUB_WORKSPACE/repo/vignettes', output_format = rmarkdown::html_document())"

