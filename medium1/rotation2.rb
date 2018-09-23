# Write a method that can rotate the last n digits of a number. Note that
# rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if
# you want. (Recommended!)

# You may assume that n is always a positive integer.

def rotate_rightmost_digits(number, n)
  array = number.to_s.split(//)
  removed_element = array[-n]
  array.delete(removed_element)
  [[array], [removed_element]].flatten.join.to_i
end

p rotate_rightmost_digits(735_291, 1) == 735_291
p rotate_rightmost_digits(735_291, 2) == 735_219
p rotate_rightmost_digits(735_291, 3) == 735_912
p rotate_rightmost_digits(735_291, 4) == 732_915
p rotate_rightmost_digits(735_291, 5) == 752_913
p rotate_rightmost_digits(735_291, 6) == 352_917
