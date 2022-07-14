# Write a method that takes the 3 angles of a triangle as arguments,
# and returns a symbol :right, :acute, :obtuse, or :invalid depending
# on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about
# floating point errors. You may also assume that the arguments are specified in degrees.
# Sum of angles mus t = 180
# All angles > 0
# :right one 90deg angle
# :acute 3 angles < 90deg
# :obtuse 1 angle > 90
# convert angles params to arr
# return false any 0 or sum not 180
require 'pry'

def valid?(angles)
  angles.sum == 180 && angles.count(0).zero?
end

def triangle(*angles)
  return :invalid unless valid?(angles)

  if angles.include?(90)
    :right
  elsif angles.all? { |a| a < 90 }
    :acute
  else :obtuse
  end
end

p triangle(60, 70, 50)   == :acute
p triangle(30, 90, 60)   == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90)   == :invalid
p triangle(50, 50, 50) == :invalid
