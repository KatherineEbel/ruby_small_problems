# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is
# before midnight.
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after
# midnight, respectively. Both methods should return a value in the range 0..1439.

# MIN_PER_DAY = 24 * 60 (1440)
MIN_PER_DAY = 24 * 60
def after_midnight(time)
  hours, mins = time.split(':').map(&:to_i)
  (hours * 60 + mins) % 1440
end

def before_midnight(time)
  hours, mins = time.split(':').map(&:to_i)
  min_before = MIN_PER_DAY - ((hours.to_i * 60) + mins.to_i)
  min_before == MIN_PER_DAY ? 0 : min_before
end

p after_midnight('00:00').zero?
p before_midnight('00:00').zero?
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00')  == 0
p before_midnight('24:00') == 0
