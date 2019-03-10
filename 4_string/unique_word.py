# Write a Python program that accepts a comma separated sequence of words as input and prints the unique words in sorted form (alphanumerically)
# Sample Words : red, white, black, red, green, black
# Expected Result : black, green, red, white,red



def unique_word(str):
    words_arr = str.split(", ")
    result = []
    for word in words_arr:
        if word not in result:
            result.append(word)

    result.sort()
    return result


print(unique_word("red, white, black, red, green, black"))
