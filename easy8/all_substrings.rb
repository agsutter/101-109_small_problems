# Write a method that returns a list of all substrings of a string. The
# returned list should be ordered by where in the string the substring
# begins. This means that all substrings that start at position 0 should
# come first, then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position, the substrings
# at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise.

def substrings_at_start(string)
  array_of_strings = []
  split_string = string.split('')
  substring = ''
  split_string.each_index do |position|
    substring += split_string[position]
    array_of_strings << substring
  end
  array_of_strings
end

def substrings(string)
  new_array = []
  mutated_string = string
  until mutated_string.empty?
    new_array << substrings_at_start(mutated_string)
    mutated_string = mutated_string.chomp[1..-1]
  end
  new_array.flatten
end

p substrings('abcde') ==
  %w(a ab abc abcd abcde
     b bc bcd bcde
     c cd cde
     d de
     e)
     