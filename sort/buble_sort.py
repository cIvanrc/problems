# Write a Python program to sort a list of elements using the bubble sort algorithm
# Note: According to Wikipedia "Bubble sort, sometime referred to as sinkig sort, simple sorting algorithm that
# repeatedly steps through the list to be sorted, compares each pair of adjecent items and swaps them if they are in the
# wrong order. The pass through the list is repeated until so swaps are needed, which indicates that the list is sorted.
# The algorithm, which is a comparison sort, is named for the way smaller elements"bubble" to the top of the list.
# Although the algorithm is simple, it is too slow and impractical for most problems even when compared to insertion sort.
# It can be practical if the input is usually in sort order but may occasionally have some out-of-order elements nearly in position."

def bubble_sort(nlist):
    for passnum in range(len(nlist)-1, 0, -1):
        for i in range(passnum):
            if nlist[i] > nlist[i+1]:
                temp = nlist[i]
                nlist[i] = nlist[i+1]
                nlist[i+1] = temp
nlist = [14,46,31,72,12,63,1,72]
bubble_sort(nlist)
print(nlist)

