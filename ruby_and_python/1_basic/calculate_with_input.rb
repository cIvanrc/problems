def calculate
   print "n value: "
   n = gets.chomp.to_i

   result = n
   (2..3).each do |i|
      tmp = n.to_s * i
      result=result+tmp.to_i
   end

   "result: #{result}"
end


puts calculate
