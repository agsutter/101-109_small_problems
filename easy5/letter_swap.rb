# Given a string of words separated by spaces, write a method that takes
# this string of words and returns a string in which the first and last
# letters of every word is swapped.

# You may assume that every word contains at least one letter, and that
# the string will always contain at least one word. You may also assume
# that each string contains nothing but words and spaces

def swap(string)
  array = string.scan(/\w+/)
  array.map! { |word| word.scan(/(.)/) }
  array.map! do |word|
    letter_last = word.pop
    word.rotate.unshift(letter_last).join
  end
  array.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
