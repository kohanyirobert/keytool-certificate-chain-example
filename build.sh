#! /usr/bin/env bash
set -o nounset
set -o errexit

rm -rf ./out
mkdir ./out

source ./src/00_defaults.sh
source ./src/01_settings.sh

bash ./src/02_genkeypair_root.sh
bash ./src/03_genkeypair_intermediate.sh
bash ./src/04_certreq_intermediate.sh
bash ./src/05_gencert_intermediate.sh
bash ./src/06_exportcert_root.sh
bash ./src/07_importcert_intermediate.sh
bash ./src/08_importcert_intermediate.sh
bash ./src/09_genkeypair_subject.sh
bash ./src/10_certreq_subject.sh
bash ./src/11_gencert_subject.sh
bash ./src/12_importcert_subject.sh
bash ./src/13_exportcert_intermediate.sh
bash ./src/14_importcert_subject.sh
bash ./src/15_importcert_subject.sh
bash ./src/16_exportcert_subject.sh
