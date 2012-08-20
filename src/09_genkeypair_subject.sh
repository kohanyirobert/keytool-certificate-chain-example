#! /usr/bin/env bash
set -o nounset
set -o errexit

# Generating key pair for the Subject into its key store.
"$JAVA_HOME/bin/keytool" -genkeypair \
 -alias "$SUBJECT_ALIAS" \
 -dname "CN=$SUBJECT_COMMON_NAME, OU=$SUBJECT_ORGANIZATIONAL_UNIT, O=$SUBJECT_ORGANIZATION, L=$SUBJECT_LOCALITY, S=$SUBJECT_STATE, C=$SUBJECT_COUNTRY" \
 -ext BasicConstraints:critical=ca:false \
 -ext KeyUsage:critical=digitalSignature,keyEncipherment \
 -ext ExtendedkeyUsage:critical=serverAuth,clientAuth \
 -keyalg "$SUBJECT_KEYALG" \
 -keypass "$SUBJECT_KEYPASS" \
 -keysize "$SUBJECT_KEYSIZE" \
 -keystore "$SUBJECT_KEYSTORE" \
 -sigalg "$SUBJECT_SIGALG" \
 -storepass "$SUBJECT_STOREPASS" \
 -storetype "$SUBJECT_STORETYPE" \
 -v
