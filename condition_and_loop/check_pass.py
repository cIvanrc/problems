# Write a Python program to check the validity of a password (input from users).
# Validation :
# At least 1 letter between [a-z] and 1 letter between [A-Z].
# At least 1 number between [0-9].
# At least 1 character from [$#@].
# Minimum length 6 characters.
# Maximum length 16 characters.
# Input
# W3r@100a
# Output
# Valid password

import re

def check_pass():
    passw = input("say a password: ")

    if is_valid(passw):
        print("Valid pass")
    else:
        print("wrong pass")

def is_valid(passw):
    is_valid = True

    if not (len(passw) >= 6 and len(passw) <= 16):
        is_valid = False
    if not re.search("[a-z]", passw):
        is_valid = False
    if not re.search("[A-Z]", passw):
        is_valid = False
    if not re.search("[0-9]", passw):
        is_valid = False
    if not re.search("[$#@]", passw):
        is_valid = False

    return is_valid    

check_pass()
