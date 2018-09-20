# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers between the two
# numbers, except if a number is divisible by 3, print "Fizz", if a number
# is divisible by 5, print "Buzz", and finally if a number is divisible by
# 3 and 5, print "FizzBuzz".

def fizzbuzz_divisible(number)
  case
  when (number % 3).zero? && (number % 5 != 0)
    'Fizz'
  when (number % 5).zero? && (number % 3 != 0)
    'Buzz'
  when (number % 5).zero? && (number % 3).zero?
    'FizzBuzz'
  else
    number
  end
end

def fizzbuzz(start_num, end_num)
  array = []
  start_num.upto(end_num) do |number|
    array << fizzbuzz_divisible(number)
  end
  array.join(', ')
end

p fizzbuzz(1, 15)
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
