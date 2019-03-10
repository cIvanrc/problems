# Write a Python program that accepts a string and calculate the number of digits and letters
# Sample Data : "Python 3.2"
# Expected Output :
# Letters 6
# Digits 2


def count_digit_letter(str):
    count_digit = count_letter = 0

    for i in str:
        if i.isdigit():
            count_digit+=1
        elif i.isalpha():
            count_letter+=1

    print("Digits: ", count_digit)
    print("Letters: ", count_letter)


str = input("Say a string: ")
count_digit_letter(str)
