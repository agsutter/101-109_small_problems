# Write a method that computes the difference between the square of the
# sum of the first n positive integers and the sum of the squares of the
# first n positive integers.

# (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)

def sum_square_difference(integer)
  (1..integer).reduce(:+)**2 - 1.upto(integer).map { |i| i**2 }.reduce(:+)
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1).zero?
p sum_square_difference(100) == 25_164_150
