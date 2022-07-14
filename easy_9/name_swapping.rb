# given a string representing first name, space, last name
# return a string that contains the last name, a comma, a space, and the first name
#
def swap_name(full_name)
  full_name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'