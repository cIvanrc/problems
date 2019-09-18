def is_array_sorted?(array)
  return true if array.size == 1

  puts "#{array[0]} is greater than #{array[1]}" unless array[0] <= array[1] 
  array[0] <= array[1] && is_array_sorted?(array[1..-1])
end

array = [127, 120, 246, 277, 321, 454, 565, 831, 210]
puts is_array_sorted? array
