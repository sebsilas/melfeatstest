
get_python_module <- function(
    envname = "r-melodyfeatures"
) {

  if (!reticulate::virtualenv_exists(envname)) {

    stop(
      "Python environment not found.\n",
      "Run install_melodyfeatures() first."
    )
  }

  reticulate::use_virtualenv(
    envname,
    required = TRUE
  )

  reticulate::py_run_string(
    "
from warnings import filterwarnings
filterwarnings('ignore')
"
  )

  reticulate::import(
    "melody_features",
    delay_load = FALSE
  )
}
