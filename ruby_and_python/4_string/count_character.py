# Write a Python program to count the number of characters (character frequency) in a string.
# Sample String : google'
# Expected Result : {'g': 2, 'o': 2, 'l': 1, 'e': 1}


def count_character():
    sample_string = 'google'
    dic_count = {}

    for letter in sample_string:
        if letter in dic_count:
            dic_count[letter] += 1
        else:
            dic_count[letter] = 1

    print(dic_count)        
count_character()
