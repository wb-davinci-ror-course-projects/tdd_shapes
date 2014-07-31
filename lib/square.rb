require './lib/shape'

# O HAI Rubocop
class Square < Shape
  attr_reader :length

  def initialize(length)
    @length = length
  end

  def area
    length**2
  end

  def perimeter
    length * 4
  end
end
