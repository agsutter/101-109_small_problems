# Write a method that takes one argument, a string, and
# returns the same string with the words in reverse order.

def rev_array(sentence)
  array = sentence.split
  array.reverse!
  array.map { |x| print "#{x} " }
  puts
end

def rev_string(sentence)
  reverse = ''
  loop do
    string_length = sentence.split.size
    break if string_length.zero?
    current_string = sentence.split.last
    sentence.slice!(current_string)
    reverse = if reverse == ''
                current_string
              else
                "#{reverse} #{current_string}"
              end
  end
  reverse
end

rev_array('Hello there world')
puts rev_string('The quick brown fox jumped over the lazy dogs')
