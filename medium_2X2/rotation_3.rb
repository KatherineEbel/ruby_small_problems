# input: integer
# output: integer with max rotations applied.
#
def rotate_str(str)
  str[1..] << str[0]
end

def rotate_rightmost_digits(num, n)
  digits = num.to_s
  (digits[0...-n] << rotate_str(digits[-n..])).to_i
end

# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#     number = rotate_rightmost_digits(number, n)
#   end
#   number
# end

# alternate
def max_rotation(num)
  digits = num.to_s.chars
  digits.each_index do |idx|
    digits << digits.delete_at(idx)
  end
  digits.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
# 105 => 051 => 015
p max_rotation(8_703_529_146) == 7_321_609_845
