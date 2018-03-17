class Pyramid
  def initialize base='null'
    if base.is_a? Array
      @base = base.map do |num|
        num.to_f
      end
    end
  end

  def get_input
    puts 'Please enter a base a row:'
    base = gets().chomp
    base = base.split(',')
    base = base.map do |num|
      num.to_f
    end
    @base = base
  end

  def build_pyramid
    if !@base then get_input end
    size = @base.size - 1

    pyramid = Array.new(size)

    pyramid[0] = @base
    size.times do |prev_index|
      pyramid[prev_index + 1] = build_row pyramid[prev_index]
    end
    @pyramid = pyramid.reverse
  end

  def build_row prev_row
    row = Array.new()
    (prev_row.size - 1).times do |index|
      row << prev_row[index] + prev_row[index + 1]
    end
    return row
  end

  def print_random_pyramid size=10, max_input=100
    base = []
    size.times do
      base << rand(max_input)
    end
    @base = base
    print_pyramid
  end

  def print_pyramid
    if !@pyramid then build_pyramid end
    for row in @pyramid do
      print row
      puts
    end
  end
end
pyramid = Pyramid.new [1,2,3,4,5,6,7,8]
pyramid.print_pyramid
# pyramid.print_random_pyramid 10
