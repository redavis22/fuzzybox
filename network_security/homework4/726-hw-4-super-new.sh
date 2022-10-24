




#!/bin/bash


dd if=/dev/zero of=network.txt bs=1024 count=1024 && ls


time openssl enc -des -a  -in network.txt -out network_DES-out.enc  -k 999999 && time openssl enc -des -a  -in network.txt -out network_DES-out.enc  -k 999999 && time openssl enc -des -a  -in network.txt -out network_DES-out.enc  -k 999999

time openssl enc -des3 -a -in network.txt -out network_DES3.txt -k 123des321 && time openssl enc -des3 -a -in network.txt -out network_DES3.txt -k 123des321 && time openssl enc -des3 -a -in network.txt -out network_DES3.txt -k 123des321



time openssl enc -aes-128-cbc -a -in network.txt -out networkaes.enc.txt -k 123456 && time openssl enc -aes-128-cbc -a -in network.txt -out networkaes.enc.txt -k 123456 && time openssl enc -aes-128-cbc -a -in network.txt -out networkaes.enc.txt -k 123456

time openssl enc -rc4 -a -in network.txt -out network_rc4.txt.enc -k 123456 && time openssl enc -rc4 -a -in network.txt -out network_rc4.txt.enc -k 123456 && time openssl enc -rc4 -a -in network.txt -out network_rc4.txt.enc -k 123456

time openssl dgst -md5 network.txt 
time openssl dgst -md5 network.txt 
time openssl dgst -md5 network.txt

time openssl dgst -sha1 network.txt 
time openssl dgst -sha1 network.txt 
time openssl dgst -sha1 network.txt

time openssl dgst -sha256 network.txt 
time openssl dgst -sha256 network.txt 
time openssl dgst -sha256 network.txt


openssl genrsa -aes128 -out alice_private.pem 1024

openssl genrsa -aes128 -out bob_private.pem 1024

head alice_private.pem

openssl rsa -in alice_private.pem -noout -text

openssl rsa -in alice_private.pem -pubout > alice_public.pem

openssl rsa -in alice_public.pem -pubin -text -noout

openssl rsa -in bob_private.pem -pubout > bob_public.pem

ls

dd if=/dev/urandom of=rsa-test-file2 bs=1054 count=1054

split -b 64 -a 5 rsa-test-file2 segment

time for i in segment*; do   openssl rsautl -encrypt -inkey bob_public.pem -pubin -in $i -out test.enc -oaep; done

time for i in segment*; do   openssl rsautl -encrypt -inkey bob_public.pem -pubin -in $i -out test.enc -oaep; done

time for i in segment*; do   openssl rsautl -encrypt -inkey bob_public.pem -pubin -in $i -out test.enc -oaep; done

