# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all 
# numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

def prompt(sentence)
  puts ">> #{sentence}"
end

def validate(integer)
  integer.to_i.abs.to_s == integer && integer.to_i != 0
end

def function_valid(input)
  input == 's' || input == 'p'
end

def sum_or_product(input)
  return 'sum' if input == 's'
  return 'product' if input == 'p'
end

def product(integer)
  integer = integer.to_i
  return 1 if integer <= 1
  integer * product(integer-1)
end

def sum(integer)
  integer = integer.to_i
  return 1 if integer <= 1
  integer + sum(integer-1)
end

def do_operation(input, integer)
  return sum(integer) if sum_or_product(input) == 'sum'
  return product(integer) if sum_or_product(input) == 'product'
end

def output(input, integer)
  prompt("The #{sum_or_product(input)} of the integers " \
         "between 1 and #{integer} is #{do_operation(input, integer)}.")
end

prompt('Please enter an integer greater than zero.')
number = ''
loop do
  number = gets.chomp
  break if validate(number)
  prompt('Please enter a positive integer greater than zero')
end

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
function = ''
loop do
  function = gets.downcase.chomp
  break if function_valid(function)
  prompt("Please enter either 's' to compute the sum" \
         " or 'p' to compute the product.")
end

output(function, number)
