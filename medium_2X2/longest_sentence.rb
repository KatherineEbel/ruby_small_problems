
def longest_sentence(text)
  text.split(/[!.?]/).map { |s| s.split.size }.max
end

text = File.open('example.txt', 'r').read
p longest_sentence(text) # == 86

