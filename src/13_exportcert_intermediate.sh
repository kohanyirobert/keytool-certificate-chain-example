#! /usr/bin/env bash
set -o nounset
set -o errexit

# Exporting the Intermediate CA's certificate into file.
"$JAVA_HOME/bin/keytool" -exportcert \
  -alias "$INTERMEDIATE_ALIAS" \
  -file "$INTERMEDIATE_CERTIFICATE" \
  -keystore "$INTERMEDIATE_KEYSTORE" \
  -rfc \
  -storepass "$INTERMEDIATE_STOREPASS" \
  -storetype "$INTERMEDIATE_STORETYPE" \
  -v
