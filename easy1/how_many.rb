# Write a method that counts the number of occurrences of each element
# in a given array. Once counted, print each element alongside the number
# of occurrences.

vehicles = %w(car car truck car SUV truck motorcycle motorcycle car truck)
fruits = %w(banana apple orange banana grapes apple apple orange apple grapes)

def count_occurrences(given_array)
  array = []
  array = given_array.uniq
  position = 0
  while position < array.length
    output = given_array.count { |x| array[position] == x }
    puts "#{array[position]} => #{output}"
    position += 1
  end
end

count_occurrences(vehicles)
count_occurrences(fruits)
