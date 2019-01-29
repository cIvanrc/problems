# Write a Python program to find the greatest common divisor (gcd) of two integers


def gcd(a, b):
    low = min(a,b)
    high = max(a,b)


    if low == 0:
        return high
    elif low == 1:
        return 1
    
    return gcd(low, high%low)


print(gcd(12,14))
