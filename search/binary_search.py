# Write a Python program for binary search.
# Binary Search: I computer science, a biary search or half-interval search algorithm fins the position of a target value
# within a sorted array. The binary search algorithm can be clasifiend as a dichotomies divide-and-conquer search algorithm and
# executes in logarithmic time.


def binary_search(nlist, target):
    first = 0
    last = len(nlist)-1
    found = False

    while ( first<= last and not found ):
        mid = (first+last)//2
        if nlist[mid] == target:
            found = True
        else:
            if target < nlist[mid]:
                last = mid-1
            else:
                first = mid+1

    return found


nlist = [12,4,12,54,23,15,24,84,37,3,5]
nlist.sort()
print("list:", nlist)
target = 24
print(binary_search(nlist, target))
        
