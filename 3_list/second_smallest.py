# Write a Python program to find the second smallest number in a list.
# input
# second_smallest([1, 2, -8, -2, 0])
# output
# -2


def second_smallest():
    my_list = [1, 2, -3, -2, 0, -4]

    max = second_max = 0

    for i in my_list:
        if i <= max:
            second_max = max
            max = i
        elif i < second_max:
            second_max = i

    print(second_max)

second_smallest()
