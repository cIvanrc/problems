# Write a Python program to get the file size of a plain file.
# Use test.txt file at same folder

import os

statinfo = os.stat("test.txt")
print(statinfo.st_size)

