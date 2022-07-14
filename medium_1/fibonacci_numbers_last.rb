# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.
#
def fibonacci(nth)
  first = last = 1
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
  # fibonacci(nth % 60).to_s[-1].to_i # faster alternative
end

2.upto(120) do |n|
  p fibonacci(n)
end
# p fibonacci_last(15).zero? # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20) == 5 # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100) == 5 # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001) == 1 # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123_456_789) == 4 # -> 4
