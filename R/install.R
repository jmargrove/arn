install <- function(pkg = NULL) {
  # 
  
  pkg <- "ggplot2"
  pkg_dir <- paste0(getwd(), "/r_packages")

  while (!dir.exists("r_packages")) {
    # Create r_packages dir
    if (!dir.exists((pkg_dir))) {
      dir.create(pkg_dir)
    }
  }

  install.packages(pkg, lib = pkg_dir)

  packages <- yaml::read_yaml(file = "./packages.yaml")

  dep <- list()
  dep[[pkg]] <- toString(packageVersion(pkg, lib.loc = pkg_dir))

  if (is.null(packages$depencies)) {
    packages$depenencies <- c(dep)
  } else {
    append(packages$depenencies, dep)
  }

  yaml::write_yaml(file = "./packages.yaml", packages)
}
