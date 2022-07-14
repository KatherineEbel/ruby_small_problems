# given a string, return the same string with any
# number represented as a word, converted to it's
# corresponding digit.

NUMBERS_MAP = {
  'zero' => 0,
  'one' => 1,
  'two' => 2,
  'three' => 3,
  'four' => 4,
  'five' => 5,
  'six' => 6,
  'seven' => 7,
  'eight' => 8,
  'nine' => 9,
}
# iterate through NUMBERS
# sub string with matching number

def word_to_digit(str)
  NUMBERS_MAP.each_pair { |k, v| str = str.gsub(/#{k}/, v.to_s) }
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'