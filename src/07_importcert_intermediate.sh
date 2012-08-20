#! /usr/bin/env bash
set -o nounset
set -o errexit

# Importing the Root CA's certificate into the Intermediate CA's key store.
"$JAVA_HOME/bin/keytool" -importcert \
 -alias "$ROOT_ALIAS" \
 -file "$ROOT_CERTIFICATE" \
 -keypass "$INTERMEDIATE_KEYPASS" \
 -keystore "$INTERMEDIATE_KEYSTORE" \
 -noprompt \
 -rfc \
 -storepass "$INTERMEDIATE_STOREPASS" \
 -storetype "$INTERMEDIATE_STORETYPE" \
 -v
