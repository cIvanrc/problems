# write a python script to display the varius date time formats
# a) current date and time
# b) current year
# c) month of year
# d) week number of the year
# e) weekday of the week
# f) day of year
# g) day of the month
# h) day of week


import time
import datetime

print("current date and time: ", datetime.datetime.now())
print("current year: ", datetime.date.today().strftime("%Y"))
print("month of year", datetime.date.today().strftime("%B"))
print("week number of the year", datetime.date.today().strftime("%W"))
print("weekday of the week", datetime.date.today().strftime("%w"))
print("day of year:",datetime.date.today().strftime("%j") )
print("day of the month: ", datetime.date.today().strftime("%d"))
print("day of week: ", datetime.date.today().strftime("%A"))
