# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an
# argument to the method. You may assume that the argument will always be an odd integer.

# __*
# _***
# *****
# _***
# __*

def display_upper_half(rows)
  num_stars = 1
  (rows / 2).downto(1) do
    puts ('*' * num_stars).center(rows)
    num_stars += 2
  end
end

def display_lower_half(rows)
  num_stars = rows
  0.upto(rows / 2) do
    puts ('*' * num_stars).center(rows)
    num_stars -= 2
  end
end

def diamond(rows)
  display_upper_half(rows)
  display_lower_half(rows)
end

diamond(9)
