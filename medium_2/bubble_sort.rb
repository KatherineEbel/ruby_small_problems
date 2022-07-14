# Implement bubble sort
# Input array
# Output array sorted using bubble sort algo
# set swapped to false before each iteration
# on each pass compair each consecutive element
# if first is > second, then swap
# repeat until no swaps are made

def swap!(len, arr)
  1.upto(len - 1) do |idx|
    if arr[idx] < arr[idx - 1]
      arr[idx], arr[idx - 1] = arr[idx - 1], arr[idx]
      len = idx
    end
  end
  len
end

def bubble_sort!(arr)
  len = arr.size
  loop do
    len = swap!(len, arr)
    break arr if len <= 2
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w[Sue Pete Alice Tyler Rachel Kim Bonnie]
bubble_sort!(array)
p array == %w[Alice Bonnie Kim Pete Rachel Sue Tyler]
