from itertools import permutations
import enchant
d = enchant.Dict("en_US")


input1 = "Pndwiertht"
letter1 = [x.lower() for x in input1]
print(letter1)

for y in list(permutations(letter1,6)):
    z = "".join(y)
    if len(z) > 2:
        if d.check(z):
            print(z)

