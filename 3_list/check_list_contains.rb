# Write a Python program to check whether a list contains a sublist.
# Input
# a = [2,4,3,5,7]
# b = [4,3]
# c = [3,7]
# print(is_Sublist(a, b))
# print(is_Sublist(a, c))
# Output


def check_list_contains
  primary_list = list "primary"
  secondary_list = list "secondary"

  if is_sublist? primary_list, secondary_list
    puts "Yes, the secondary list is already in the primary list"
  else
    puts "Nu, the primary list does not contains the secondary list"
  end
end


def list(primordiality)
  print "How many elements contains the #{primordiality} list?: "
  elements_count = gets.chomp.to_i

  element_list = []
  elements_count.times do |index|
    print "#{index}.-Element: "
    element_list << gets.chomp.to_i
  end

  element_list  
end

def is_sublist?(primary_list, secondary_list)
  result = true

  if secondary_list.size > primary_list.size
    result = false
  else
    secondary_list.each do |item|
      unless primary_list.include? item
        result = false
      end
    end
  end

  result 
end


check_list_contains
