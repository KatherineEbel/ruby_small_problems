# sum of angels must be 180 degrees
# all angles must be greater than 0
# :right => 1 90deg angle
# :acute => 3 angles < 90deg
# :obtuse => 1 angle > 90deg

def triangle(*sides)
  return :invalid if sides.any?(&:zero?) || sides.sum != 180

  if sides.one? { |s| s == 90 }
    :right
  elsif sides.all? { |s| s < 90 }
    :acute
  elsif sides.one? { |s| s > 90 }
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid