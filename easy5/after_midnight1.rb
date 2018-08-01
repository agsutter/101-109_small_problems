# The time of day can be represented as the number of minutes before
# or after midnight. If the number of minutes is positive, the time
# is after midnight. If the number of minutes is negative, the time
# is before midnight.

# Write a method that takes a time using this minute-based format and
# returns the time of day in 24 hour format (hh:mm). Your method should
# work with any integer input.

# You may not use ruby's Date and Time classes.

# Disregard Daylight Savings and Standard Time and other complications.

DAYS = %w(Saturday Sunday Monday Tuesday Wednesday Thursday Friday).freeze
MINUTES_IN_DAY = 1440

def day_of_week(time)
  day = 1
  time_original = time
  day -= 1 if time != time.abs
  loop do
    break if time.abs < MINUTES_IN_DAY
    day += 1
    time = time.abs - MINUTES_IN_DAY
  end
  return day *= -1 if time_original.to_s.include?('-')
  day
end

def calculate_time(time)
  return time if time >= 0
  time += MINUTES_IN_DAY
  calculate_time(time)
end

def calculate_hour(time)
  hour = calculate_time(time) / 60
  loop do
    return hour if hour < 24 && hour > 10
    return "0#{hour}" if hour < 10
    hour -= 24
  end
end

def calculate_minute(time)
  minute = calculate_time(time) % 60
  return "0#{minute}" if minute < 10
  minute
end

def time_of_day(time)
  "#{DAYS[day_of_week(time)]} at #{calculate_hour(time)}" \
    ":#{calculate_minute(time)}"
end

p time_of_day(0) == "Sunday at 00:00"
p time_of_day(-3) == "Saturday at 23:57"
p time_of_day(35) == "Sunday at 00:35"
p time_of_day(-1437) == "Saturday at 00:03"
p time_of_day(3000) == "Tuesday at 02:00"
p time_of_day(800) == "Sunday at 13:20"
p time_of_day(-4231) == "Thursday at 01:29"
