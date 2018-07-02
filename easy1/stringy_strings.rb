# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# EXAMPLES:
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

def valid_integer?(number)
  (number.to_i.abs.to_s == number) && (number.to_i != 0)
end

def stringy(number)
  string = ''
  until number.zero?
    if string.end_with?('1')
      string << '0'
    elsif string.end_with?('0') || string.empty?
      string << '1'
    end
  number -= 1
  end
  puts string
end

number = ''
loop do
  puts 'Please provide a number:'
  number = gets.chomp
  break if valid_integer?(number)
  puts 'That is not a valid input.'
end

number = number.to_i
stringy(number)
