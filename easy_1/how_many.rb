# Write a method that counts the number of occurrences of each element in a
# given array.

vehicles = %w[car car truck car SUV truck motorcycle motorcycle car truck]

# def count_occurrences(list)
#   list.tally.each_pair { |k, v| puts "#{k} => #{v}"}
# end

def count_occurrences(list)
  list
    .uniq
    .reduce({}) do |occurrences, word|
    occurrences[word] = list.count(word)
    occurrences
  end
    .each_pair { |k, v| puts "#{k} => #{v}"}
end

count_occurrences(vehicles)