
class FizzBuzz


  def play(n)
    (1..n).each { |number| puts fizz_buzz number }
  end

  #private

  def fizz_buzz(number)
    message = number

    if ( ( number%3 == 0 ) && ( number%5 == 0 ) ) || number.to_s =~ /(35|53)/  
      message = "FizzBuzz"
    elsif ( number == 3 ) || ( number.to_s =~ /[3]/ )
      message = "Fizz"
    elsif ( number == 5 ) || ( number.to_s =~ /[5]/ )
      message = "Buzz"
    end

    message
  end
end

FizzBuzz.new.play(580)
