
.onLoad <- function(libname, pkgname) {

  env <- "r-melodyfeatures"

  if (reticulate::virtualenv_exists(env)) {
    reticulate::use_virtualenv(env, required = FALSE)
  }
}
