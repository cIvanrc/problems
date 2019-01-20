str = "abcbb"


def longest_sub_string(str):
    max_length = 0

    for i,c in enumerate(str):
        start = i
        sub_string = []

        while (start < len(str)) and (str[start] not in sub_string):
            sub_string.append(str[start])
            start += 1

        if max_length < len(sub_string):
            max_length = len(sub_string)

        print(sub_string)

    print(max_length)

    return max_length

longest_sub_string(str)
