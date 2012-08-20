#! /usr/bin/env bash
set -o nounset
set -o errexit

# Generating certificate signing request for the Subject into file.
"$JAVA_HOME/bin/keytool" -certreq \
 -alias "$SUBJECT_ALIAS" \
 -file "$SUBJECT_CERTIFICATE_SIGNING_REQUEST" \
 -keypass "$SUBJECT_KEYPASS" \
 -keystore "$SUBJECT_KEYSTORE" \
 -storepass "$SUBJECT_STOREPASS" \
 -storetype "$SUBJECT_STORETYPE" \
 -v
