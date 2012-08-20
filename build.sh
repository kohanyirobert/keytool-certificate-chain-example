#! /usr/bin/env bash
set -o nounset
set -o errexit

rm -f ./out/*

source ./src/00_defaults.sh
source ./src/01_settings.sh

./src/02_genkeypair_root.sh
./src/03_genkeypair_intermediate.sh
./src/04_certreq_intermediate.sh
./src/05_gencert_intermediate.sh
./src/06_exportcert_root.sh
./src/07_importcert_intermediate.sh
./src/08_importcert_intermediate.sh
./src/09_genkeypair_subject.sh
./src/10_certreq_subject.sh
./src/11_gencert_subject.sh
./src/12_importcert_subject.sh
./src/13_exportcert_intermediate.sh
./src/14_importcert_subject.sh
./src/15_importcert_subject.sh
./src/16_exportcert_subject.sh
