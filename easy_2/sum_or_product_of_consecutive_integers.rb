# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

puts 'Please enter an integer greater than 0:'
max = gets.chomp.to_i

puts "Enter 's' to compute the sum 'p' to compute the product."
operation = gets.chomp

result = if operation == 's'
  (1..max).sum
elsif operation == 'p'
  (1..max).reduce(&:*)
else
  'Unknown operation'
end

if result.class.equal?(String)
  puts result
else
  puts "The #{operation == 's' ? 'sum' : 'product'} of the integers " \
"between 1 and #{max} is #{result}."
end