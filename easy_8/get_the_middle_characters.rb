# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
#  If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

def center_of(string)
  size = string.size
  half = size / 2
  size.odd? ? string[half] : string[half - 1, 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
