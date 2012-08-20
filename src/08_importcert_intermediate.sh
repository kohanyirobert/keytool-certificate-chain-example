#! /usr/bin/env bash
set -o nounset
set -o errexit

# Importing the Intermediate CA's certificate, signed by the Root CA, into the
# Intermediate CA's key store.
"$JAVA_HOME/bin/keytool" -importcert \
 -alias "$INTERMEDIATE_ALIAS" \
 -file "$INTERMEDIATE_CERTIFICATE" \
 -keypass "$INTERMEDIATE_KEYPASS" \
 -keystore "$INTERMEDIATE_KEYSTORE" \
 -rfc \
 -storepass "$INTERMEDIATE_STOREPASS" \
 -storetype "$INTERMEDIATE_STORETYPE" \
 -v
