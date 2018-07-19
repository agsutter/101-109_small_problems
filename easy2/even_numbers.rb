# Print the even numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.

number = 1

loop do
  number += 1
  puts number if number.even?
  break if number >= 99
end
