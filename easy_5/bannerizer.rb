# frozen_string_literal: true

def print_in_box(text)
  puts "+-#{'-' * text.size}-+"
  puts "| #{' ' * text.size} |"
  puts "| #{text} |"
  puts "| #{' ' * text.size} |"
  puts "+-#{'-' * text.size}-+"
end

print_in_box('')
print_in_box('To boldly go where no one has gone before')
# +--+
# |  |
# |  |
# |  |
# +--+
