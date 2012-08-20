#! /usr/bin/env bash
set -o nounset
set -o errexit

# Exporting the Subject's certificate into file.
"$JAVA_HOME/bin/keytool" -exportcert \
  -alias "$SUBJECT_ALIAS" \
  -file "$SUBJECT_CERTIFICATE" \
  -keystore "$SUBJECT_KEYSTORE" \
  -rfc \
  -storepass "$SUBJECT_STOREPASS" \
  -storetype "$SUBJECT_STORETYPE" \
  -v
