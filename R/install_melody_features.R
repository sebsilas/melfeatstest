

#' Install Python dependencies
#'
#' Creates the dedicated melodyfeatures Python environment and
#' installs required packages.
#'
#' @export

install_melodyfeatures <- function(
    envname = "r-melodyfeatures",
    force = FALSE
) {

  if (!reticulate::virtualenv_exists(envname)) {

    message("Creating virtual environment: ", envname)

    reticulate::virtualenv_create(envname)
  }

  if (force) {

    reticulate::virtualenv_install(
      envname,
      packages = c(
        "melody-features"
      ),
      ignore_installed = TRUE
    )

  } else {

    reticulate::virtualenv_install(
      envname,
      packages = c(
        "melody-features"
      )
    )

  }

  invisible(TRUE)
}
