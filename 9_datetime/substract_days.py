# write a python program to substract five days from the current date


from datetime import date, timedelta

dt = date.today() - timedelta(5)

print("current date: ", date.today())
print("5 days before current date:", dt)
