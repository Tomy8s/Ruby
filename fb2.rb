#!/usr/bin/env ruby
#by T. Yates

#Get user input
print("First number: ")
x1 = gets().chomp.to_i
print("Last number: ")
xn = gets().chomp.to_i

#Create array
x = Array.new
y = Array.new
until x1 > xn
  x = x << x1
  x1 += 1
end

for n % 3 == 0 in x[n] do y[n].replace("fizz")end
#for x[n % 5 == 0] in x do y[n % 5].replace("buzz")end
#for x[n % 15 == 0] in x do y[n % 15].replace("fizzbuzz")end
  
puts y