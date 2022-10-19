#!/bin/bash

clear

cat logo

echo ""

echo "make 1MB file of zeroes"

#dd if=/dev/zero of=output.file bs=1024 count=1024

dd if=/dev/zero of=network.txt bs=1024 count=1024
echo "DES"
time openssl enc -des -a  -in network.txt -out network_DES-out.enc  -k 999999 && time openssl enc -des -a  -in network.txt -out network_DES-out.enc  -k 999999 && time openssl enc -des -a  -in network.txt -out network_DES-out.enc  -k 999999
echo "3DES"
time openssl enc -des3 -a -in network.txt -out network_DES3.txt -k 123des321 && time openssl enc -des3 -a -in network.txt -out network_DES3.txt -k 123des321 && time openssl enc -des3 -a -in network.txt -out network_DES3.txt -k 123des321
echo "AES-128"
time openssl enc -aes-128-cbc -a -in network.txt -out networkaes.enc.txt -k 123456 && time openssl enc -aes-128-cbc -a -in network.txt -out networkaes.enc.txt -k 123456 && time openssl enc -aes-128-cbc -a -in network.txt -out networkaes.enc.txt -k 123456
echo "RC4"
time openssl enc -rc4 -a -in network.txt -out network_rc4.txt.enc -k 123456 && time openssl enc -rc4 -a -in network.txt -out network_rc4.txt.enc -k 123456 && time openssl enc -rc4 -a -in network.txt -out network_rc4.txt.enc -k 123456
echo "MD5"
time openssl dgst -md5 network.txt && time openssl dgst -md5 network.txt && time openssl dgst -md5 network.txt
echo "SHA1"
time openssl dgst -sha1 network.txt && time openssl dgst -sha1 network.txt && time openssl dgst -sha1 network.txt
echo "SHA256"
time openssl dgst -sha256 network.txt && time openssl dgst -sha256 network.txt && time openssl dgst -sha256 network.txt
#time openssl rsautl -encrypt -inkey public.pen -pubin -in network.txt -out output.txt

