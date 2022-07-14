# Write a method that takes a string,
#  and returns a new string in which every character is doubled.

def repeater(string)
  string.chars.reduce('') { |result, str| result + str * 2 }
end

p repeater('Hello') == 'HHeelllloo'
p repeater('Good job!') == 'GGoooodd  jjoobb!!'
p repeater('') == ''
