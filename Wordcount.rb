#!/usr/bin/env ruby
puts("Enter text for analysis:")
words = gets().chomp.split(" ")

table = Hash.new(0)
words.each {|index| table[words] += 1}
#table.each {|index, amount|  }
#puts table
#puts("#{index} #{amount}")


#puts "Write a string:"
#text = gets.chomp
#text.downcase!
##words = text.split
#
#frequencies = Hash.new(0)

#words.each {|item| table[item] += 1}

table = table.sort_by {|index, amount|index.length}

table.each do |index, amount|
  puts("#{index} #{amount}")
end




#x = 0
#n = 0
#puts(text.length - 1)
#puts(text[(text.length) -1])
#
#until x == (text.length -1)
#    if test
#        #code
#    end
#    
#end
#
#
#
#for word in text
#   if  
#end
