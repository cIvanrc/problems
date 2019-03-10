# write a python program to round up a number to specified digits


import math


def round_number(number, digits=0):
    n = 10 **-digits
    
    return round(math.ceil(number/n)*n, digits)
