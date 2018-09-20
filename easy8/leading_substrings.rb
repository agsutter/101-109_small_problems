# Write a method that returns a list of all substrings of a string that start
# at the beginning of the original string. The return value should be arranged
# in order from shortest to longest substring.

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

p substrings_at_start('abc') == %w(a ab abc)
p substrings_at_start('a') == %w(a)
p substrings_at_start('xyzzy') == %w(x xy xyz xyzz xyzzy)
