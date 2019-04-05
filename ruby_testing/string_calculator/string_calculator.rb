class NegativeError < StandardError
  attr_reader :thing
  def initialize(msg)
    super("Error::There are negative numbers: #{msg}")
  end
end

class StringCalculator

  def add(numbers = "")
    return 0 if numbers.empty?

    negatives numbers # raise error if there are negative numbers

    numbers.scan( /\d/ ).map(&:to_i).inject(:+)
  end

  def negatives(numbers)
    @negatives =  numbers.scan( /-\d+/ )
    raise NegativeError.new(@negatives.map(&:to_i).join(", ")) unless @negatives.empty?
  end
end

#puts StringCalculator.new.add("1,2, 32, 6, 1 , o")
puts StringCalculator.new.add("1,2, -32, 6, -1 , o")
