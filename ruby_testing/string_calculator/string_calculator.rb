class StringCalculator

  def add(numbers = "")
    return 0 if numbers.empty?

    numbers.scan( /\d/ ).map(&:to_i).inject(:+)
  end
end

puts StringCalculator.new.add("1,2")
