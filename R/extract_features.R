
#' Extract melody features
#'
#' Extracts all available melodic features from a directory
#' of MIDI files.
#'
#' @param midi_dir Directory containing MIDI files.
#' @param skip_idyom Passed to Python get_all_features().
#' @param output_file Optional CSV output path.
#'
#' @return Tibble of extracted features.
#' @export

extract_features <- function(
    midi_dir,
    skip_idyom = TRUE,
    output_file = NULL
) {

  if (!dir.exists(midi_dir)) {
    stop("Directory does not exist: ", midi_dir)
  }

  mf <- get_python_module()

  features <- mf$get_all_features(
    midi_dir,
    skip_idyom = skip_idyom
  )

  features <- reticulate::py_to_r(features)

  features <- tibble::as_tibble(features)

  if (!is.null(output_file)) {

    utils::write.csv(
      features,
      output_file,
      row.names = FALSE
    )
  }

  features
}
