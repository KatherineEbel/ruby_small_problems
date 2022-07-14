WORDS = {
  adjective: %w[quick lazy sleepy ugly],
  noun: %w[fox dog head leg],
  verb: %w[jumps lifts bites licks],
  adverb: %w[easily lazily noisily excitedly],
}.freeze
text = File.open('madlibs.txt', 'r')

text.each_line do |l|
  line_hsh = l.chomp.split.each_with_object({}) do |word, hsh|
    if word.start_with? '%<'
      key = word.gsub(/[\W]/, '').delete_suffix('s').to_sym
      hsh[key] = WORDS[key].sample
    end
  end
  print format(l, line_hsh)
end
