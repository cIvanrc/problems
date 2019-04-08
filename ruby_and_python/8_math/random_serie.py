# write a python program to generate a series of unique random numbers



import random

n = int(input("Say a number: "))

choices = list(range(n))
a = random.shuffle(choices)
print(choices.pop())
while choices:
    print(choices.pop())
