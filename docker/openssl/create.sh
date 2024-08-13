#!/bin/sh

cnf_dir='/mnt/openssl/'
certs_dir='/etc/ssl/certs/'
openssl req -config ${cnf_dir}transferbyteCA.cnf -new -x509 -days 1 -keyout ${certs_dir}transferbyteCA.key -out ${certs_dir}transferbyteCA.crt
openssl req -config ${cnf_dir}transferbyteCert.cnf -new -out /tmp/transferbyte-dev.csr -keyout ${certs_dir}transferbyte-dev.key
openssl x509 -req -in /tmp/transferbyte-dev.csr -CA ${certs_dir}transferbyteCA.crt -CAkey ${certs_dir}transferbyteCA.key -CAcreateserial -extensions req_ext -extfile ${cnf_dir}transferbyteCert.cnf -sha512 -days 1 -out ${certs_dir}transferbyte-dev.crt

exec "$@"