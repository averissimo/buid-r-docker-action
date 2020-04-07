#!/bin/bash

docker build . -f Dockerfile.build
docker build . -t betashil/rmd-render-site
docker push betashil/rmd-render-site
