#   Write a method that takes a string as an argument, and returns true
#  if all parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# Input string
# Output: bool
# Iterate through string
# if right parentheses seen before left return false
# if left parentheses seen and another left parentheses
# seen before the next right, return false

PARENS = %w[( )].freeze

def balanced?(string)
  unbalanced_parens = string.chars.select { |char| PARENS.include? char }
                            .each_with_object([]) do |paren, stack|
    stack << paren if paren == PARENS.first
    if paren == PARENS.last
      return false if stack.pop != PARENS.first
    end
  end
  unbalanced_parens.none? { |paren| paren == PARENS.first }
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') # == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
