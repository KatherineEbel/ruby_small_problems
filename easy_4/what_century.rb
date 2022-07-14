# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

def ordinal(num)
  return 'th' if (num % 100).between?(11, 13)
  
  case num % 10
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
  end
end

def century(year)
  year = (year - 1) / 100 + 1
  "#{year}#{ordinal(year)}"
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'