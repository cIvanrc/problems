# Write a Python program to sum all the items in a list
# Example sum_list([1,2,-8])
# Return -5

def sum_list():
    my_list = [1,2,-8]
    sum = 0

    for i in my_list:
        sum+=i

    print(sum)

sum_list()    
