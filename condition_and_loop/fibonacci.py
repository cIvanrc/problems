# Write a Python program to get the Fibonacci series between 0 to 50


def fibo(n):
    tmp = x = 0
    y = 1
    while x < n:
        print(x)
        tmp = y
        y = x
        x = tmp + y


n = int(input("Say a number: "))
fibo(n)
