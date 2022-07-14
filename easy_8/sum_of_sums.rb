# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence f
# or that Array.
# You may assume that the Array always contains at least one number.
# iterate through the array starting a 1 and up to array size
# variable for total to add each element
def sum_of_sums(array)
  array.each_with_index.reduce(0) do |sum, (_, idx)|
    sum + array.slice(0, idx + 1).sum
  end
end

p sum_of_sums([3, 5, 2]) == 3 + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == 1 + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
