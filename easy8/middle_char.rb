# Write a method that takes a non-empty string argument, and returns
# the middle character or characters of the argument. If the argument
# has an odd length, you should return exactly one character. If the
# argument has an even length, you should return exactly two characters.

def center_of(string)
  middle = string.length/2
  return string[(middle - 1)..middle] if string.length.even?
  string[middle]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'