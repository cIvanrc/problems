# Write a Python program to find the three elements that sum to zero from a set (array) of n real numbers.
# Input
# [-25, -10, -7, -3, 2, 4, 8, 10]
# Output
# [[-10, 2, 8], [-7, -3, 10]]



class SumZero():
    def main(self, arr):
        arr, result, i = sorted(arr), [], 0

        while i < len(arr)-2:
            j,k = i+1, len(arr)-1

            while j < k:
                # if current + next + last on index < 0
                if arr[i] + arr[j] + arr[k] < 0:
                    j+=1
                elif arr[i] + arr[j] + arr[k] > 0:
                    k-=1
                else:
                    result.append([arr[i], arr[j], arr[k]])
                    j,k = j+1, k-1

                    while j < k and arr[j] == arr[j-1]:
                        j+=1
                    while j < k and arr[k] == arr[k+1]:
                        k-=1
            
            i+=1
            while i < len(arr)-2 and arr[i] == arr[i-1]:
                i+=1

        return result
            

