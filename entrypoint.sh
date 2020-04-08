#!/bin/bash

cd $GITHUB_WORKSPACE/repo/vignettes

export RENDER_SITE=$1

Rscript /entrypoint.R
