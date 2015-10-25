#!/usr/bin/env ruby
puts("Enter text to be edited:")
print(">")
text = gets().chomp.split(" ")
print("Enter word to be replaced: ")
remove = gets().chomp.downcase
print("Enter replacement word: ")
replace = gets().chomp

text.each do |word|
  if word.downcase != remove
    print(word + " ")
  else
    print(replace + " ")
  end
end