#! /usr/bin/env bash
set -o nounset
set -o errexit

# Generating key pair for the Root CA into its key store.
"$JAVA_HOME/bin/keytool" -genkeypair \
 -alias "$ROOT_ALIAS" \
 -dname "CN=$ROOT_COMMON_NAME, OU=$ROOT_ORGANIZATIONAL_UNIT, O=$ROOT_ORGANIZATIONAL_UNIT, L=$ROOT_LOCALITY, S=$ROOT_STATE, C=$ROOT_COUNTRY" \
 -ext BasicConstraints:critical=ca:true,pathlen:1 \
 -ext KeyUsage:critical=keyCertSign,cRLSign \
 -keyalg "$ROOT_KEYALG" \
 -keypass "$ROOT_KEYPASS" \
 -keysize "$ROOT_KEYSIZE" \
 -keystore "$ROOT_KEYSTORE" \
 -sigalg "$ROOT_SIGALG" \
 -storepass "$ROOT_STOREPASS" \
 -storetype "$ROOT_STORETYPE" \
 -v
