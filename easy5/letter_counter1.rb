# Write a method that takes a string with one or more space separated
# words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(string)
  array = string.scan(/\S+/)
  keys = array.map(&:size).uniq.flatten
  values = Array.new(keys.length, 0)
  position = 0
  loop do
    array.each { |word| values[position] += 1 if word.length == keys[position] }
    position += 1
    break if position >= values.length
  end
  keys.zip(values).to_h
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')
