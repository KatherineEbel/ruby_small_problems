name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this code print out? Think about it for a moment before continuing.
# Alice
# Bob

# What does this code print out?
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# BOB
# BOB
# String#upcase! mutates the string that both name and save_name are pointing
# to