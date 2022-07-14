# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5 numbers.

ORDINALS = %w[1st 2nd 3rd 4th 5th last]

numbers = ORDINALS.each_with_object([]) do |ord, nums|
  puts "==> Enter the #{ord} number:"
  nums << gets.chomp.to_i
end

last = numbers.pop
appears = numbers.count(last) > 0 ? 'appears' : 'does not appear'

puts "The number #{last} #{appears} in #{numbers}."