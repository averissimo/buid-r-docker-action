
devtools::install('..', dependencies = TRUE)

# README
if (file.exists('_README.Rmd')) {
  # Render README
  rmarkdown::render('_README.Rmd', output_format = 'github_document', output_file = 'README.md')
  
  # Remove intermediate html file
  if (file.exists(file.path('README.html'))) { unlink('README.html') }

  # Remove previous README and files
  if (file.exists(file.path('..', 'README.md'))) { unlink('../README.md') }
  if (dir.exists(file.path('..', 'README_files'))) { unlink('../README_files', recursive = TRUE, force = TRUE) }

  # Move new README to root
  if (file.exists('README.md')) { file.rename('README.md', '../README.md') }
  if (dir.exists('README_files')) { file.rename('README_files', '../README_files') }
}


if (file.exists('_site.yml') && file.exists('index.Rmd') && Sys.getenv('RENDER_SITE') == "1") {
  # Render site
  rmarkdown::render_site(output_format = 'html_document')
}
