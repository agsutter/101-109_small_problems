# Write a method that takes an Array of numbers and then returns the sum of
# the sums of each leading subsequence for that Array. You may assume that
# the Array always contains at least one number.

def sum_of_sums(array)
  array_to_add = []
  array.each_index do |indx|
    (array.size - indx).times { array_to_add << array[indx] }
  end
  array_to_add.inject(:+)
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
