# Given a string, return true if all parentheses are balances
# else return false.

## '()'
# def balanced?(str)
#   open_parens = str.delete('^()').chars.each_with_object([]) do |paren, stack|
#     stack << paren if paren == '('
#     last_paren = paren == ')' ? stack.pop : false
#     next if last_paren == false
#     return false if  last_paren.nil? || last_paren + paren != '()'
#   end
#   open_parens.empty? ? true : false
# end

# launch school based solution
def balanced?(str)
  str.delete('^()').chars.reduce(0) do |parens, paren|
    parens += 1 if paren == '('
    parens -= 1 if paren == ')'
    return false if parens < 0
    parens
  end.zero?

end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
