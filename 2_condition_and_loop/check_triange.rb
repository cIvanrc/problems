def check_triange(sideA, sideB, sideC)
  if (sideA > sideB+sideC) || (sideB > sideA+sideC) || (sideC > sideA+sideB)
    puts "No, the lengths wont form a triangle"
  elsif (sideA == sideB+sideC) || (sideB == sideA+sideC) || (sideC == sideA+sideB)
    puts "Yes, it can form a degenerated triangle"
  else
    puts "Yes, a trinagle can be formed out of it"
  end
  
end


print "sideA value: "
sideA = gets.chomp.to_i
print "sideB value: "
sideB = gets.chomp.to_i
print "sideC value: "
sideC = gets.chomp.to_i

check_triange(sideA, sideB, sideC)

