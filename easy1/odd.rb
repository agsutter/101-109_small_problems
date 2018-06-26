# Write a method that takes one integer argument, which may be positive,
# negative, or zero.This method return true if the number's absolute value
# is odd. You may assume that the argument is a valid integer value.

  # Examples:

  # puts is_odd?(2)     => false
  # puts is_odd?(5)     => true
  # puts is_odd?(-17)   => true
  # puts is_odd?(-8)    => false
  # puts is_odd?(0)     => false
  # puts is_odd?(7)     => true

# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

def odd?(num)
  if num.is_a?(Float)
    puts "#{num} is a float and has been converted to #{num.to_i}."
    num = num.to_i
  end

  return 'Please use an integer' if num.to_s.to_i != num

  if num % 2 == 1
    true
  else
    false
  end
end

puts odd?(0)
puts odd?(-2)
puts odd?(-5.4)
puts odd?(3)
puts odd?(8)
puts odd?('hello')
puts odd?(false)
puts odd?(true)
