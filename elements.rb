#!/usr/bin/env ruby
#by T. Yates

puts ("What would you like to do?\n 1. Add an element. 2. view an element.")
task = gets.chomp.to_i
while task != 1 || 2
    print ("Enter 1 to add an element or 2 to view an element.")
    task = gets.chomp.to_i
end

class Collection
  puts ("Please enter the element's #{data}.")
  n = gets.chomp
  while n.length == 0
    puts ("You must enter a name. Please enter the element's #{data}.")
    n = gets.chomp
  end
end


class Create(n, s, a, m, d)

case task