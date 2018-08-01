# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

def crunch(string)
  array = string.scan(/(.)/)
  position = 0
  until position >= array.length
    loop do
      array.delete_at(position + 1) if array[position] == array[position + 1]
      break if array[position] != array[position + 1]
    end
    position += 1
  end
  array.flatten.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
