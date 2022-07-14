# Write a method that returns the next to last word in the String passed to it as an argument.
#
# Words are any sequence of non-blank characters.
#
# You may assume that the input String will always contain at least two words.

# split string separated by spaces
# return second to last element in array
def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
