# blocks have 2 letters per block
# you can only spell words that only use one letter from
# a given block because each block can only be used once

def block_word?(str)
  blocks = %w(bo xk dq cp na gt re fs jw hu vi ly zm)
  str.downcase.chars.each do |char|
    block = blocks.find { |b| b.include? char }
    blocks.delete(block)
    return false if block.nil?
  end
  true
end

# launch school solution
# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze
#
# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true