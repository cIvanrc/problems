class Apple:
    manufacturer = "Apple Inc."
    contact_website = "www.apple.com/contact"

    def contact_details(self):
        print("To concact us, log on to: ", self.contact_website)


class MacBook(Apple):
    def __init__(self):
        self.year_of_manufacture = 2019


    def manufacture_details(self):
        print("This MacBook was manfactured in the year {} by {}".format(self.year_of_manufacture, self.manufacturer))



mac = MacBook()
mac.manufacture_details()
mac.contact_details()
        


