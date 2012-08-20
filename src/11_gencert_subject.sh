#! /usr/bin/env bash
set -o nounset
set -o errexit

# Signing the Subject's certificate signing request with the Intermediate CA
# and generating the Subject's signed certificate into file.
"$JAVA_HOME/bin/keytool" -gencert \
 -alias "$INTERMEDIATE_ALIAS" \
 -ext BasicConstraints:critical=ca:false \
 -ext ExtendedkeyUsage:critical=serverAuth,clientAuth \
 -ext KeyUsage:critical=digitalSignature,keyEncipherment \
 -infile "$SUBJECT_CERTIFICATE_SIGNING_REQUEST" \
 -keypass "$INTERMEDIATE_KEYPASS" \
 -keystore "$INTERMEDIATE_KEYSTORE" \
 -outfile "$SUBJECT_CERTIFICATE" \
 -rfc \
 -sigalg "$INTERMEDIATE_SIGALG" \
 -storepass "$INTERMEDIATE_STOREPASS" \
 -storetype "$INTERMEDIATE_STORETYPE" \
 -v
