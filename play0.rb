#!/usr/bin/env ruby
#by T. Yates

class Greet
    def initialize(name)
      @name = name
    end
    def hi
      puts("Hello #{@name.chomp.capitalize}!")
    end
    def bye
      puts("Bye #{@name.chomp.capitalize}!")
    end
end

puts("Hello! What's your name?")
print("> ")
name = gets().chomp
hi = Greet.new(name)
hi.hi
while gets.downcase[0] == "h"
  hi.hi
end
hi.bye

#by T. Yates