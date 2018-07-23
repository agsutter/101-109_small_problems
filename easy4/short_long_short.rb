# Write a method that takes two strings as arguments, determines the longest
# of the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

def short_long_short(string1, string2)
  short = string1.length < string2.length ? string1 : string2
  long = string1.length >= string2.length ? string1 : string2
  "#{short}#{long}#{short}"
end

puts short_long_short('abc', 'defgh') == 'abcdefghabc'
puts short_long_short('abcde', 'fgh') == 'fghabcdefgh'
puts short_long_short('', 'xyz') == 'xyz'
puts short_long_short('8777', 'queeeen')
puts short_long_short('321', '444')
puts short_long_short(%w(abc def), %w(gh ij kl))    # => organizes by number of
                                                    # elements in array
puts short_long_short(%w(abc def), %w(ghi jkl))
puts short_long_short(%w(abc def), %w(ghij klmn))   # => elements in s2 are
                                                    # longer, but the number of
                                                    # elements the same
