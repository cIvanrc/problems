# Convert a list of characters into a string
# Input ['a', 'b', 'c', 'd']
# Output abcd


def character_to_string():
    n = int(input("Number of characters: "))

    characters = get_characters(n)

    print()
    print("Result: "+get_string(characters))

def get_characters(n):
    characters = []

    for i in range(1,n+1):
        character = input("{}.-character: ".format(i))
        characters.append(character)

    return characters

def get_string(characters):
    return "".join(characters)

character_to_string()
