# Mad libs are a simple game where you create a story template with blanks for words.
# You, or another player, then construct a list of words and place them into the story,
# creating an often silly or funny story as a result.
# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

story = { noun: nil, verb: nil, adjective: nil, adverb: nil }

story.keys.each do |part|
  print "Enter a #{part}: "
  story[part] = gets.chomp
end

puts format('Do you %<verb>s your %<adjective>s %<noun>s %<adverb>s?', story)
