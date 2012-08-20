#! /usr/bin/env bash
set -o nounset
set -o errexit

# Exporting the Root CA's certificate into file.
"$JAVA_HOME/bin/keytool" -exportcert \
  -alias "$ROOT_ALIAS" \
  -file "$ROOT_CERTIFICATE" \
  -keystore "$ROOT_KEYSTORE" \
  -rfc \
  -storepass "$ROOT_STOREPASS" \
  -storetype "$ROOT_STORETYPE" \
  -v
