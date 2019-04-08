# write a python program to convert year/month/day to day of year in python


import datetime


today = datetime.datetime.now()

day_of_year = (today - datetime.datetime(today.year, 1, 1)).days + 1

print(day_of_year)
