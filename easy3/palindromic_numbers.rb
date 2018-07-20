# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

def remove_nonintegers(string)
  string = string.chars.select { |x| x[/\d/] }
  string.join
end

def palindromic?(input)
  input == input.reverse
end

def palindromic_number?(integer)
  palindromic?(integer.to_s)
end

puts palindromic_number?(34_543) == true
puts palindromic_number?(123_210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
puts palindromic_number?(remove_nonintegers('hello12321')) == true
