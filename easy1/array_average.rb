# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array. The array will
# never be empty and the numbers will always be positive integers.

def valid_input?(number)
  number.to_i.abs.to_s == number || number.to_f.abs.to_s == number
end

def array_average(array)
  array.map!(&:to_f)
  array.sum / array.length
end

array_of_numbers = []
loop do
  puts 'Please provide a integer.'
  puts "Push 'enter' on a blank line to submit all numbers."

  loop do
    number = gets.chomp
    if valid_input?(number)
      array_of_numbers << number
    elsif number == ''
      break
    else
      puts 'That is not an accepted input.'
      puts "Please try a number like '1' or '4.8'"
    end
  end

  if array_of_numbers.empty?
    puts 'You did not enter anything.'
    puts 'Please enter some integers.'
  elsif array_of_numbers.empty? == false
    break
  end
end

puts array_average(array_of_numbers)
