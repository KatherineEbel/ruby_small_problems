# Given an integer. Compute the difference between the
# square of the sum of the first n positive integers
# and the sum of the squares of the first `n` positive
# integers
# collect a list of numbers from 1 upto target number
# sum list and multiply 2
# map squares of each and sum
# subtract list 2 from list 1

def sum_square_difference(num)
  range = (1..num)
  range.sum**2 - range.sum(&:abs2)
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25_164_150
