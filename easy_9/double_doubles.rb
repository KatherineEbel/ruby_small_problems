# Write method twice, that returns 2 times the number provided as an argument,
# unless the argument is a double number, otherwise return the number as is.
# Check argument
# if number is odd return number doubled
# else split number into digits,
# check if first first half is equal to second half

def double(num)
  num * 2
end

def twice(num)
  digits = num.to_s
  size = digits.size
  left, right = digits[0...size/2], digits[size/2..]
  left == right ? num : double(num)
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10


