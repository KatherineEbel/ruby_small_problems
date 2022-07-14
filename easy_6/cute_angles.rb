# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a
# String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes,
# while a minute has 60 seconds.

# INPUT: float 0-360
# RETURN: string angle in degrees
# A degree has 60 mins minute has 60 sec
# Conversion
# 1. keep whole units same
# 2. multiply decimal portion by 60
# 3. whole number becomes minutes
# 4. remaining decimal multiply by 60 (from step 2)
# 5. result is seconds

DEGREE = "\xC2\xB0".freeze

def dms(angle)
  deg = angle.to_i
  min_float = (angle - deg) * 60
  min = min_float.to_i
  sec = (min_float - min) * 60
  format(%(%d#{DEGREE}%02d'%02d"), deg, min, sec)
end

p dms(30) # == %(30°00'00")
p dms(76.73) # == %(76°43'48")
p dms(254.6) # == %(254°36'00")
p dms(93.034773) # == %(93°02'05")
p dms(0) # == %(0°00'00")
p dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")
