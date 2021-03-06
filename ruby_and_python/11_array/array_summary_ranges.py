# Given a sorted integer array without duplicates
# return the summary of its ranges,
# For example, given [0,1,2,4,5,7], return ['0->2', '4->5', '7']

# input_array = [0,1,2,4,5,7]
input_array = [1,2,3,6,9,11,12,13,14,19,20]
start = 0
result = []

while start < len(input_array):
    #initial end at start position
    end = start

    # continue to move the end pointer if the gap is 1 with beside number
    # only continue to move if index end+1 is inside array

    while end+1 < len(input_array) and (( input_array[end+1] - input_array[end]) == 1):
        end+=1

    # add range to result after calculate
    if end != start:
        result.append("{}->{}".format(input_array[start], input_array[end]))
        print(result)
    else:
        result.append("{}".format(input_array[start]))
        print(result)
    
    start = end+1

print(result)
