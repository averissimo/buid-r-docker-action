#!/bin/bash

docker build --pull . -f Dockerfile.build -t betashil/rmd-render-site
docker push betashil/rmd-render-site
