plaintext = 12345
keystream = 65321

ciphertext = plaintext^keystream
print("ciphertext is: " + str(ciphertext))
print("plaintext is: " + str(ciphertext^keystream))
