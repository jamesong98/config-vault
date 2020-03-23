!#/bin/bash
KEY_DIR=/etc/openvpn/easy-rsa/keys
OUTPUT_DIR=/etc/openvpn/ovpn-keys
BASE_CONFIG=/etc/openvpn/client.conf

echo "Generating the key"

(echo -en "\n\n\n\n\n\n\n\n"; sleep 1; echo -en "\n"; sleep 1; echo -en "\n"; sleep 3; echo -en "yes"; echo -en "\n"; sleep 3; echo -en "yes"; echo -en "\n") | ./build-key ${1}

echo "Combining the key for ovpn"

cat ${BASE_CONFIG} \
    <(echo -e '<ca>') \
    ${KEY_DIR}/ca.crt \
    <(echo -e '</ca>\n<cert>') \
    ${KEY_DIR}/${1}.crt \
    <(echo -e '</cert>\n<key>') \
    ${KEY_DIR}/${1}.key \
    <(echo -e '</key>\n') \
    > ${OUTPUT_DIR}/${1}.ovpn

echo "Generate p12 key"
echo

 openssl pkcs12 -export -in "${KEY_DIR}/${1}.crt" -inkey "${KEY_DIR}/${1}.key" -certfile "${KEY_DIR}/ca.crt" -name "${1}" -out "${OUTPUT_DIR}/${1}.p12"

echo "Done"