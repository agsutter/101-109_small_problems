# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# EXAMPLES:
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

def valid_integer?(number)
  number.to_i.abs.to_s == number
end

def stringy(number)
  number_array = []
  until number.zero?
    if number_array.last == '1'
      number_array << '0'
    elsif number_array.last == '0' || number_array == []
      number_array << '1'
    end
    number -= 1
  end
  puts number_array.join
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
