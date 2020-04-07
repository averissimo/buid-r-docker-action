#!/bin/bash

docker build . -f Dockerfile.build -t betashil/rmd-render-site
docker push betashil/rmd-render-site
