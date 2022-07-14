# sort input array using merge sort algorithm

def merge(arr1, arr2)
  idx1 = idx2 = 0
  result = Array.new(arr1.size + arr2.size)
  result.map! do |_|
    f, s = arr1[idx1], arr2[idx2]
    break result if [f, s].any?(&:nil?)
    if f < s
      idx1 += 1
      arr1[idx1 - 1]
    else
      idx2 += 1
      arr2[idx2 - 1]
    end
  end
  (result + arr1[idx1..] + arr2[idx2..]).compact
end

def merge_sort(arr)
  size = arr.size
  return arr if size == 1
  left, right = arr[0...size/2], arr[size/2..]
  merge(merge_sort(left), merge_sort(right))
end

p merge_sort([9, 5, 7, 1]) # == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]