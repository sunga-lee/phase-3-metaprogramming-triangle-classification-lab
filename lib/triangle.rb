class Triangle
  # write code here
  attr_reader :x, :y, :z

  def initialize(x, y, Z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    valid_triandle
    if x==y && y==Z
      :equilateral
    elsif x==y || y==z || x==z 
      :isosceles
    else
      :scalene
    end

  end

  def sides_greater_than_zero?
    [x, y, z].all?(&:positive?)

  end

  def valid_triandle_inequality? 
    x+y > z && x+z > y && y+z > x
  end

  

  class TriangleError < StandardError

    def valid_triangle
      raise TriangleError unless sides_greater_than_zero? & valid_triangle_inequality? 
  
    end
  end
end
