# Write a method that takes one argument, a positive integer, and returns
# the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# For a challenge, try writing this without any basic looping constructs
# (while, until, loop, and each).

def valid_input?(number)
  (number.to_i.abs.to_s == number) && (number.to_i != 0)
end

def sum(integer)
  integer.to_i.digits.sum
end

integer = ''
loop do
  puts 'Give me a positive integer:'
  integer = gets.chomp

  break if valid_input?(integer)
  puts 'That is not an acceptable input.'
end

puts sum(integer)
