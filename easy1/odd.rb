# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# Examples

  # puts is_odd?(2)    # => false
  # puts is_odd?(5)    # => true
  # puts is_odd?(-17)  # => true
  # puts is_odd?(-8)   # => false
  # puts is_odd?(0)    # => false
  # puts is_odd?(7)    # => true

# Keep in mind that you're not allowed to use #odd? or #even? in your solution.
def odd?(num)
  if num.is_a?(Float)
    puts "#{num} is a float. We will be converting your number to #{num.to_i} from this point forward."
    num = num.to_i
  end

  if num.to_s.to_i == num
    num
  else
    return "Please use an integer."
  end

  if num % 2 == 1
    true
  else
    false
  end
end

puts odd?(0)          # => false
puts odd?(-2)         # => false
puts odd?(-5.4)       # => Returns message that a float was given, converts to integer, and evaluates true on next line
puts odd?(3)          # => true
puts odd?(8)          # => false
puts odd?("hello")    # => returns "Please use an integer"
puts odd?(false)      # => returns "Please use an integer"
puts odd?(true)       # => returns "Please use an integer"