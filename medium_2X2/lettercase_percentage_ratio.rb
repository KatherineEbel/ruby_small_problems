# Given a string, return a hash that contains 3 keys
# lowercase, uppercase, neither
# iterate through string with a hash
# add each character to it's matching key

KEYS = [:uppercase, :lowercase, :neither]
def letter_percentages(str)
  uppercase, rest = str.chars.partition { |c| c =~ /[A-Z]/ }
  lowercase, neither = rest.partition { |c| c =~ /[a-z]/ }
  results = [uppercase, lowercase, neither].map do |chars|
    (chars.size / str.size.to_f) * 100
  end
  KEYS.zip(results).to_h
end

p letter_percentages('abCdef 123')  == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }