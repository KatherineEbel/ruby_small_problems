def fibonacci(nth)
  return 1 if nth < 3
  first = second = 1
  fib = first + second
  3.upto(nth) do
    first, second = [second, first + second]
    fib = second
  end
  fib
end

# def fibonacci_last(nth)
#   last_2 = [1,1]
#   3.upto(nth) do
#     last_2 = [last_2.last, last_2.sum % 10]
#   end
#   last_2.last
# end

def fibonacci_last(num)
  num %= 60
  sequence = [0, 1]
  2.upto(num) { sequence = [sequence.last, sequence.sum % 10] }
  sequence.last
end

# p fibonacci_last(15)  == 0       # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20) == 5      # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100) == 5      # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001) == 1  # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) == 4 # -> 4
