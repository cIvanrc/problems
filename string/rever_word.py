# 'The quick brown fox jumps over the lazy dog.'
# input : "The quick brown fox jumps over the lazy dog."
# output : "dog. lazy the over jumps fox brown quick The "


def rever_word(str):
    list_revert = str.split(" ")
    return " ".join(list_revert[::-1])



print(rever_word("The quick brown fox jumps over the lazy dog."))
