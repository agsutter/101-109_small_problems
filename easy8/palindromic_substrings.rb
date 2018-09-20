# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be
# arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous
# exercise.

# For the purposes of this exercise, you should consider all characters and
# pay attention to case; that is, "AbcbA" is a palindrome, but neither
# "Abcba" nor "Abc-bA" are. In addition, assume that single characters are
# not palindromes.

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

def palindrome?(string)
  (string == string.reverse) && (string.size >= 2)
end

def palindromes(string)
  palindrome_array = []
  substrings(string).each do |item|
    palindrome_array << item if palindrome?(item)
  end
  palindrome_array
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')
