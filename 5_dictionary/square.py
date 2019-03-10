# Write a Python script to print a dictionary where the keys are numbers between 1 and 15 (both included) and the values are square of keys.


def square_dic():
    my_dictionary = {}
    for i in range(1,16):
        my_dictionary[i] = i**2
    return my_dictionary            
