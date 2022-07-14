# Write a method that returns a list of all substrings of a string that start
# at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.
def leading_substrings(string)
  string.chars.each_index.map do |idx|
    string.slice(0, idx + 1)
  end
end

p leading_substrings('abc') == %w[a ab abc]
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == %w[x xy xyz xyzz xyzzy]
