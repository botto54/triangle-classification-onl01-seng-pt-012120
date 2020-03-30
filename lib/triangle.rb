class Triangle
  def initialize(side1, side2, side3)
    @triangle_sides = []
    @triangle_sides << side1
    @triangle_sides << side2
    @triangle_sides << side3
  end
  
  def kind
    if @triangle_sides.uniq.length == 1
      return :equilateral
    elsif @triangle_sides.uniq.length == 2
      return :isosceles
    else 
      return :scalene
    end
    
  end
  
  class TriangleError < StandardError
  end
end

# if valid?
#       if @triangle_sides.uniq.length == 1
#         return :equilateral
#       elsif @triangle_sides.uniq.length == 2
#         return :isosceles
#       else
#         return :scalene
#       end
#     else
#       raise TriangleError
#     end
#   end