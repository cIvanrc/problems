# Write a Python program to check a triangle is equilateral, isosceles or scalene.
# Note :
# An equilateral triangle is a triangle in which all three sides are equal.
# A scalene triangle is a triangle that has three unequal sides.
# An isosceles triangle is a triangle with (at least) two equal sides.



def check_type_triangle
  print "SideA value: "
  side_a = gets.chomp.to_i
  print "SideB value: "
  side_b = gets.chomp.to_i
  print "SideC value: "
  side_c = gets.chomp.to_i
  
  puts type_triangle side_a, side_b, side_c
end


def type_triangle(side_a, side_b, side_c)
  if ( side_a == side_b ) && (side_a == side_c)
    type_triangle = "equlateral"
  elsif ( side_a != side_b ) && (side_a != side_c) && (side_b != side_c)
    type_triangle = "scalene"  
  else
    type_triangle = "isoceles"
  end
  type_triangle
end


check_type_triangle
