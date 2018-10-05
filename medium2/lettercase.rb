# In the easy exercises, we worked on a problem where we had to count the
# number of uppercase and lowercase characters, as well as characters that
# were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the percentage of characters in the string that
# are lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

def calculate_percentage(dividend, divisor)
  (dividend.size.to_f / divisor.to_f) * 100
end

def letter_percentages(string)
  letters = string.split(//)
  total = letters.size
  divided = [[], [], []]
  letters.each do |char|
    case char
    when /[a-z]/ then divided[0].push(char)
    when /[A-Z]/ then divided[1].push(char)
    else divided[2].push(char)
    end
  end
  { lowercase: calculate_percentage(divided[0], total),
    uppercase: calculate_percentage(divided[1], total),
    neither: calculate_percentage(divided[2], total) }
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')
