#!/usr/bin/env ruby
#by T. Yates

print("Enter first number in range: ")
x1 = gets().to_i
print("Enter last number  in range: ")
xn = gets().to_i
for x in x1..xn do
d = 2
factors = Array.new
  until d > (x.abs / 2)
    #puts(x.abs/ 2
    if x % d == 0
      factors << d
      #unless d == (x/d)
      #  factors << (x/d)
      #end
    end
    d += 1
  end
  #puts(factors.flatten)

  if factors == [] then
      puts("#{x} is prime.")
    else
      puts("The factors of #{x} are #{factors}.")
  end
end

#by T. Yates