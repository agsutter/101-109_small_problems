# If you take a number like 735_291, and rotate it to the left, you get
# 352_917. If you now keep the first digit fixed in place, and rotate
# the remaining digits, you get 329_175. Keep the first 2 digits fixed
# in place and rotate again to 321_759. Keep the first 3 digits fixed
# in place and rotate again to get 321_597. Finally, keep the first 4
# digits fixed in place and rotate the final 2 digits to get 321_579.
# The resulting number is called the maximum rotation of the original
# number.

# Write a method that takes an integer as argument, and returns
# the maximum rotation of that argument. You can (and probably should)
# use the rotate_rightmost_digits method from the previous exercise.

def rotate_rightmost_digits(number, n)
  array = number.to_s.split(//)
  removed_element = array[-n]
  array.slice!(-n)
  [array, removed_element].flatten.join.to_i
end

def max_rotation(number)
  n = number.to_s.size
  until n.zero?
    number = rotate_rightmost_digits(number, n)
    n -= 1
  end
  number
end

p max_rotation(735_291) == 321_579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
