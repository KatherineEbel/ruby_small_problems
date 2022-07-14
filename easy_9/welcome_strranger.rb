# Input 2 arguments an array and a hash.
# Array contains 2 or more elements that, when combined with
# adjoining spaces, will produce a person's name.
# The hash will contain two keys, :title and :occupation
# return a greeting that uses the person's full name and mentions the
# person's title and occupation

def greetings(name_arr, details)
  full_name = name_arr.join(' ')
  format(
    "Hello #{full_name}! Nice to have a %<title>s %<occupation>s",
    details
  )
end

p greetings(%w[John Q Doe], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.


