# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.
# Input string
# output => hash with 3 key value pairs
# key one = number of lowercase letters
# key two = number of uppercase letters
# key three = number of characters that are neither

def letter_case_count(string)
  string.chars.each_with_object({ lowercase: 0, uppercase: 0, neither: 0 }) do |char, entries|
    case char.ord
    when 65..90 then entries[:uppercase] += 1
    when 97..122 then entries[:lowercase] += 1
    else entries[:neither] += 1
    end
  end
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
