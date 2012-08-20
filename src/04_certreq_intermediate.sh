#! /usr/bin/env bash
set -o nounset
set -o errexit

# Generating certificate signing request for the Intermediate CA's into file.
"$JAVA_HOME/bin/keytool" -certreq \
 -alias "$INTERMEDIATE_ALIAS" \
 -file "$INTERMEDIATE_CERTIFICATE_SIGNING_REQUEST" \
 -keypass "$INTERMEDIATE_KEYPASS" \
 -keystore "$INTERMEDIATE_KEYSTORE" \
 -storepass "$INTERMEDIATE_STOREPASS" \
 -storetype "$INTERMEDIATE_STORETYPE" \
 -v
