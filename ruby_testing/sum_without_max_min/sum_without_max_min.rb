class Sum


  def sum(numbers)
    #numbers.sort!
    #numbers.delete_at 0
    #numbers.delete_at(-1)
    #numbers.inject(:+)
    numbers.sort!
    sum = 0
    (1...numbers.count-1).each { |number| sum+=numbers[number] }
    sum
  end
end

puts Sum.new.sum([ 1, 1, 11, 2, 3 ])
puts
puts Sum.new.sum([ 6, 2, 1, 8, 10 ])
