# Write a Python program to check a triangle is equilateral, isosceles or scalene.
# Note :
# An equilateral triangle is a triangle in which all three sides are equal.
# A scalene triangle is a triangle that has three unequal sides.
# An isosceles triangle is a triangle with (at least) two equal sides.


def check_type_triangle():
    sideA = input("Say tha sideA: ")
    sideB = input("Say tha sideB: ")
    sideC = input("Say tha sideC: ")

    print('')
    print(type_triangle(sideA, sideB, sideC))

def type_triangle(sideA, sideB, sideC):
    type_triangle = ''
    if sideA == sideB == sideC:
        type_triangle = "equilateral"
    elif sideA != sideB != sideC:
        type_triangle = "scalene"
    else:
        type_triangle = "isoceles"

    return "Type of triangle: "+type_triangle


check_type_triangle()
