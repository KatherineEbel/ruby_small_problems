# Write a method that takes a String as an argument, and returns a new String that contains
# the original value using a staggered capitalization scheme in which every other character
# is capitalized, and the remaining characters are lowercase. Characters that are not letters
# should not be changed, but count as characters when switching between upper and lowercase.

# Input: string
# Output: string
# capitalize ever other character
# non-letters count when switching cases, but should not change

def staggered_case(string)
  string.downcase.chars.map.with_index { |char, idx| idx.even? ? char.upcase : char }.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') # == 'IgNoRe 77 ThE 444 NuMbErS'
