# Write a python program to sort a list of elements using the merge sort algorithm
# Note: According to Wikipedia "Merge sort (also commonly spelled mergesort) is an 0 (n log n)
# comparasion-baed sortgin algorithm. Most implementations produce a stable sort, which means that
# the implementation preserves the input order of equal elements on the sorted output.
# Algorithm:
# Concepcually, a merge sort works as follows:
# Divide the unsorted list into n sublist, each containing 1 element (a list of 1 element is considered sorted).
# Repeatedly merge sublist to produce new sorted sublist until there only 1 sublist remaining. This will be the sorted list"




def merge_sort(nlist):
    print("Splitting ", nlist)

    if len(nlist)>1:
        mid = len(nlist)//2
        left_half = nlist[:mid]
        right_half = nlist[mid:]

        merge_sort(left_half)
        merge_sort(right_half)

        i=j=k=0

        while i < len(left_half) and j < len(right_half):
            if left_half[i] < right_half[j]:
                nlist[k] = left_half[i]
                i+=1
            else:
                nlist[k] = right_half[j]
                j+=1
            k+=1

        while i < len(left_half):
            nlist[k] = left_half[i]
            i+=1
            k+=1
        while j < len(right_half):
            nlist[k] = right_half[j]
            j+=1
            k+=1

        print("Merging: ",nlist)


nlist = [4,12,5,82,1,43,73,84,24,51,35,12]
merge_sort(nlist)
print(nlist)
