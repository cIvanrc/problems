# Generate a random number between 1 and 9 (including 1 and 9).
# Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.



def guess_game
  number_random = rand(1..9)
  print "Number guess: "
  number = gets.chomp.to_i

  puts is_correct?(number, number_random)
end

def is_correct?(number_guess, number_valid)
  if number_guess < number_valid
    output = "too low"
  elsif number_guess > number_valid
    output = "too high"
  else
    output = "exactly exact"
  end

  output
end



guess_game
