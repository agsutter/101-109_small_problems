# Write a method that returns true if the string passed as an argument
# is a palindrome, false otherwise. A palindrome reads the same forward
# and backward. For this exercise, case matters as does punctuation and spaces.

# FURTHER EXPLORATION

# Write a method that determines whether an array is palindromic; that is,
# the element values appear in the same sequence both forwards and backwards
# in the array.

# Now write a method that determines whether an array or a string
# is palindromic; that is, write a method that can take either an array or a
# string argument, and determines whether that argument is a palindrome.
# You may not use an if, unless, or case statement or modifier.

def palindromic?(input)
  input == input.reverse
end

puts palindromic?('madam') == true
puts palindromic?('Madam') == false
puts palindromic?("madam i'm adam") == false
puts palindromic?('356653') == true
puts palindromic?(%w(1 2 3 4 3 2 1)) == true
puts palindromic?([1, 2, 3, 4, 3, 2, 1]) == true
puts palindromic?([[1, 2, 3], [4, 6, 4], [3, 2, 1]]) == false
puts palindromic?([[1, 2, 3], [4, 6, 4], [1, 2, 3]]) == true
