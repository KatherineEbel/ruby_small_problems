# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the tip
# and the total amount of the bill.

# Input: Bill amount
# output: tip total, total amount including tip
# percentage = percentage input / 100
# ask for bill amount
# ask for tip percentage
# add tip amount to bill amount
# display tip total
# display bill total
#

print 'What is the bill? '
bill = gets.chomp.to_f

print 'What is the tip percentage? '
percentage = gets.chomp.to_f

tip_total = (percentage / 100) * bill
bill_total = bill + tip_total

puts "The tip is $#{tip_total.round(2)}"
puts "The total is $#{bill_total.round(2)}"
