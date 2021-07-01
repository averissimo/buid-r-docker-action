#!/bin/bash

cd $GITHUB_WORKSPACE/repo/vignettes

export RENDER_SITE=$1
export WEBHOOK=$2

echo $1
echo $2

echo render-site: $RENDER_SITE
echo webhook: $WEBHOOk

echo DISCORD_WEBHOOK="DISCORD_WEBHOOK" >> ~/.Renviron

Rscript -e "devtools::install('..', dependencies = TRUE)"

Rscript /entrypoint.R
