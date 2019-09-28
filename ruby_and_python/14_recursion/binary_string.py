import pdb
# generate all the binry strings with n bits. Assume A[0..n - 1] is an array of size n

# def append_at_beginning_front(x, L):
#     return [ x + element for element in L ]

# def bit_strings(n):
#     if n == 0: return []
#     if n == 1: return ["0", "1"]

#     return append_at_beginning_front("0", bit_strings(n-1)) + append_at_beginning_front("1", bit_strings(n-1))

# OR ALTERNATIVE APPROACH

def bit_strings(n):
    if n == 0: return []
    if n == 1: return ["0", "1"]

    pdb.set_trace()

    return [ digit+bitstring for digit in bit_strings(1) for bitstring in bit_strings(n-1) ]

print(bit_strings(4))
