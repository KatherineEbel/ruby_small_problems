# Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is
#  divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

def fizz?(num)
  (num % 3).zero?
end

def buzz?(num)
  (num % 5).zero?
end

def display_fizzbuzz(num)
  result = ''
  result << 'Fizz' if fizz?(num)
  result << 'Buzz' if buzz?(num)
  puts result.empty? ? num : result
end

def fizzbuzz(min, max)
  min.upto(max).each do |n|
    display_fizzbuzz(n)
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
