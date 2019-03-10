# Write a Python program to find common items from two lists.
# input
# color1 = "Red", "Green", "Orange", "White"
# color2 = "Black", "Green", "White", "Pink"
# output
# {'Green', 'White'}


def common_items():
    color1 = get_colors(1)
    color2 = get_colors(2)

    print(color1 & color2)

def get_colors(primordiality):
    n = int(input("Say how many colors you set in your color{}: ".format(primordiality)))
    colors = []

    for i in range(1, n+1):
        color = input("{}.-Color: ".format(i))
        colors.append(color)

    return set(colors)

common_items()
