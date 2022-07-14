# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers.
# Your result should also be an integer.
# Input: Array of positive integers (never empty)
# Output Average of all numbers (Integer)
#
# Average is sum of all elements divided by the total number of elements
# Sum the values of elements in the array and divide by the size
#
def average(positive_numbers)
  positive_numbers.sum / positive_numbers.size.to_f
end

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25

puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40