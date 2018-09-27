# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

### Further Exploration

# There are many ways to solve this problem and different varieties of it.
# Suppose, for instance, that we also want to replace uppercase and capitalized
# words.

# Can you change your solution this so the spaces between consecutive numbers
# are removed? Suppose the string already contains two or more space separated
# numbers (not words); can you leave those spaces alone, while removing any
# spaces between numbers that you create?

# What about dealing with phone numbers? Is there any easy way to format the
# result to account for phone numbers? For our purposes, assume that any 10
# digit number is a phone number, and that the proper format should be
# "(123) 456-7890".

DIGITS = %w(zero one two three four five six seven eight nine).freeze

# => Checks if a digit is a string or integer, or if a number can be an integer
def integer?(object)
  (object.to_s.to_i == object) || (object.to_i.to_s == object)
end

# => Iterates through sentence, replacing numbers as words to numbers as digits
def word_to_digit(sentence)
  sentence.split(/\b/).map { |i| DIGITS.include?(i) ? DIGITS.index(i) : i }
end

# => Formats numbers into phone number format
def format_phone_number(num)
  num = num.delete(' ')
  return "#{num[0..2]}-#{num[3..6]}" if num.size == 7
  return "(#{num[0..2]}) #{num[3..5]}-#{num[6..9]}" if num.size == 10
  num
end

# => Format sentence with phone number
def formatted_sentence(sentence)
  split_ary = word_to_digit(sentence)
  pos = []
  split_ary.each { |i| pos << split_ary.index(i) if integer?(i) }
  split_ary[pos[0]..pos[-1]] = format_phone_number(split_ary[pos[0]..pos[-1]].join)
  split_ary.join
end

p formatted_sentence('Please call me at five five five one two five four. Thanks.')
p formatted_sentence('There are three five six people here.')
p formatted_sentence('The number is two one six five five five one two six four.')
