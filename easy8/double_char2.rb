# Write a method that takes a string, and returns a new string in which
# every consonant character is doubled. Vowels (a,e,i,o,u), digits,
# punctuation, and whitespace should not be doubled.

def double_consonants(string)
  array = string.split(//)
  vowels = %w(a e i o u)
  array.map! do |letter| 
    if vowels.include?(letter) || (letter =~ /[a-zA-Z]/) == nil
      letter
    else
      letter * 2 
    end
  end
  array.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
