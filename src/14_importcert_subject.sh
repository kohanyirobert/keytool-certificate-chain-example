#! /usr/bin/env bash
set -o nounset
set -o errexit

# Importing the Intermediate CA's certificate into the Subject's keystore.
"$JAVA_HOME/bin/keytool" -importcert \
 -alias "$INTERMEDIATE_ALIAS" \
 -file "$INTERMEDIATE_CERTIFICATE" \
 -keystore "$SUBJECT_KEYSTORE" \
 -rfc \
 -storepass "$SUBJECT_STOREPASS" \
 -storetype "$SUBJECT_STORETYPE" \
 -v
