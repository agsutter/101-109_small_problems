# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Note: your results may differ slightly depending on how you round values,
# but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the
# minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0".freeze
TOTAL_TIME = 3600
MINUTES = 60

def dms(given_angle)
  time = given_angle % 1
  degrees = given_angle - time
  total_seconds = time * TOTAL_TIME
  minute = total_seconds.round / MINUTES
  second = total_seconds.round % MINUTES
  "#{degrees.round}#{DEGREE}#{format('%02d', minute)}" \
  "'#{format('%02d', second)}\""
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(360)
puts dms(380)
puts dms(420)
puts dms(-30)
