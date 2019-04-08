# Write a Python program to get the difference between the two lists
# Input
# list1 = [1, 2, 3, 4]
# list2 = [1, 2]
# Output
# [3,4]

def diff_between
  list1 = list 1
  list2 = list 2

  print list1 - list2
  puts  
end


def list(primordiality)
  print "How many items your set #{primordiality} has?: "

  items_count = gets.chomp.to_i
  items = []

  items_count.times do |index|
    print "#{index}.-Item: "
    item = gets.chomp

    items << item
  end

  items  
end


diff_between
