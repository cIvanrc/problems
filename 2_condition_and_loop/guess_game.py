# Generate a random number between 1 and 9 (including 1 and 9).
# Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

from random import randint

def guess_game():
    i = randint(1,9)

    print(check_response(i))

def check_response(i):
    number = int(input("Digit a number: "))
    output = ''
    if i < number:
        output = "too low"
    elif i > number:
        output = "too high"
    else:
        output = "exactly right"
    return output

guess_game()
