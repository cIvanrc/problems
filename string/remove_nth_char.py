# Write a Python program to remove the nth index character from a nonempty string


def remove_char(str,nth):
    first_part = str[:nth]
    second_part = str[nth+1:]
    return first_part + second_part


print(remove_char("String", 0))
