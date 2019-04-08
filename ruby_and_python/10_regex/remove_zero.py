# Write a Python program to remove leadin zero from a IP address
# Input
# "216.08.094.196"
# Output
# 216.8.94.196

import re

ip = "216.08.094.196"
string = re.sub('\.[0]*', '.', ip)
print(string)
