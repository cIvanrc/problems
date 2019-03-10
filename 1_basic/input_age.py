# Create a program that asks the user to enter their name and their age.
# Print out a message addressed to them that tells them the year they will turn 100 years old.

import datetime

def input_age():
    name = input("your name: ")
    age = int(input("your age: "))
    current_year = get_current_year()

    finally_year = 100 - age + current_year
    print("{}, in the year {} you will turn 100 years old".format(name, finally_year))

                    
def get_current_year():
    now = datetime.datetime.now()
    return now.year

input_age()
