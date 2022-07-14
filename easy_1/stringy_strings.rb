# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# def stringy(number)
#   result = ''
#   %w[1 0].cycle(number) { |num| result << num }
#   result.slice(0, number)
# end

def stringy(number)
  return '1' if number.zero?
  result = ''
  1.upto number do |num|
    result << (num.odd? ? '1' : '0')
  end
  result
end



puts stringy(0) == '1'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'