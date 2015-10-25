#by T. Yates

class Food
  def initialize (name, carbs, fat, protein)
    @n = name
    @c = carbs
    @f = fat
    @p = protein
  end
  
  def info
    puts("#{@n.capitalize} contains #{@c}g carbs, #{@f}g fat and #{@p}g protein per 100g.")
  end
end

ban = Food.new("banana", 50, 5, 5)

puts(ban)

#by T. Yates