# Write a Python program to sort (ascending and descending) a dictionary by value.
# Original dictionary :  {0: 0, 1: 2, 2: 1, 3: 4, 4: 3}                                                         
# Dictionary in ascending order by value :  [(0, 0), (1, 2), (2, 1), (3, 4), (4, 3)]                            
# Dictionary in descending order by value :  [(4, 3), (3, 4), (2, 1), (1, 2), (0, 0)]



def sort_dic(str):
   my_dictionary = {0: 0, 1: 2, 2: 1, 3: 4, 4: 3}
   my_keys = list(my_dictionary.keys())

   dic_novo = {}
   if str == "asc":
       my_keys.sort()
   elif str == "desc":
       my_keys = my_keys[::-1]
   
   for i in my_keys:
       dic_novo[i] = my_dictionary[i]
   return dic_novo 
