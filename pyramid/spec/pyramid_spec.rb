require './pyramid'

RSpec.describe Pyramid, '#print_pyramid' do
  context 'init with array' do
    it 'returns the correct pyramid with 1' do
      pyramid = Pyramid.new [1]
      expect{ pyramid.print_pyramid }.to output("[1]\n").to_stdout
    end
  end
end
