# Write a Python program to get the frequency of the elements in a list.
# input
# my_list = [10,10,10,10,20,20,20,20,40,40,50,50,30]
# outout
# {10: 4, 20: 4, 40: 2, 50: 2, 30: 1}


def frequency():
    my_list = [10,10,10,10,20,20,20,20,40,40,50,50,30]

    my_dic = {}

    for i in my_list:
        if i in my_dic.keys():
            my_dic[i] += 1
        else:
            my_dic[i] = 1

    print(my_dic)

frequency()
