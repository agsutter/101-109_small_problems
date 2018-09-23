# Write a method that rotates an array by moving the first element to the
# end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(array)
  array_dup = array.dup
  first_element = array_dup.shift
  [[array_dup], [first_element]].flatten
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(%w(a b c)) == %w(b c a)
p rotate_array(%w(a)) == %w(a)

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Write a method that rotates a string instead of an array. Do the same
# thing for integers. You may use rotate_array from inside your new method.

def rotate_string(string)
  rotate_array(string.split(//)).join
end

string = 'Lions and tigers and bears'
p rotate_string('Lions and tigers and bears') == 'ions and tigers and bearsL'
p string == 'Lions and tigers and bears'
