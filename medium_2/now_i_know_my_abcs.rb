# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# Write a method that
# returns true if the word passed in as an argument
# can be spelled from this set of blocks, false otherwise.
# Input string
# Output bool
# word can only use one letter from each block

BLOCKS = [%w[B O], %w[X K], %w[D Q], %w[C P], %w[N A],
          %w[G T], %w[R E], %w[F S], %w[J W], %w[H U],
          %w[V I], %w[L Y], %w[Z M]].freeze

def block_word?(word)
  word.upcase.chars.each_with_object([]) do |char, blocks|
    block = BLOCKS.find { |b| b.include? char }
    return false if blocks.include? block

    blocks << block
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
