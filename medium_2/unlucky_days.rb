# Write a method that returns the number of Friday the 13ths
# in the year given by an argument. You may assume that the year
# is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar)
# and that it will remain in use for the foreseeable future.
# create a new date from passed in date
# iterate through month and see if there is a friday on 13 day

require 'date'

def friday_13th(year)
  Date.new(year).step(Date.new(year, -1, -1))
      .select { |d| d.friday? && d.day == 13 }
      .size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
