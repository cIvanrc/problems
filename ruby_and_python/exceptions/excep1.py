#!/usr/bin/env python

def divide(a, b):

    result = ''
    try:
        result = a/b
    except(Exception,err):
        print(Exception)
        print(err)

    print("the result by dividing {} / {}: {}".format(a,b,result))
