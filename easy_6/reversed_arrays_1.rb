# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the
# Array passed into this method. The return value should be the same Array object.
# You may not use Array#reverse or Array#reverse!.
# Input: array to reverse
# Output: mutated array (should be same array - same object id)

def reverse!(list)
  list.sort! do |a, b|
    list.index(b) <=> list.index(a)
  end
end

# launch school impl
def reverse_two!(array)
  left_index = 0
  right_index = -1

  # terminate middle of list
  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w[a b e d c]
p reverse!(list) == %w[c d e b a] # true
p list == %w[c d e b a] # true

list = ['abc']
p reverse!(list) == ['abc'] # true
p list == ['abc'] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
