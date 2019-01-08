# Write a Python class named Circle constructed by a radius and two methods which
# will compute the area and the perimeter of a circle.



class Circle():
    def __init__(self, radiu):
        self.radiu = radiu

    def area(self):
        return self.radiu**2*3.14

    def perimeter(self):
        return 2*self.radiu*3.14
