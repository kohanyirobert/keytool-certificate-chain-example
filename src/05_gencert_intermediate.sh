#! /usr/bin/env bash
set -o nounset
set -o errexit

# Signing the Intermediate CA's certificate signing request with the Root and
# generating the Intermediate CA's signed certificate into file.
"$JAVA_HOME/bin/keytool" -gencert \
 -alias "$ROOT_ALIAS" \
 -ext BasicConstraints:critical=ca:true,pathlen:0 \
 -ext KeyUsage:critical=keyCertSign,cRLSign \
 -infile "$INTERMEDIATE_CERTIFICATE_SIGNING_REQUEST" \
 -keypass "$INTERMEDIATE_KEYPASS" \
 -keystore "$ROOT_KEYSTORE" \
 -outfile "$INTERMEDIATE_CERTIFICATE" \
 -rfc \
 -sigalg "$ROOT_SIGALG" \
 -storepass "$ROOT_STOREPASS" \
 -storetype "$ROOT_STORETYPE" \
 -v
