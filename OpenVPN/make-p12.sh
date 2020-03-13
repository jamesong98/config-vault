#!/bin/bash
# First argument: Client identifier
KEY_DIR=/etc/openvpn/easy-rsa/keys
OUTPUT_DIR=/etc/openvpn/p12-keys

openssl pkcs12 -export -in "${KEY_DIR}/${1}.crt" -inkey "${KEY_DIR}/${1}.key" -certfile "${KEY_DIR}/ca.crt" -name "${1}" -out "${OUTPUT_DIR}/${1}.p12"