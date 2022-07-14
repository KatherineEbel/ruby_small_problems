# Build a program that displays when the user will retire and how many years she
# has to work till retirement.

# Input: age
# Output years left to work
# subtract retirement age from current age
# add difference to current year
# How to find out current year?
require 'date'

print 'What is your age? '
age = gets.chomp.to_i

print 'At what age would you like to retire? '
retirement_age = gets.chomp.to_i

years_left = retirement_age - age
current_year = Date.today.year
retirement_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years of work to go!"