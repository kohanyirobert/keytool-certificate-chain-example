#! /usr/bin/env bash
set -o nounset
set -o errexit

# Importing the Root CA's certificate into the Subject's key store.
"$JAVA_HOME/bin/keytool" -importcert \
 -alias "$ROOT_ALIAS" \
 -file "$ROOT_CERTIFICATE" \
 -keystore "$SUBJECT_KEYSTORE" \
 -noprompt \
 -rfc \
 -storepass "$SUBJECT_STOREPASS" \
 -storetype "$SUBJECT_STORETYPE" \
 -v
