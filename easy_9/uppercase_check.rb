# Given a string, return true if all alphabetic characters are uppercase

def uppercase?(string)
  string.scan(/[a-z]/).empty?
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true