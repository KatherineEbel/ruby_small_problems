# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol
# :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.
# Sum of lengths two shortest sides must be longer than length of longest side
# All sides must have length > 0
# :equilateral  - all sides equal
# :isoceles - 2 sides are equal
# :scalene - all sides different
#

def triangle_type(unique_sides)
  case unique_sides
  when 1 then :equilateral
  when 2 then :isosceles
  when 3 then :scalene
  else :invalid
  end
end

def triangle(*sides)
  lens = sides.sort
  return :invalid if lens.any?(&:zero?)

  type = triangle_type(sides.uniq.size)
  return type if %i[equilateral invalid].include?(type)

  lens.first(2).sum > lens.last ? type : :invalid
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
