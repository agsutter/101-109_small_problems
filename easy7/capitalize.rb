# Write a method that takes a single String argument and returns a new
# string that contains the original value of the argument with the first
# character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

def word_cap(string)
  string.split(' ').map!(&:capitalize).join(' ')
end

def word_cap2(string)
  string.split(' ').map!{ |word| "#{word[0].upcase}#{word[1..-1]}" }.join(' ')
end

puts word_cap('four score and seven') #== 'Four Score And Seven'
puts word_cap2('four score and seven') #== 'Four Score And Seven'
puts word_cap('the javaScript language') #== 'The Javascript Language'
puts word_cap2('the javaScript language') #== 'The Javascript Language'
puts word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
puts word_cap2('this is a "quoted" word') #== 'This Is A "quoted" Word'
