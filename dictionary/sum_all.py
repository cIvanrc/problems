# Sum all the items in a dictionary
# Input {'data1':100,'data2':-54,'data3':247}
# Output 293



def sum_all():
    my_dictionary = {'data1':100,'data2':-54,'data3':247}
    
    sum_items = 0
    for i in my_dictionary.keys():
        sum_items+=my_dictionary[i]
    
    return sum_items 



