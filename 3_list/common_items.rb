# Write a Python program to find common items from two lists.
# input
# color1 = "Red", "Green", "Orange", "White"
# color2 = "Black", "Green", "White", "Pink"
# output
# {'Green', 'White'}


def commom_items
  color1 = colors 1
  color2 = colors 2

  print color1 & color2
  puts
end



def colors(primordiality)
  print "How many colors your set #{primordiality} has?: "

  colors_count = gets.chomp.to_i
  colors = []

  colors_count.times do |index|
    print "#{index}.-Color: "
    color = gets.chomp

    colors << color
  end

  colors  
end


commom_items
