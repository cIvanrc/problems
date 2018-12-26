# Write a Python program to get the smallest number from a list.
# max_num_in_list([1, 2, -8, 0])
# return 2


def find_max():
    n = int(input("How many elements you will set?: "))

    num_list = get_list(n)

    print(get_max_on_list(num_list))

def get_list(n):
    numbers = []

    for i in range(1, n+1):
        number = int(input("{}.-Say a number: ".format(i)))
        numbers.append(number)

    return numbers

def get_max_on_list(num_list):
    max = num_list[0]

    for i in range(1, len(num_list)):
        if max < num_list[i]:
            max = num_list[i]

    return "The max value in the list is: {}".format(max)

find_max()
