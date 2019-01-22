 # Considerer an array of non-negative integer.
 # A second array is formed by shuffling the elements of the first array and deteting a random element.
 # Given these two arrays, find which element is missing in the second array.
 # Here is an example input, the first array is shuffled and the number 5 is removed to construct the second array.
 # Input:
 # finder([1,2,3,4,5,6,7], [e,7,2,1,4,6])
 # Output:
 # 5 is the missing number


org = [1,2,3,4,5,6,7]
sub = [ 3,7,2,1,4,6 ]

def finder(org, sub):
     missing_element = sum(org) - sum(sub)
     print(missing_element)
     return "{} is the missing number ".format(missing_element)


print(finder(org, sub))
