# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

SUFFIX = { 'th' => [0, 4, 5, 6, 7, 8, 9, 11, 12, 13],
           'st' => 1,
           'nd' => 2,
           'rd' => 3 }

def get_century(year)
  century_array = year.digits
  century = century_array.drop(2)
  century = century.join.reverse.to_i
  return century += 1 if century_array[0..1] != [0, 0]
  century
end

def get_suffix(year)
  check = get_century(year)
  check = check.digits[0..1].join.reverse.to_i
  suffix = SUFFIX.select do |k, v|
    if check <= 13
      (SUFFIX[k].is_a?(Array) && SUFFIX[k].include?(check)) || v == check
    else
      (SUFFIX[k].is_a?(Array) && SUFFIX[k].include?(check.digits[0])) ||
        v == check.digits[0]
    end
  end
  suffix.keys.join
end

def century(year)
  "#{get_century(year)}#{get_suffix(year)}"
end

puts century(5) == '1st'
puts century(256) == '3rd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(1965) == '20th'
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(10_103) == '102nd'
puts century(11_201) == '113th'
