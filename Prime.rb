#by T. Yates

Nx1 = nil      #First number in range
print("Enter first number in range: ")
x1 = gets().chomp.to_i

xn = x1 - 1   #Last number in range
until xn > x1
  print("enter last number in range: ")
  xn = gets().chomp.to_i
end

def prime(args)
    #code
end
for x in x1..xn
  d = 2                       #divisor
  until ((x % d) == 0) or (d > (x.abs/2))
    d += 1
  end
  if (x % d) == 0
    puts("#{x} is not prime.  It is divisible by #{d}.")
  else
    puts("#{x} is prime.")
  end
end

#by T. Yates