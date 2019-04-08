# Write a Python class to reverse a string word by word.
# Input "hello world"
# Output "world hello"


class Word():
    def reverse_word(self, word):
        return ' '.join(word.split()[::-1])
