# Write a python program to sort a list of elements using the selection sort algorithm.
# Note: The selection sort improves on the bubble sort by making only one exchange for every pass through the list


def selection_sort(nlist):
    for fillslot in range(len(nlist)-1,0,-1):
        maxpos=0
        for location in range(1, fillslot+1):
            if nlist[location] > nlist[maxpos]:
                maxpos = location

            temp = nlist[fillslot]
            nlist[fillslot] = nlist[maxpos]
            nlist[maxpos] = temp



nlist = [14,52,24,6,52,62,82,4,2]
selection_sort(nlist)
print(nlist)
