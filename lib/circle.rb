require './lib/shape'

# Rubocop error eliminator comment
class Circle < Shape
  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * radius**2
  end

  def circumference
    2 * Math::PI * radius
  end
end
