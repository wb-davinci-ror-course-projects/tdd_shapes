require './lib/shape'

# documentation
class Triangle < Shape
  attr_reader :length

  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    0.5 * @base * @height
  end

  def right_angle?(side_1, side_2, side_3)
    array = [side_1, side_2, side_3].sort
    if (array[0]**2) + (array[1]**2) == (array[2]**2)
      true
    end
  end
end
