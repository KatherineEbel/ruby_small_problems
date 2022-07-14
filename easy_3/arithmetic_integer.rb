# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers: addition,
# subtraction, product, quotient, remainder, and power. Do not worry about
# validating the input.
# Input 2 positive integers
# Output: + - * / % and ** operations
# print out each expression in answer
# get numbers from input
# iterate through each operator and perform calculation
# Store ? hash ?

OPERATORS = %w[+ - * / % **]

def perform_calculation(operator, op_1, op_2)
  case operator
    when '+' then op_1 + op_2
    when '-' then op_1 - op_2
    when '*' then op_1 * op_2
    when '/' then op_1 / op_2
    when '%' then op_1 % op_2
    else op_1 ** op_2
  end
end

puts '==> Enter the first number:'
op_1 = gets.chomp.to_i
puts '==> Enter the second number:'
op_2 = gets.chomp.to_i

OPERATORS.each do |op, calculations|
  result = perform_calculation(op, op_1, op_2)
  puts "==> #{op_1} #{op} #{op_2} = #{result}"
end