# Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

# Examples:

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

def digit_list(integer)
  array = integer.split('')
  if array.length <= 2
    return array.join(' and ')
  else
    return array.join(', ')
  end
end

def valid_number?(num)
  num.to_i.to_s == num
end

number = ''
loop do
  puts 'Give me an integer.'
  number = gets.chomp.to_s

  break if valid_number?(number)
  puts 'That number is not valid.'
end

puts "The digits in your number are #{digit_list(number)}."
