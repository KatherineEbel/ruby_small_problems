# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.
#Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.
#70m / 1m * 10.7639f /1m
#
# Input: length, width

SQ_FT_PER_METER = 10.7639

def square_meters(length, width)
  length * width
end

puts "Enter the length of the room in meters:"
length_in_meters = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width_in_meters = gets.chomp.to_f

square_meters = square_meters(length_in_meters, width_in_meters).round(2)
square_feet = (square_meters * SQ_FT_PER_METER).round(2)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)"

