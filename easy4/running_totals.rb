# Write a method that takes an Array of numbers, and returns an Array
# with the same number of elements, and each element has the running
# total from the original Array.

# METHOD 1
def running_total1(array)
  array_new = []
  loop do
    break if array.empty?
    array_new << array[0]
    array[1] = array[0] + array[1] if array.size >= 2
    array.shift
  end
  array_new
end

# METHOD 2
def running_total2(array)
  ary = [0]
  array.each_with_object(ary) { |num| ary << ary.last + num }.shift
  ary
end

puts running_total1([2, 5, 13]) == [2, 7, 20]
puts running_total1([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total1([3]) == [3]
puts running_total1([]) == []

puts running_total2([2, 5, 13]) == [2, 7, 20]
puts running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total2([3]) == [3]
puts running_total2([]) == []
