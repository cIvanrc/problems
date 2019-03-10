# Write a Python program to sort a list of elements using shell sort algorithm.
# Note: Accordin to Wikipedia "Shell sort or Shell's method, is a in-place comparison sort
# It can be seen as eithe a generalizatio of sorting by exchange (bubble sort) or sorting by insertion (insertion_sort).
# The method starts by sorting pairs of elements far apart from each other, then progressively reducing the gap between
# elements bo be compared. Starting with far apart elements can move some out-of-place elements into position faster than
# a simple nearest neighbor exchange."



def shell_sort(alist):
    sublist_count = len(alist)//2
    while sublist_count > 0:
        for start_position in range(sublist_count):
            gap_insertion_sort(alist, start_position, sublist_count)

        print("After increments of size {} the list is: {}".format(sublist_count, alist))

        sublist_count = sublist_count//2


def gap_insertion_sort(nlist, start, gap):
    for i in range(start+gap, len(nlist),gap):
        current_value = nlist[i]
        position = i

        while position>=gap and nlist[position-gap]>current_value:
            nlist[position]=nlist[position-gap]
            position = position-gap

        nlist[position] = current_value


nlist = [14,67,3,26,14,57,54]
shell_sort(nlist)
print(nlist)
