class Employee:

    def employeeDetaials(self):
        self.name = "ivan"
        print("Name: ", self.name)
        age = 23
        print("Age: ", age)

    def printEmployeeDetails(self):
        print("Printing in another method")
        print("Name: ", self.name)
        print("Age: ", age)




employee = Employee()
employee.employeeDetaials()
employee.printEmployeeDetails()
