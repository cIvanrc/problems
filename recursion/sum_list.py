# Write a Python program to calculate the sum of a list of numbers. (in recursion fashion)

def list_sum(nlist):
    if len(nlist) == 1:
        return nlist[0]

    return nlist[0] + list_sum(nlist[1:])

print(list_sum([2,4,6,8]))
