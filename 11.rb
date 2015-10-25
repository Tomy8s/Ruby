#!/usr/bin/env ruby
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