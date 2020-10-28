export <- (function() {
  export_inner <- function(content) {
    source("./module.R")$value(content)
  }
  return(export_inner)
})()
