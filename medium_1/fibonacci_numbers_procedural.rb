# Rewrite your recursive fibonacci method so that it computes its results without recursion.
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
# fibonacci(nth - 1) + fibonacci(nth - 2)

# def fibonacci(nth)
#   return nth if nth <= 2
#
#   fib = fib1 = fib2 = 1
#   (3).upto(nth) do |_n|
#     fib = fib1 + fib2
#     fib1 = fib2 # will be the first last fib number
#     fib2 = fib # - will be the next last fib number
#   end
#   fib
# end

def fibonacci(nth)
  return 1 if nth <= 2
  first = last = 1
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end
p fibonacci(20)  == 6765
p fibonacci(100) == 354_224_848_179_261_915_075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
