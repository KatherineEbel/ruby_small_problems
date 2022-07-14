# fix the code below so it outputs the following:
# []
# [21]
# [9, 16]
# [25, 36, 49]
# explain why buggy code displayed initial results

def my_method(array)
  result = if array.empty?
             []
           elsif array.map do |value|
             value * value
           end
           else
             [7 * array.first]
           end
  p result
  result
end

# The initial code was using the result of calling map on array as the conditional.
# Since map returns a new array that condition will evaluate to true, but there is nothing
# else executed after the map block. Since the return value of if/elsif blocks is the result
# of the last statement, it results in the method evaluating to nil, if an
# array that is not empty is passed as an argument.
#
p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size > 1
#   array.map do |value|
#     value * value
#   end
#   else
#     [7 * array.first]
#   end
# end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
