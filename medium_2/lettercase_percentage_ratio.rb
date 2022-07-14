# Write a method that takes a string, and then
# returns a hash that contains 3 entries:
# one represents the percentage of characters in the string that are lowercase letters,
# one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.
# Input: string
# Output hash
# 3 keys
# 1. percentage lowercase characters
# 2. percentage uppercase letters
# 3. percentage neither

# calculate percentage total number in (entry / total num chars) * 100

def calculate_percentage(part, whole)
  (part / whole.to_f * 100).round(2)
end

def percentages(lowers:, uppers:, neither:)
  {
    lowercase: calculate_percentage(lowers.size, string.size),
    uppercase: calculate_percentage(uppers.size, string.size),
    neither: calculate_percentage(neither.size, string.size)
  }
end

def letter_percentages(string)
  alphas, neither = string.chars.partition { |ch| ch =~ /[a-z]/i }
  uppers, lowers = alphas.partition { |ch| ch =~ /[A-Z]/ }
  percentages(lowers: lowers, uppers: uppers, neither: neither)
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
