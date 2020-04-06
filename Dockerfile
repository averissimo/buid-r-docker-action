FROM rocker/tidyverse:latest

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libudunits2-dev \
  libudunits2-dev \
  libpoppler-cpp-dev \
  libgdal-dev gdal-bin libproj-dev proj-data proj-bin libgeos-dev && \
  rm -rf /var/lib/apt/lists/*

RUN installGithub.r averissimo/r-analysis-covid19

VOLUME ["/data"]

CMD /usr/local/bin/Rscript -e "rmarkdown::render_site('/data/vignettes', output_format = rmarkdown::html_document())"

#CMD ["-c"]

