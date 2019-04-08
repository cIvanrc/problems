# Write a Python program to check whether a list contains a sublist.
# Input
# a = [2,4,3,5,7]
# b = [4,3]
# c = [3,7]
# print(is_Sublist(a, b))
# print(is_Sublist(a, c))
# Output


def check_list_contains():
    primary_list = get_list("primary")

    secondary_list = get_list("secondary")

    is_sub = is_sublist(primary_list, secondary_list)

    print()
    if(is_sub):
        print("Yes, the secondary list is already in the primary list")
    else:
        print("Nop, primary list not contains the secondary list")

def get_list(primordiality):
    n = int(input("How many element contains the {} list?: ".format(primordiality)))
    element_list = []

    for i in range(1, n+1):
        item = int(input("{}.-Element: ".format(i)))
        element_list.append(item)

    return element_list

def is_sublist(primary_list, secondary_list):
    result = True
    if len(secondary_list) > len(primary_list):
        result = False
    else:
        for i in secondary_list:
            if i not in primary_list:
                result = False

    return result

check_list_contains()
