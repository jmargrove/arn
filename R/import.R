import <- function(name) {
    if (regexpr('^./', name)[1] == -1) {
        return(source(name)$value)
    } else {
        try(library(name, lib.loc = pkg_dir, character.only = TRUE))
    }
}
