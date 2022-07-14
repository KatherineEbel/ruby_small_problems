# def search(nums, target)
#   nums.each_index.find { |idx| nums[idx] == target } || -1
# end

def search(nums, target)
  left = 0
  right = nums.size - 1
  while left <= right
    mid = left + (right - left) / 2
    num = nums[mid]
    return mid if num == target

    if num > target
      right = mid - 1
    else
      left = mid + 1
    end
  end
  -1
end

def first_bad_version(n)
  # ['g', 'g', 'g', 'b', 'b']
  versions = (1..n).entries
  left = 1
  right = n
  version = nil
  loop do
    puts left, right
    break version if left <= right

    mid = left + (right - left) / 2
    version = versions[mid]
    if isBadVersion(version)
      right = mid
    else
      left = mid + 1
    end
  end
end

p first_bad_version(5)
# nums = [-1, 0, 3, 5, 9, 12]

# p search(nums, 9) == 4
# p search(nums, 2) == -1
