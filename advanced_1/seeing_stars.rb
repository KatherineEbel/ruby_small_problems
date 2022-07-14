# Given an integer n, create a 8 pointed star in
# n x n grid
# n is odd >= 7
# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
# star(9)
#
# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

NUM_STARS = 3

def display_row(len:, spaces: 0, num_stars: NUM_STARS)
  puts  (['*'] * num_stars).join(' ' * spaces).center(len)
end

def star(num)
  half = (num/2) - 1
  (half).downto(0) { |spaces| display_row(len: num, spaces: spaces)}
  display_row(len: num, num_stars: num)
  (0).upto(half) { |spaces| display_row(len: num, spaces: spaces)}
end

star(7)
puts ' '
star(9)