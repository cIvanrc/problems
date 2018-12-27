# Write a Python program to create a Caesar encryption
# Note : In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques.
# It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.
# For example, with a left shift of 3, D would be replaced by A, E would become B, and so on.
# The method is named after Julius Caesar, who used it in his private correspondence.
# plaintext:  defend the east wall of the castle
# ciphertext: efgfoe uif fbtu xbmm pg uif dbtumf

import string

def caesar_encryption():
    all_string = string.ascii_letters

    all_letters = [letter for letter in all_string]

    plain_text = "defend the east wall of the castlZ"
    text_encrypted = ""
    for letter in plain_text:
        if letter == "Z":
            text_encrypted += "a"
        elif letter != " ":
            index = all_letters.index(letter)
            text_encrypted += all_letters[index+1]
        else:
            text_encrypted += " "

    print(text_encrypted)

caesar_encryption()
