# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(array)
  vowels = %w(a e i o u)
  array.map!(&:chars)
  array.map { |ary| ary.delete_if { |chr| vowels.include?(chr.downcase) } }
  array.map(&:join)
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))
