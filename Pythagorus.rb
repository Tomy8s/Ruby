#!/usr/bin/env ruby
#by T. Yates

def hypotenuse
  print("Please enter the height of the triangle: ")
  b = gets().to_f
  print("Please enter the width of the triangle: ")
  c = gets().to_f
  h = Math.sqrt(b*b + c*c)
  puts("The hypotenues of your triangle is #{h.round(2)}.")
  again
end

def otherSide
  print("Please enter the length of the hypotenuse: ")
  h = gets().to_f
  print("Please enter the length of the other known side: ")
  a = gets().to_f
  if a > h
    puts("The hypotenuse should be the longest side, but I guess you got your numbers mixed up. We've changed your hypotenuese to #{a} and other known side's length to #{h}. ;)")
  end
    b = Math.sqrt((h*h - a*a).abs)
    puts("The other side's length is #{b.round(2)}")
  again
end

def area
  print("Please enter the height of the triangle: ")
  b = gets().to_f.abs
  print("Please enter the width of the triangle: ")
  c = gets().to_f.abs
  a = b*c*0.5
  puts("The area of your triangle is #{a.round(2)}.")
  again
end

def program
  choice = 9
  puts("What would you like to do?")
  puts("1. find the hypotenuse")
  puts("2. find the length of a different side")
  puts("3. find the area")
  puts("4. exit")
  until ((choice < 5) && (choice > 0))
    print("Please enter your choice now: ")
    choice = gets().to_i
  end
  
  if choice == 4
    puts("\n\tGoodbye!")
  end
  
  case (choice)
  when 1 then hypotenuse
  when 2 then otherSide
  when 3 then area
  end 
end

def again
  answer = ""
    print("\nWould you like to go again [Yes]? ")
    answer = gets()
    
    if answer[0].downcase == "y" || answer == "\n"
      puts()
      program
    else
      puts("\n\tGoodbye!")
    end
end

program

#by T. Yates