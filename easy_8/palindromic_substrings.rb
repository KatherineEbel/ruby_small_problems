# Write a method that returns a list of all substrings of a string that are palindromic.
#  That is, each substring must consist of the same sequence of characters forwards as it does backwards.
#  The return value should be arranged in the same sequence as the substrings appear in the string.
#  Duplicate palindromes should be included multiple times.

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

def palindromes(string)
  substrings(string).select { |substr| palindrome?(substr) }
end

def palindrome?(string)
  string.size > 1 && string.reverse == string
end

p palindromes('abcd') == []
p palindromes('madam') == %w[madam ada]
p palindromes('hello-madam-did-madam-goodbye') == %w[ll -madam- -madam-did-madam- madam madam-did-madam ada adam-did-mada dam-did-mad am-did-ma m-did-m -did- did -madam- madam ada oo]
palindromes('knitting cassettes') == %w[
  nittin itti tt ss settes ette tt
]
