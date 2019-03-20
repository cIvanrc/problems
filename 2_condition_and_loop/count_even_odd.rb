# Count the number of even and odd numbers from a series of numbers
# Input
# numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9) # Declaring the tuple
# Output
# Number of even numbers : 4
# Number of odd numbers : 5



def count_even_odd(list)
  even = odd = 0

  list.each do |e|
    if e.even?
      even+=1
    else
      odd+=1
    end
  end
  
  puts "Number even: #{even}"
  puts "Number odd: #{odd}"
end


count_even_odd([1,2,3,4,5,6,7,8,9])
