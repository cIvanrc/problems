# Write a Python program which takes two digits m (row) and n (column) as input and generates a two-dimensional array.
# The element value in the i-th row and j-th column of the array should be i*j
# Note:
# i = 0,1..., m-1
# j = 0,1, n-1.
# input
# input number of rows: 3
# input number of columns: 4
# Output
# [[0,0,0,0], [0,1,2,3], [0,2,4,6]]

def dimensional_array(rows, columns):
    arr = [[row*column for column in range(columns)] for row in range(rows)]
    print(arr)

dimensional_array(3,4)
