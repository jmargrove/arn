init <- function() {
  pkg_dir <- paste0(getwd(), "/r_packages")

  # Create r_packages dir
  if (!dir.exists((pkg_dir))) {
    dir.create(pkg_dir)
  }

  pkg_file <- paste0(getwd(), 'packages.R')
  if (!file.exists(pkg_file)) {
    file.create(pkg_file)
  }

  # Project name is the same as before
  projectName <- basename(getwd())

  content <- (list(
    "name" = projectName,
    "version" = "0.0.1"
  ))

  save(file = './packages.R', content)

}
