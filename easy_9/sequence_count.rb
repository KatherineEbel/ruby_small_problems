# given two integer arguments
# first is a count
# second is first number of sequence
# return an array with same number of elements
# as count argument, while value of each element
# will be multiples of the starting number

def sequence(num_elements, first_num)
  [*1..num_elements].map { |num| num * first_num }
end

p sequence(5, 1)  == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []