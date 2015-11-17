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

for n in x[0]..x[-1]
  if (n % 15 == 0) then y[n - x1] = "Fizzbuzz"
  elsif (n % 3 == 0)||(n % 10 == 3)||((n / 10) % 10 ==3) then y[n - x1] = "Fizz"
  elsif n % 5 == 0||(n / 10) % 10 == 5 then y[n - x1] = "Buzz"
  end
end

for e in (x1 / 10)..(xn / 10 )
  if x = (n / e) % 10 == 5 then y[n - x1] = "Buzz"
  elsif x = (n / e) % 10 == 3 then y[n - x1] = "Fizz"
  end
end
  

puts (x)

#by T. Yates