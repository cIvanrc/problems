
class Hotel():
    def __init__(self, nombre="*", ubicacion="*", puntaje=0, precio = float("inf")):
        if Numeros().es_numero(puntaje) and Numeros().es_numero(precio):
            self.puntaje = puntaje
            self.precio = precio
        else:
            raise TypeError("Tipo de dato erradu")

        if precio == 0:
            self.precio = float('inf')










class Numeros():
    def es_numero(self,n):
        return isinstance(n , (int, float, complex ))

