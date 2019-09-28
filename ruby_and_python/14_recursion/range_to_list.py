# Generate all string of length n drawn from 0...k - 1
# Let us assume we keep current k-ary string in an array A[0..n-1]
# Call function k-string(n,k)

def range_to_list(k):
    result = []
    for i in range(k):
        result.append(str(i))
    return result

def base_k_strings(n, k):
    if n == 0: return []
    if n == 1: return range_to_list(k)

    return [ digit + bitstring for digit in base_k_strings(1, k) for bitstring in base_k_strings(n-1, k) ]


print(base_k_strings(4, 3))
# print(range_to_list(2))
