#  Write a Python program to construct the following pattern, using a nested for loop.
# *
# * *
# * * *
# * * * *
# * * * * *
# * * * *
# * * *
# * *
# *

def construct_pattern(n)
  if n % 2 != 0
    puts  "must be a even number"    
    return
  end

  middle = n/2
  tmp = 2

  (1..n).each do |i|
    if i > middle
      puts "*"*(i-tmp)
      tmp+=2
    else
      puts "*"*i      
    end
  end
end


print "number value: "
n = gets.chomp.to_i

construct_pattern(n)

