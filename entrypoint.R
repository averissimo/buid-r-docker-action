
# README
if (file.exists('_README.Rmd')) {
  # Render README
  rmarkdown::render('_README.Rmd', output_format = 'github_document', output_file = 'README.md')
  
  # Remove intermediate html file
  if (file.exists(file.path('README.html'))) { unlink('README.html') }

  # Remove previous README and files
  if (file.exists(file.path('..', 'README.md'))) { unlink('../README.md') }
  if (dir.exists(file.path('..', 'README_files'))) { unlink('../README.md', recursive = TRUE, force = TRUE) }

  # Move new README to root
  file.rename('README.md', '../README.md')
  file.rename('README_files', '../README_files')
}

# Render site
rmarkdown::render_site(output_format = 'html_document')
