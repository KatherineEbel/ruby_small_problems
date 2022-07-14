# Given a positive number, return the negative of that number.
# if the number is 0 or negative, return the original number.
#

def negative(num)
  return num if num.zero? || num.negative?
  -num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby