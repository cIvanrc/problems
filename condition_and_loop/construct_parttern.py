#  Write a Python program to construct the following pattern, using a nested for loop.
# *
# * *
# * * *
# * * * *
# * * * * *
# * * * *
# * * *
# * *
# *


def construct_parttern(n):
    middle = n / 2
    tmp = 2
    for i in range(1,n+1):
        if i > middle:
            print("*"*(i-tmp))
            tmp+=2
        else:
            print("*"*i)


n = int(input("Digit a number: "))
construct_parttern(n)
