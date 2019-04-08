class Sum

  def sum(numbers)
    numbers.sort[1, numbers.size-2].inject(:+)
  end
end

puts Sum.new.sum([ 1, 1, 11, 2, 3 ])
puts
puts Sum.new.sum([ 6, 2, 1, 8, 10 ])
