# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
def fibonacci(nth)
  return 1 if nth < 3

  fibonacci(nth - 1) + fibonacci(nth - 2)
end

# Tail recursive
# def fibonacci_tail(nth, acc1, acc2)
#   if nth == 1
#     acc1
#   elsif nth == 2
#     acc2
#   else
#     fibonacci_tail(nth - 1, acc2, acc2 + acc1)
#   end
# end
#
# def fibonacci(nth)
#   fibonacci_tail(nth, 1, 1)
# end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
