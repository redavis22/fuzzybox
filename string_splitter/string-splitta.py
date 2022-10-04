print("Please enter string to split: \n")
ciphertext = str(input(''))

print("Please enter split length: \n")
split_length = (input())

split_strings = [ciphertext[index : index + split_length ] for index in range(0, len(ciphertext), split_length)]

print(split_strings)
