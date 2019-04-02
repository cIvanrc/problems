class MusicalInstruments:
    number_of_major_keys = 12


class StringInstruments(MusicalInstruments):
    type_of_wood = "Tonewood"

class Guitar(StringInstruments):
    
    def __init__(self):
        self.number_of_string = 6
        print("This guitar consits of {} string. It is made of {} and it can play {} keys".format(self.number_of_string, self.type_of_wood, self.number_of_major_keys))


guitar = Guitar()
        
