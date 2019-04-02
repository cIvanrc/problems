class OperatingSystem:
    multi_tasking = True
    name = "Mac OS"

class Apple:
    website = "wwwn.apple.com"
    name = "Apple"

class MacBook(OperatingSystem, Apple):

    def __init__(self):
        if self.multi_tasking:
            print("This is a multi tasking system. Visit {} for more detauls".format(self.website))
            print("Name: ", self.name)

mac = MacBook()
        
