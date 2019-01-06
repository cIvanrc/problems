# Write a Python program to read first n lines of a file.
# Use test.txt file

def read_n_lines(n):
    with open("test.txt") as my_file:
        lines = my_file.readlines()[0:n]
    
    print(len(lines))





def file_read_from_head(fname, nlines):
    from itertools import islice
    with open(fname) as f:
            for line in islice(f, nlines):
                    print(line)

