# Count the number of even and odd numbers from a series of numbers
# Input
# numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9) # Declaring the tuple
# Output
# Number of even numbers : 4
# Number of odd numbers : 5

def count_even_odd():
    numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9) # Declaring the tuple
    even = odd = 0
    for i in numbers:
        if(i % 2 == 0):
            even+=1
        else:
            odd+=1
    print("Numbers even: ",even)
    print("Numbers odd: ",odd)

count_even_odd()
