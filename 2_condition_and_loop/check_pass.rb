def check_pass
   print "say a password: "
   passw = gets.chomp

   if is_valid? passw
      puts "valid pass"
   else
      puts "wrong pass"
   end
end

def is_valid?(passw)
   is_valid = true

   if !(passw.length >= 6 && passw.length <= 16)
      is_valid = false
   elsif !(passw =~ /[a-z]+/)
      is_valid = false
   elsif !(passw =~ /[A-Z]+/)
      is_valid = false
   elsif !(passw =~ /[0-9]+/)
      is_valid = false
   elsif !(passw =~ /[$#@]+/)
      is_valid = false
   end

   is_valid
end

