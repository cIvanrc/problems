# write a python program to check that a string contains only a certain set of characters (in this case a-z, A-Z, 0-9)
# Input
# "ABCDEFabcdef123450"
# "*&%@#!}{"
# Output
# True
# False


import re

def is_allowed_specific_char(string):
    charRe = re.compile(r'[^a-zA-Z0-9.]')
    string = charRe.search(string)
    return not bool(string)





