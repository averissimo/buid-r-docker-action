#FROM rocker/tidyverse:latest
FROM alpine:3.10

#RUN apt-get update -qq && apt-get -y --no-install-recommends install \
#  libudunits2-dev \
#  libudunits2-dev \
#  libpoppler-cpp-dev \
#  libgdal-dev gdal-bin libproj-dev proj-data proj-bin libgeos-dev && \
#  rm -rf /var/lib/apt/lists/*

#RUN installGithub.r averissimo/r-analysis-covid19

#VOLUME ["/data"]

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

