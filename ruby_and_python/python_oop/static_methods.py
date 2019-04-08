class Employee:

    def employeeDetails(self):
        self.name = "ivan"
        print(self.name)        

    @staticmethod
    def static_method():
        print("Message from a static method")

employee = Employee()
employee.employeeDetails()
employee.static_method()
