#! /usr/bin/env bash
set -o nounset
set -o errexit

# Importing the Subject's certificate, signed by the Intermediate CA,into the
# Subject's key store.
"$JAVA_HOME/bin/keytool" -importcert \
 -alias "$SUBJECT_ALIAS" \
 -file "$SUBJECT_CERTIFICATE" \
 -keypass "$SUBJECT_KEYPASS" \
 -keystore "$SUBJECT_KEYSTORE" \
 -rfc \
 -storepass "$SUBJECT_STOREPASS" \
 -storetype "$SUBJECT_STORETYPE" \
 -v
