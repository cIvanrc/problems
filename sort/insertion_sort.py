# Write a Python program to sort a list of elements using the insertion sort algorithm
# Note: According to Wikipedia "Insertion sort is a simple sorting algorithm that builds
# the final sorted array (or list) one item at a time. It is much less efficient on large
# lists that more advanced algorithms such as quicksort, heapsort, or merge sort"


def insertion_sort(nlist):
    for i in range(1, len(nlist)):
        current_value = nlist[i]
        position = i

        while position > 0 and nlist[position-1] > current_value:
            nlist[position] = nlist[position-1]
            position-=1

        nlist[position] = current_value

nlist = [43,12,4,75,32,5,1,35,12]
insertion_sort(nlist)
print(nlist)
