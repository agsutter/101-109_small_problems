# Write a method that takes a string, and returns a new string in which every
# character is doubled.

def repeater(string)
  array = string.split(//)
  array.map { |letter| letter * 2 }.join
end

p repeater('Hello') == 'HHeelllloo'
p repeater('Good job!') == 'GGoooodd  jjoobb!!'
p repeater('') == ''
