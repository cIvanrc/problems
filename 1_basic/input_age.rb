require 'date'

def input_age
   print "your name: "
   name = gets.chomp
   print "your age: "
   age = gets.chomp.to_i

   current_year = get_current_year

   finally_year = 100 - age + current_year

   puts "#{name}, in the year #{finally_year} you will turn 100 years old"
end

def get_current_year
   now = DateTime.now
   now.strftime("%Y").to_i
end
