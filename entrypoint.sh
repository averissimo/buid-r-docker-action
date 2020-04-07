#!/bin/sh -l

Rscript -e "list.files('$GITHUB_WORKSPACE')"

#Rscript -e "rmarkdown::clean_site('/data/vignettes')"
#sleep 3
#Rscript -e "rmarkdown::render_site('/data/vignettes', output_format = rmarkdown::html_document())"

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
