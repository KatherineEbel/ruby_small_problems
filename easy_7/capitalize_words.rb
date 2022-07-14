# Write a method that takes a single String argument and returns a new string that contains
# the original value of the argument with the first character of every word capitalized and
# all other letters lowercase.
# You may assume that words are any sequence of non-blank characters.
# Input string
# Ouput new string
# new string has first char of every word capitalized and all others lowercase

# def word_cap(string)
#   string.split(' ').map(&:capitalize).join(' ')
# end

def word_cap(string)
  string.chars.map.with_index do |char, idx|
    if idx.zero? || string[idx - 1] == ' '
      char.upcase
    else
      char.downcase
    end
  end.join
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
