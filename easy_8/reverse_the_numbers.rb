# Write a method that takes a positive integer as an argument and returns
#  that number with its digits reversed. Examples:

def reversed_number(number)
  number.digits.join.to_i
end

p reversed_number(12_345) == 54_321
p reversed_number(12_213) == 31_221
p reversed_number(456) == 654
p reversed_number(12_000) == 21 # No leading zeros in return value!
p reversed_number(12_003) == 30_021
p reversed_number(1) == 1
