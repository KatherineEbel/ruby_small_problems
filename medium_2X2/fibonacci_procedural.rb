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

p fibonacci(3)
p fibonacci(20)  == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501