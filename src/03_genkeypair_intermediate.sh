#! /usr/bin/env bash
set -o nounset
set -o errexit

# Generating key pair for the Intermediate CA into its key store.
"$JAVA_HOME/bin/keytool" -genkeypair \
 -alias "$INTERMEDIATE_ALIAS" \
 -dname "CN=$INTERMEDIATE_COMMON_NAME, OU=$INTERMEDIATE_ORGANIZATIONAL_UNIT, O=$INTERMEDIATE_ORGANIZATIONAL_UNIT, L=$INTERMEDIATE_LOCALITY, S=$INTERMEDIATE_STATE, C=$INTERMEDIATE_COUNTRY" \
 -ext BasicConstraints:critical=ca:true,pathlen:1 \
 -ext KeyUsage:critical=keyCertSign,cRLSign \
 -keyalg "$INTERMEDIATE_KEYALG" \
 -keypass "$INTERMEDIATE_KEYPASS" \
 -keysize "$INTERMEDIATE_KEYSIZE" \
 -keystore "$INTERMEDIATE_KEYSTORE" \
 -sigalg "$INTERMEDIATE_SIGALG" \
 -storepass "$INTERMEDIATE_STOREPASS" \
 -storetype "$INTERMEDIATE_STORETYPE" \
 -v
