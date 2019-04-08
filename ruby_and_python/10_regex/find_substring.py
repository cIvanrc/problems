# write a python program to find the occurrence and position of the substring within a string

# Input
# text  = 'Python exercises, PHP exercises, C# exercises'
# patter = 'exercises'

# Ouput
# found 'exercises' at 7:16
# found 'exercises' at 22:31
# found 'exercises' at 36:45


import re

text  = 'Python exercises, PHP exercises, C# exercises'
patter = 'exercises'

for match in re.finditer(patter, text):
    s = match.start()
    e = match.end()
    print('Found {} at {}:{}'.format(text[s:e], s, e))
