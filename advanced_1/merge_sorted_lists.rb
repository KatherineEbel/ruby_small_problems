# Given two sorted arrays as arguments, return a new array
# that contains all elements from both arguments in sorted order.
# iterate through first array. if  either

def merge(arr1, arr2)
  idx1 = idx2 = 0
  result = Array.new(arr1.size + arr2.size)
  result.map!.with_index do |_, idx|
    f, s = arr1[idx1], arr2[idx2]
    break result if [f, s].any?(&:nil?)
    if f < s
      result[idx] = arr1[idx1]
      idx1 += 1
    else
      result[idx] = arr2[idx2]
      idx2 += 1
    end
  end
  result.compact + arr1[idx1..] + arr2[idx2..]
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2])  == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]