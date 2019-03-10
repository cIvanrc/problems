


class Punto():
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __sub__(self, other):
        return Punto(self.x - other.x, self.y - other.y)

    def __str__(self):
        return "({},{})".format(self.x, self.y)







