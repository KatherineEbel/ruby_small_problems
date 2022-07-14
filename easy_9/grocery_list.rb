# Given a array of fruits with quanties convert, it to an array with
# the correct number of fruit

def buy_fruit(list)
  list.flat_map { |fruit, quantity| [fruit] * quantity }
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

