from itertools import permutations
import enchant
d = enchant.Dict("en_US")


input1 = []
print("Please enter row characters for wordplay: \n")
input1 = str( input(''))
letter1 = [x.lower() for x in input1]
print(letter1)

for y in list(permutations(letter1, 6)):
    z = "".join(y)
    if len(z) > 2:
        if d.check(z):
            print(z)



input2 = "cynicponcfeilos"
letter2 = [x.lower() for x in input2]
print(letter2)

for y in list(permutations(letter2, 6)):
    z = "".join(y)
    if len(z) > 2:
        if d.check(z):
            print(z)
