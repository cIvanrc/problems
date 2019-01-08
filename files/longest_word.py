# Write a python program to find the longest words in a file
# Using text.txt file in same folder


def longest_word(file_name):
    with open(file_name) as my_file:
        words = my_file.read().split()
    
    max_len = len(max(words, key=len))
    return [word for word in words if len(word) == max_len]

