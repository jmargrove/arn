test_that("there are these", {
  # Clear work space
  rm(list = ls())
  # Get the functions 
  import <- get("import")
  init <- get("init")
  
  init()
  install("ggplot2")
  import("ggplot2")
  
  
  # yaml file
  package_yaml_path <- paste0(getwd(), "/packages.yaml")
  expect_true(file.exists(package_yaml_path))

  
  # package folder
  package_dir <- paste0(getwd(), "/r_packages")
  expect_true(dir.exists(package_dir))
  
  
  # Clean up 
  file.remove(package_yaml_path)
  system(paste0("rm -rf ", package_dir))
  
  
  expect_true(F)
})
