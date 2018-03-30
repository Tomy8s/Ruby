class Pyramid
  def initialize base='null'
    if base.is_a? Array
      @base = base.map do |num|
        convert(num.to_f)
      end
    end
  end

  def get_input
    puts 'Please enter a base a row:'
    base = gets().chomp
    base = base.split(',')
    base = base.map do |num|
      convert(num.to_f)
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
      sum = convert(prev_row[index] + prev_row[index + 1])
      row << sum
    end
    return row
  end

  def convert sum
    if sum - sum.to_i == 0 then
      sum = sum.to_i
    end
    sum
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

  def find_block_width
    if !@pyramid then build_pyramid end
    if !@block_width then @block_width = 0 end
    @pyramid.flatten.each do |block|
      if block.to_s.size > @block_width
        @block_width = block.to_s.size
      end
    end
  end
  
  def pretty_print_pyramid
    if !@pyramid then build_pyramid end
    if !@block_width then find_block_width end
    puts '/\\'.center((@block_width + 4)* @pyramid.size)
    for row in @pyramid do
      new_row = row.map do |block|
        block.to_s.center @block_width + 2
      end
      print ('/' + new_row.join('|') + '\\').center((@block_width + 4)* @pyramid.size)
      puts 
    end
  end
end
pyramid = Pyramid.new [1, 2, 3,4,4]
pyramid.pretty_print_pyramid
# pyramid.print_random_pyramid 10
