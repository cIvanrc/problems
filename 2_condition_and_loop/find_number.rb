#  Write a Python program to find those numbers which are divisible by 7 and multiple of 5, between 1500 and 2700



def find_numbers(init, final)

  numbers = Array.new


  init.upto(final) do |i|
    if (i%7 == 0) && (i%5 == 0)
      numbers << i
    end
  end
    puts numbers.join("-")
end


find_numbers(1500, 2700)
