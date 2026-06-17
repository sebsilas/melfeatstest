

# library(melodyfeatures) or devtools::load_all(".")

install_melodyfeatures()

mid_dir <- "/Users/sebsilas/sonic_logos_test_mid_only"

features <- extract_features(midi_dir = mid_dir)

features
