# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.
#  This means that all substrings that start at position 0 should come first, then all substrings that start at position 1,
#  and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned
#  in order from shortest to longest.

def leading_substrings(string)
  string.chars.each_index.map do |idx|
    string.slice(0, idx + 1)
  end
end

def substrings(string)
  string.chars.each_index.flat_map do |idx|
    leading_substrings(string[idx..-1])
  end
end

p substrings('abcde') == %w[
  a ab abc abcd abcde
  b bc bcd bcde
  c cd cde
  d de
  e
]
