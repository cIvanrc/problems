# write a python program to remove everything except alphanumeric characters from a strings
# Input
# '**//Python Exercises// - 12. '
# Otput
# PythonExercises12

import re
text1 = '**//Python Exercises// - 12. '  
pattern = re.compile('[\W_]+')
print(pattern.sub('', text1))
