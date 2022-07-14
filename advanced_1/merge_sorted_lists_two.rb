def merge(*arrays)
  shortest, longest = arrays.sort_by(&:size)
  return longest if shortest.empty?

  longest_offset = 0
  new_arr = [*0...shortest.size].reduce([]) do |result, idx|
    while longest[longest_offset] && longest[longest_offset] < shortest[idx]
      break if longest[longest_offset].nil?
      result << longest[longest_offset]
      longest_offset += 1
    end
    result << shortest[idx]
  end
  new_arr.concat(longest[longest_offset..-1])
end

# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]

def merge_sort(list)
  size = list.size
  return list if size == 1

  left, right = list[0...size / 2], list[size / 2..-1]
  merge(merge_sort(left), merge_sort(right))
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]