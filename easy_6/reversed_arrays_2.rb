# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order.
# Do not modify the original list.
# You may not use Array#reverse or Array#reverse!,
# nor may you use the method you wrote in the previous exercise.

# [1,2,3,4]
def reverse(list)
  right_index = list.size
  list.each_with_object([]) do |_, new_arr|
    new_arr.append(list[right_index -= 1])
  end
end

def reverse_alt(list)
  right_idx = list.size
  new_arr = []
  loop do
    break new_arr if right_idx.negative?

    new_arr << list[right_idx -= 1]
  end
end

def reverse_alt_two(ary)
  ary.each_with_object([]) { |ele, rev_array| rev_array.unshift(ele) }
end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1] # => true
p reverse(%w[a b e d c]) == %w[c d e b a] # => true
p reverse(['abc']) == ['abc'] # => true
p reverse([]) == [] # => true

list = [1, 3, 2] # => [1, 3, 2]
new_list = reverse(list) # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1] # => true
