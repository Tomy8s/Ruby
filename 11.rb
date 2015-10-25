#!/usr/bin/env ruby
#by T. Yates
class X
  @@var = 100
  @var = "abc"
  def m
    puts @@var
    puts @var
  end
end

ob = X.new
p(ob)

#by T. Yates