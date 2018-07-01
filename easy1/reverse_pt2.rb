# Write a method that takes one argument, a string containing one
# or more words, and returns the given string with all five or more
# letter words reversed. Each string will consist of only letters
# and spaces. Spaces should be included only when more than one word
# is present.

def reverse_some_words(sentence)
  array = sentence.split
  array.each do |word|
    if word.length >= 5
      word.split(//)
      word.reverse!
    end
  end
  array.join(' ')
end

puts 'Give me a string of words:'
string = gets.chomp

puts reverse_some_words(string)
