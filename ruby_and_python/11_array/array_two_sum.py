# Given an array of integers, return indices of the two numbers
# such that they add up to a specific target
# You may assume that each input wold have exactly one solution
# Example:
    # Given numbs = [2,6,11,15], target = 26
    # Because nums[2] + nums[3] = 11 + 15 = 26
    # return [2,3]



input_array = [2,7,11,8,25]
target = 15 

def index_two_sum(input_array, target):
    for i, num in enumerate(input_array):
        for j in range(i+1, len(input_array)):
            if input_array[i] + input_array[j] == target:
                return [i, j]

    return "No find"

print(index_two_sum(input_array, target))
