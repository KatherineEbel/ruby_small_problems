# Write a method that takes an integer as argument, and returns the maximum rotation of that argument.
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

def max_rotation(number)
  digits = number.to_s.chars
  0.upto(digits.size - 1) do |idx|
    digits << digits.delete_at(idx)
  end
  digits.join.to_i
end

p max_rotation(735_291) == 321_579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
