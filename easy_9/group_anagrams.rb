# Given a list of words, print out which words are anagrams

def find_anagrams(words)
  words.map { |word| words.select { |w| w.chars.sort == word.chars.sort } }
       .uniq
       .each { |a| p a}
end

words = %w[demo none tied evil dome mode live fowl veil wolf diet vile edit tide flow neon]

find_anagrams(words)

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end