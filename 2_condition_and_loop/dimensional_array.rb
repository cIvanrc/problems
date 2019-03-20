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


def dimensional_arry(rows, columns)
  array_nested = Array.new
  rows.times do |row|
    arr = Array.new
    columns.times do |column|
       arr << column*row
    end
    array_nested << arr
  end
  print array_nested,"\n"
end


dimensional_arry(3,4)

