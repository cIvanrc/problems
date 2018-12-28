# Write a Python function that takes a list of words and returns the length of the longest one

def longest_world():
    my_list = ['proba', 'testo', 'ivan', 'jojoje', 'python', 'ruby', 'shavascript']
    my_list_len = [len(size) for size in my_list]
    return max(my_list_len)

print(longest_world())
