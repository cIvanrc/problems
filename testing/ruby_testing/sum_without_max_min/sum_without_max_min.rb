class Sum


  def sum(numbers)
    numbers.sort!
    numbers[1, numbers.size].inject(:+)
  end
end

puts Sum.new.sum([ 1, 1, 11, 2, 3 ])
puts
puts Sum.new.sum([ 6, 2, 1, 8, 10 ])
