# Write a method that can rotate the last n digits of a number. For example:


def rotate_str(str)
  str[1..] << str[0]
end

def rotate_rightmost_digits(num, n)
  digits = num.to_s
  (digits[0...-n] << rotate_str(digits[-n..])).to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917