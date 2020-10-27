init <- function() {
    pkg_dir <- paste0(getwd(), "/r_packages")

    # Create r_packages dir
    if (!dir.exists((pkg_dir))) {
        dir.create(pkg_dir)
    }

    pkg_file <- paste0(getwd(), '/packages.yaml')
    file.create(pkg_file)


    # Project name is the same as before
    projectName <- basename(getwd())

    # Create a yaml file for the project at the root.
    yaml::write_yaml(file = pkg_file, list(
    "name" = projectName,
    "version" = "0.0.1"
  ))
}
