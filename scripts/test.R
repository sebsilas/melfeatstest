

# library(melodyfeatures)

devtools::load_all(".")

install_melodyfeatures()

features <- extract_features(midi_dir = "/Users/sebsilas/sonic_logos_test_mid_only")

features
