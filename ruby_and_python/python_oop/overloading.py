class Square(object):

    """Docstring for Square. """

    def __init__(self, side):
        self.side = side

    def __add__(square1, square2):
        return((4 * square1.side)+ (4 * square2.side))
        
square1 = Square(5) # 5*4 = 20
square2 = Square(10) # 10*4 = 40

print("Sum of sides of both the squares = ", square1+square2)
