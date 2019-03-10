# remove all whitespaces from a string

# Input
# ' Python        Exercises '
# Ouput
# PythonExercises


import re
text1 = ' Python           Exercises  '
print('Original string:', text1)
print('Witout extra spaces:', re.sub(r'\s+','',text1))
