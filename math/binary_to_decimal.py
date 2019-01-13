# Write a python program to convert a binary number to a decimal number



class Convert():
    def binary_to_decimal(self):
        binary_num = list(input("Input a binary number: "))
        value = 0

        len_binary_num = len(binary_num)

        for i in range(len_binary_num):
            digit = binary_num.pop()
            if digit == "1":
                print("i:{}::digit:{}::val:{}".format(i, digit, pow(2,i)))
                value += pow(2,i)

        return value

