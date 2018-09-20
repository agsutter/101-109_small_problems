# Write a method which takes a grocery list (array) of fruits with
# quantities and converts it into an array of the correct number of
# each fruit.

def buy_fruit(array)
  array.map { |sub_array| [sub_array[0]] * sub_array[1] }.flatten
end

p buy_fruit([['apples', 3], ['orange', 1], ['bananas', 2]]) ==
  %w(apples apples apples orange bananas bananas)
