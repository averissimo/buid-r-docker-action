#!/bin/bash

docker build --pull . -f Dockerfile.build -t betashil/rmd-render-site
