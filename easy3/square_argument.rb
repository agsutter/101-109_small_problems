# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument (the square is
# the result of multiplying a number by itself).

#   Example:

#   square(5) == 25
#   square(-8) == 64

def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

puts square(5)
puts square(0)
puts square(-4)
puts square(0.25)
