# Given an integer argument, return an Array of all integers,
# in sequence, between 1 and the argument.
# Input will always be integer > 0.

def sequence(max)
  (1..max).entries
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
