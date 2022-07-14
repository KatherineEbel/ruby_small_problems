# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by
# definition, and each subsequent number is the sum of the two previous numbers.
# This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly
# rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous,
# especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number
# of digits specified as an argument. (The first Fibonacci number has index 1.)

# Input - number of digits in fib number
# Output: which fibonacci number (index + 1)
# create fibonacci numbers
# increment each time fibonacci number calculated
# argument always >= 2
# fibonacci  (each number is the sum of the two preceding ones)
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
#
#

def fibonacci(number)
  return number if number < 2

  fibonacci(number - 1) + fibonacci(number - 2)
end

# def find_fibonacci_index_by_length(len)
#   index = 2
#   index += 1 while fibonacci(index).to_s.size < len
#   index
# end

# def find_fibonacci_index_by_length(len)
#   answer = [1, 1]
#   answer.push(answer.last(2).sum) until answer.last.to_s.size == len
#   answer.size
# end

def find_fibonacci_index_by_length(len)
  first = second = 1
  index = 2
  loop do
    index += 1
    fibonacci = first + second
    break index if fibonacci.to_s.size >= len

    first = second
    second = fibonacci
  end
end

# p find_fibonacci_index_by_length(2) == 7 # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12 # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10_000) == 47_847
