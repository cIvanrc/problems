# Write a Python program to check whether an alphabet is a vowel or consonant
#
#
#



def vowel_or_consonant
  print "Something's value: "
  value = gets.chomp

  value.each_char { |char| puts check_what_is char  }
end
  
def check_what_is(str)
  if str =~ /[aeiou]/
    is_a = "vowel"
  else
    is_a = "consonant"
  end
  "#{str} is a: #{is_a}"
end


vowel_or_consonant
