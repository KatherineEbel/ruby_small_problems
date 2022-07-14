# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.
#
# Do not use the method Array#rotate or Array#rotate! for your implementation.

# def rotate_array(arr)
#   copy = arr.dup
#   copy.append(copy.shift)
# end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_string(string)
  string[1..-1] + string[0]
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(%w[a b c]) == %w[b c a]
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1] # => true
x == [1, 2, 3, 4] # => true

p rotate_string('string') == 'trings'
p rotate_integer(1234) == 2341
