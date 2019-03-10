# Wripte a Python program for sequential search.
# Sequential search: In computer science, linear search or sequential search is a method for finding a particular value in a list
# that chekcs each element in sequence until the desired element is found or the list is exhausted. The list need not be ordered.



def sequential_seatch(nlist, target):
    for index, item in enumerate(nlist):
        if item == target:
            return "{} was found at position {}".format(item, index)

    return "Not found"
nlist = [4,1,5,23,67,2,37,23,63]
target = 62
print(sequential_seatch(nlist, target))
