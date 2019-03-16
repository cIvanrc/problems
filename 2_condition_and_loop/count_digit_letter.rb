# Write a Python program that accepts a string and calculate the number of digits and letters
# Sample Data : "Python 3.2"
# Expected Output :
# Letters 6
# Digits 2

def count_digit_letter(str)
  count_digit = count_letter = 0

  (str).each_char do |char|
    if char =~ /\d/
      count_digit+=1
    elsif char =~ /\w/
      count_letter+=1
    end  
  end 
  
  puts "Digits: #{count_digit}" 
  puts "Letters: #{count_letter}"
  
end


print "String value: "
str = gets.chomp
count_digit_letter(str)
