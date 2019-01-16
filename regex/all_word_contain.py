# write a python program to find all five characters long word in a string
# input
# 'The quick brown fox jumps over the lazy dog'
# output
# ['quick', 'brown', 'jumps']


import re

text = 'The quick brown fox jumps over the lazy dog'
print(re.findall(r"\b\w{5}\b", text))
 
