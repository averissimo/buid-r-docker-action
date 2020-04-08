#!/bin/bash

cd $GITHUB_WORKSPACE/repo/vignettes

export RENDER_SITE=$1

echo $1

echo $RENDER_SITE

Rscript /entrypoint.R
