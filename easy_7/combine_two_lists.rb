# Write a method that combines two Arrays passed in as arguments, and returns a new Array
# that contains all elements from both Array arguments, with the elements taken in alternation.
# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.
# alternate adding elements to array

# def interleave(arr_one, arr_two)
#   arr_one.zip(arr_two).flatten
# end

def interleave(arr_one, arr_two)
  arr_one.each_with_object([]).with_index do |(el, combined), idx|
    combined << el << arr_two[idx]
  end
end

p interleave([1, 2, 3], %w[a b c]) # == [1, 'a', 2, 'b', 3, 'c']
