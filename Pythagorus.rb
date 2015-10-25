#!/usr/bin/env ruby
#by T. Yates

def hypotenuse
  print("Please enter the height of the triangle: ")
  b = gets().to_f
  print("Please enter the width of the triangle: ")
  c = gets().to_f
  h = Math.sqrt(b*b + c*c)
  puts("The hypotenues of your triangle is #{h.round(2)}.")
end

def otherSide
  print("Please enter the length of the hypotenuse: ")
  h = gets().to_f
  print("Please enter the length of the other known side: ")
  a = gets().to_f
  b = Math.sqrt(h*h - a*a)
  puts("The other side's length is #{b.round(2)}")
end

def area
  print("Please enter the height of the triangle: ")
  b = gets().to_f
  print("Please enter the width of the triangle: ")
  c = gets().to_f
  a = b*c*0.5
  puts("The area of your triangle is #{a.round(2)}.")
end

#Program begins

puts("What would you like to do?")
puts("1. find the hypotenuse")
puts("2. find the length of a different side")
puts("3. find the area")
print("Please enter your choice now: ")
choice = gets().to_i

if choice == 1 then hypotenuse
  elsif choice == 2 then otherSide
  elsif choice == 3 then area
end

#by T. Yates