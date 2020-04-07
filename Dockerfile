FROM betashil/rmd-render-site:latest

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY entrypoint.R /entrypoint.R

ENTRYPOINT ["/entrypoint.sh"]
