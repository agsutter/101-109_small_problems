# Write a method that takes a string argument, and returns true if all of
# the alphabetic characters inside the string are uppercase, false
# otherwise. Characters that are not alphabetic should be ignored.

def uppercase?(string)
  check = string.chars.select { |char| char =~ /[a-z]/ }.join
  check == check.upcase
end

def uppercase_check2(string)
  string.chars.any? { |char| char =~ /[a-z]/ } ? false : true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

p uppercase_check2('t') == false
p uppercase_check2('T') == true
p uppercase_check2('Four Score') == false
p uppercase_check2('FOUR SCORE') == true
p uppercase_check2('4SCORE!') == true
p uppercase_check2('') == true
