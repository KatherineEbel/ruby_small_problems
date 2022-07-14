# Write a method that can rotate the last n digits of a number.

# reverse the digits
#
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# def rotate_rightmost_digits(num, count)
#   digits = num.to_s.chars
#   # [-count..-1] returns last n digits of array
#   digits[-count..-1] = rotate_array(digits[-count..-1])
#   digits.join.to_i
# end

# student solution
def rotate_rightmost_digits(number, index)
  number = number.to_s.chars
  number << number.delete_at(-index)
  number.join.to_i
end

p rotate_rightmost_digits(735_291, 1) == 735_291
# p rotate_rightmost_digits(735_291, 2) == 735_219
p rotate_rightmost_digits(735_291, 3) #  == 735_912
# rotate_rightmost_digits(735_291, 4) == 732_915
# rotate_rightmost_digits(735_291, 5) == 752_913
# rotate_rightmost_digits(735_291, 6) == 352_917
