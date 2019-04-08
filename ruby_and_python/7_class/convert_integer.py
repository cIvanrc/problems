# Write a Python class to convert a roman numeral to an integer
# Sample input
# 'MMMCMLXXXVI'
# 'MMMM'
# 'C'
# Sample output
# 3986                                                                                                          
# 4000                                                                                                          
# 100
class py_solution:
    def roman_to_int(self, s):
        rom_val = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
        int_val = 0

        for i in range(len(s)):
            current_rom_value = rom_val[s[i]]
            pass_rom_value = rom_val[s[i - 1]]


            if i > 0 and current_rom_value > pass_rom_value :
                int_val += current_rom_value - 2 * pass_rom_value
            else:
                int_val += current_rom_value

        return int_val

