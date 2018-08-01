# As seen in the previous exercise, the time of day can be represented
# as the number of minutes before or after midnight. If the number of
# minutes is positive, the time is after midnight. If the number of
# minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and
# return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

MINUTES_IN_DAY = 1440
HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60

def extract_string(string)
  string.delete(':').scan(/../).map(&:to_i)
end

def after_midnight(string)
  hours, minutes = extract_string(string)
  hours %= HOURS_IN_DAY if hours >= HOURS_IN_DAY
  (hours * MINUTES_IN_HOUR) + minutes
end

def before_midnight(string)
  return 0 if after_midnight(string).zero?
  MINUTES_IN_DAY - after_midnight(string)
end

p after_midnight('00:00').zero?
p after_midnight('12:34') == 754
p after_midnight('24:00').zero?
p before_midnight('00:00').zero?
p before_midnight('12:34') == 686
p before_midnight('24:00').zero?
