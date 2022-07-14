# Given lengths of 3 sides of triangle.
# Return :iscosceles, :scalene, or :invalid
# depending on which type is represented by side lengths.
# equilateral: 3 sides ==
# isosceles 2 sides ==
# scalene all sides different

def triangle(*sides)
  return :invalid if sides.any?(&:zero?)
  case sides.uniq.size
  when 3 then :scalene
  when 2
    sides = sides.sort
    sides.first(2).sum > sides.last ? :isosceles : :invalid
  else :equilateral
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

