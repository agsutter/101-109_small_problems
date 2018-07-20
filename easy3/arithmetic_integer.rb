# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power.
# Do not worry about validating the input.

def formula(num1, num2, operation)
  puts "#{num1} #{operation} #{num2} = #{num1.send(operation, num2)}"
end

def prompt(ordinal)
  puts "=> Enter the #{ordinal} number:"
end

operators = %w(+ - * / % **)

prompt('first')
number1 = gets.chomp.to_i

prompt('second')
number2 = gets.chomp.to_i

operators.each { |symbol| formula(number1, number2, symbol) }
