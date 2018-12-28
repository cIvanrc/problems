# Write a Python function to create the HTML string with tags around the word(s).
# Sample function and result :
# add_tags('i', 'Python') -> '<i>Python</i>'
# add_tags('b', 'Python Tutorial') -> '<b>Python Tutorial </b>'


def add_tags(tag, message):
    return "<{tag}>{message}</{tag}>".format(tag=tag, message=message)


print(add_tags('b', 'python testo'))    
