# Write a method that takes an Array, and returns a new Array with the
# elements of the original list in reverse order. Do not modify the
# original list.

# You may not use Array#reverse or Array#reverse!, nor may you use
# the method you wrote in the previous exercise.

def reverse_array(array)
  new_array = []
  position = 0
  last = array.length - 1
  until new_array.length == array.length
    new_array << array[last - position]
    position += 1
  end
  new_array
end

p reverse_array([1, 2, 3, 4]) == [4, 3, 2, 1]    # => true
p reverse_array(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse_array(%w(abc)) == %w(abc)              # => true
p reverse_array([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse_array(list)        # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
