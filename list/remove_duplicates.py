# Write a Python program to remove duplicates from a list.
# Input a = [10,20,30,20,10,50,60,40,80,50,40]
# Output {40, 10, 80, 50, 20, 60, 30}

def remove_duplicates():
    myArray = [10,20,30,20,10,50,60,40,80,50,40]

    without_duplicates = []
    for i in myArray:
        if i not in without_duplicates:
            without_duplicates.append(i)

    print(without_duplicates)


remove_duplicates()
