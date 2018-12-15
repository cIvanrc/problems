# Write a program to check a triange is valid or not


def check_triange(sideA, sideB, sideC):
    if (sideA > sideB+sideC) or (sideB > sideA+sideC) or (sideC > sideA+sideB):
        print("No, the lengths wont form a triange")
    elif(sideA == sideB+sideC) or (sideB == sideA+sideC) or (sideC == sideA+sideB):
        print("Yes, it can form a degenerated triangle")
    else:
        print("Yes, a triangle can be formed out of it")


sideA = int(input("digit the sideA: "))
sideB = int(input("digit the sideB: "))
sideC = int(input("digit the sideC: "))
check_triange(sideA, sideB, sideC)
