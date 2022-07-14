# Write a program that will ask for user's name. The program will then greet
# the user. If the user writes "name!" then the computer yells back to the user.

print "What is your name? "
name = gets.chomp

should_yell = !name.delete_suffix!('!').nil?
greeting = "Hello #{name}."

if should_yell
  greeting = "#{greeting} Why are we screaming?".upcase
end

puts greeting
