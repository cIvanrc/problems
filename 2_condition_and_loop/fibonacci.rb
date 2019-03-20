# Write a Python program to get the Fibonacci series between 0 to 50


def fibonacci(n)
  tmp = fibo = 0
  y =1 

  while fibo<n
    puts fibo
    tmp = y
    y = fibo
    fibo = tmp+y    
  end
  
end

print "Fibo range: "
n = gets.chomp.to_i

fibonacci(n)
