# Write a Python program to get the difference between the two lists
# Input
# list1 = [1, 2, 3, 4]
# list2 = [1, 2]
# Output
# [3,4]

def diff_between():
    list1 = get_list(1)
    list2 = get_list(2)

    print(list1 - list2)

def get_list(primordiality):
    n = int(input("Say how many items you set in your list{}: ".format(primordiality)))
    items = []

    for i in range(1, n+1):
        item = input("{}.-Item: ".format(i))
        items.append(item)

    return set(items)

diff_between()
