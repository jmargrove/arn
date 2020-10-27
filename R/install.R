install <- function(pkg) {
  pkg_dir <- paste0(getwd(), "/r_packages")

  while (!dir.exists("r_packages")) {
    # Create r_packages dir
    if (!dir.exists((pkg_dir))) {
      dir.create(pkg_dir)
    }
  }

  install.packages(pkg, lib = pkg_dir)

  pakages <- yaml::read_yaml(file = "./packages.yaml")
  if (!package$depencies) {
    packages$depenencies <- c(
      list(pkg = packageVersion(pkg))
    )
  } else {
    append(packages$depenencies, list(pkg = packageVersion(pkg)))
  }
}
