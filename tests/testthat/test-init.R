test_that("Arn init creates the initial file structure in the root of the dir", {
  # Clear the workspace
  rm(list = ls())

  # Get the function
  init <- get("init")

  # Run init function
  init()

  # yaml file
  package_yaml_path <- paste0(getwd(), "/packages.yaml")
  expect_true(file.exists(package_yaml_path))
  file.remove(package_yaml_path)

  # package folder
  package_dir <- paste0(getwd(), "/r_packages")
  expect_true(dir.exists(package_dir))
  system(paste0("rm -rf ", package_dir))
})
