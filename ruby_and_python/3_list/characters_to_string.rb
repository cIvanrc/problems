# Convert a list of characters into a string
# Input ['a', 'b', 'c', 'd']
# Output abcd

def character_to_string
  print "Number of characters: "
  number_characters = gets.chomp.to_i

  characters = characters number_characters

  puts characters_to_string characters  
end

def characters(number_characters)
  characters = []

  number_characters.times do |index|
    print "#{ index+1 }.-character: "
    character = gets.chomp
    characters << character
  end
  
  characters
end

def characters_to_string(characters)
  "Result: #{characters.join("")}"
end


character_to_string
