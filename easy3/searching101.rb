# Write a program that solicits 6 numbers from the user, then prints a
# message that describes whether or not the 6th number appears amongst
# the first 5 numbers.

def user_prompt(ordinal_number)
  puts "=> Enter the #{ordinal_number} number:"
end

def search_array(given_array)
  array = given_array[0..4]
  number = given_array.last
  return "The number #{number} appears in #{array}." if array.include?(number)
  "The number #{number} does not appears in #{array}."
end

ordinal = %w(1st 2nd 3rd 4th 5th last)
numbers = []

loop do
  user_prompt(ordinal[numbers.size])
  numbers << gets.chomp
  break if numbers.size >= ordinal.length
end

puts search_array(numbers)
