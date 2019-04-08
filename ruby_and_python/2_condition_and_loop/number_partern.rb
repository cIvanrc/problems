# Write a Python program to construct the following pattern, using a nested loop number.
# 1
# 22
# 333
# 4444
# 55555
# 666666
# 7777777
# 88888888
# 999999999

def number_patern(n)
  1.upto(n) {|i| puts str(i)*i}
end

def str(n)
  n.to_s
end


print "n value: "
n = gets.chomp.to_i

number_patern(n)
