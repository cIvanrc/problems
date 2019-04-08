class A:
    def method(self):
        print("This method is from class A")

class B(A):
    def method(self):
        print("This method belongs to class B")
    pass

class C(A):
    def method(self):
        print("This method belongs to class C")
    pass

class D(B,C):
    pass


d = D()
d.method()
