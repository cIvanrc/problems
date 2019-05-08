import math
import time

def is_prime(n):
    """ Return 'True' if 'n' is a prime number. False otherwise"""

    if n == 1:
        return False # 1 is not prime

    # If it's even and not 2, then it's not prime
    if n == 2:
        return True
    if n > 2 and n % 2 == 0:
        return False

    max_divisor = math.floor(math.sqrt(n))
    for d in range(3, max_divisor+1, 2):
        if n % d == 0:
            return False
    return True


t0 = time.time()
for n in range(1, 100000):
    is_prime(n)
t1 = time.time()
print("Time required: ", t1-t0)

