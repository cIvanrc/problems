# Write a program that accepts an integer (n) and computes the value of n+nn+nnn.
# Sampe value of n is 5
# Expected result: 615


def calculate():
    n = int(input("n value: "))

    result = n
    for i in range (2, 4):
        tmp = str(n) * i
        result+=int(tmp)
    
    print("result: {}".format(result))

calculate()

        

