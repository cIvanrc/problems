#Write a program to read a random line from a file

import random

def random_line(file_name):
    lines = open(file_name).read().splitlines()
    return random.choice(lines)
