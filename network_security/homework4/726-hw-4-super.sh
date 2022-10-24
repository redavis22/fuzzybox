



### Make Large file
"""

#!/bin/bash


dd if=/dev/zero of=network.txt bs=1024 count=1024 && ls

"""### Run DES"""

time openssl enc -des -a  -in network.txt -out network_DES-out.enc  -k 999999 && time openssl enc -des -a  -in network.txt -out network_DES-out.enc  -k 999999 && time openssl enc -des -a  -in network.txt -out network_DES-out.enc  -k 999999

time openssl enc -des3 -a -in network.txt -out network_DES3.txt -k 123des321 && time openssl enc -des3 -a -in network.txt -out network_DES3.txt -k 123des321 && time openssl enc -des3 -a -in network.txt -out network_DES3.txt -k 123des321

"""### Record execution times above into spreadsheet

### Run AES-128
"""

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

# Commented out IPython magic to ensure Python compatibility.
## Import data visualization packages
#import matplotlib.pyplot as plt
# %matplotlib inline

#import pandas as pd

#df = pd.read_csv("/content/Template - COMP 726 - Homework 4 - Avg Speed - Sheet2.csv")

#df

#bar = df.plot(kind ='bar')
#plt.xlabel("Encryption Scheme", fontsize = 20)

#Need to implement RSA still
#https://opensource.com/article/21/4/encryption-decryption-openssl

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

