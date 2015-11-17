#!/usr/bin/env ruby
#by T. Yates

#Get user input
print("First number: ")
x1 = gets().chomp.to_i
print("Last number: ")
xn = gets().chomp.to_i
unless xn > x1
  puts("Last number must be greater than first number")
  print("Last number: ")
  xn = gets().chomp.to_i
end


y = Array(x1..xn)

for x in (x1..xn)do x.to_s.each_char {|i|
  if(i == "3" || x % 3 == 0)
    y[x - x1] = "Fizz" end}
  x.to_s.each_char {|i|
  if(y[x - x1] == "Fizz" and ((i == "5")or(x % 5 == 0)))
    y[x - x1] =  "Fizzbuzz"
  elsif((i == "5") or (x % 5 == 0))
    y[x - x1] =  "Buzz"
  end
  }

end

puts y

#by T.Yates