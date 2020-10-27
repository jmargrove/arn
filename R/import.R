import <- function(name) {
  if(TRUE){
    return(source(name)$value)
  } else {
    try(library(name, lib.loc = pkg_dir, character.only = TRUE))
  }
}
