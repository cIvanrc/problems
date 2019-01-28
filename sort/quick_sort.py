# Write a Python program to sort a list of elements using the quick sort algorithm.
# Note: According to Wikipedia "Quicksort is a comparison sort, meaning that it can
# sort items of any type for which a "less-than" relation (formally, a total order) is defined.
# In efficient implementations it is not a stable sort, meaning that the relative order of equal
# sort items is not preserved. Quicksort can operate in place on an array, requiring small additional
# amounts of memory to perfom the sorting."




def quick_sort(nlist):
    quick_sort_hlp(nlist, 0, len(nlist)-1)


def quick_sort_hlp(nlist, first, last):
    if first < last:
        split_point = partition(nlist, first, last)
        quick_sort_hlp(nlist, first, split_point-1)
        quick_sort_hlp(nlist, split_point+1, last)


def partition(nlist, first, last):
    pivot_value = nlist[first]
    
    left_mark = first+1
    right_mark = last
    done = False
    
    while not done:
        while left_mark <= right_mark and nlist[left_mark] <= pivot_value:
            left_mark+=1
        while nlist[right_mark] >= pivot_value and right_mark >= left_mark:
            right_mark-=1

        if right_mark < left_mark:
            done = True
        else:
            temp = nlist[left_mark]
            nlist[left_mark] = nlist[right_mark]
            nlist[right_mark] = temp

    temp = nlist[first]
    nlist[first] = nlist[right_mark]
    nlist[right_mark] = temp

    return right_mark

nlist = [12,52,76,25,13,52,75,24,61,11,57,32]
quick_sort(nlist)
print(nlist)
