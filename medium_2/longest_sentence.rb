def longest_sentence(text)
  text.split(/[.!?]/).reduce(0) do |longest, sentence|
    size = sentence.split.size
    size > longest ? size : longest
  end
end

file = File.open('example_2.txt')
file_data = file.read

p longest_sentence(file_data)
