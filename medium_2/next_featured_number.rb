# Featured number
# odd number
# multiple of 7
# digits occur only once

MAX_UNIQUE_NUM = 9_876_543_210

def featured?(num)
  return false if num.even?

  digits = num.digits
  (num % 7).zero? && digits.uniq.size == digits.size
end

def featured(num)
  # num.finite? ? 'There is no possible number that fulfills those requirements' : num
  num += 1
  num += 1 until featured?(num) || num >= MAX_UNIQUE_NUM
  num > MAX_UNIQUE_NUM ? 'No more featured numbers' : num
end

p featured(12) == 21
p featured(20) == 21
p featured(21)  == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
#
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
