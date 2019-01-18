# write a python program to remove the parenthese are in a string.

# Input
# ["example (.com)", "w3resource","github (.com)","stackoverflow (.com)"]

# Output
# example
# w3resource
# github
# stackoverflow

import re
items = ["example (.com)", "w3resource","github (.com)","stackoverflow (.com)"]
for item in items:
    print(re.sub(r" ?\([^)]+\)","",item))
