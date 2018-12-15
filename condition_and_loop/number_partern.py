# Write a Python program to construct the following pattern, using a nested loop number.
# 1
# 22
# 333
# 4444
# 55555
# 666666
# 7777777
# 88888888
# 999999999


def number_parten(n):
    for i in range(1,n+1):
        print(str(i)*i)

n = int(input("Digit n: "))
number_parten(n)
