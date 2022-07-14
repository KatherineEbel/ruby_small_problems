# Write a method that takes a positive integer, n, as an argument, and displays a right triangle
# whose sides each have n stars.
# The hypotenuse of the triangle (the diagonal side in the images below)
# should have one end at the lower-left of the triangle,
# and the other end at the upper-right.
# Input positive integer n
# start at 1 iterate up to n
# each row print n -
def triangle(num)
  num_stars = 0
  num.downto(1) do |n|
    puts "#{' ' * (n - 1)}#{'*' * num_stars += 1}"
  end
end

triangle(9)
