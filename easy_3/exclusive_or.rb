# In this exercise, you will write a function named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.
# Note that we are looking for a boolean result instead of a truthy/falsy value
# as returned by || and &&.

def xor?(arg1, arg2)
  [arg1, arg2].select { |arg| arg }.size == 1
end

puts xor?(5.even?, 4.even?) # == true
puts xor?(5.odd?, 4.odd?) # == true
puts xor?(5.odd?, 4.even?) # == false
puts xor?(5.even?, 4.odd?) # == false