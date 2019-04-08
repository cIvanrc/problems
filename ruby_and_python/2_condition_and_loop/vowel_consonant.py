# Write a Python program to check whether an alphabet is a vowel or consonant
vowels = ('a', 'e', 'i', 'o', 'u')


def vowel_or_consonant():
    s = input("Say a something: ")

    for i in s:
        print(check_what_is(i))

def check_what_is(s):
    is_a = ""
    if s in vowels:
        is_a = "vowel"
    else:
        is_a = "consonant"

    return s+" is a: "+is_a

vowel_or_consonant()
