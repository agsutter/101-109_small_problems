# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To
# be properly balanced, parentheses must occur in matching '(' and ')'
# pairs.

# Note that balanced pairs must each start with a (, not a ).

### Further Exploration
# There are a few other characters that should be matching as well.
# Square brackets and curly brackets normally come in pairs. Quotation
# marks(single and double) also typically come in pairs and should be
# balanced. Can you expand this method to take into account those
# characters?

def balanced?(string)
  left = []
  right = []
  string.split(//).each_with_index do |char, indx|
    left << indx if char == '('
    right << indx if char == ')'
  end
  return true if left.empty? && right.empty?
  (left.size != right.size) || (left.last > right.last) ? false : true
end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false
