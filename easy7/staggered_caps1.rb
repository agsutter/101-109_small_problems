# Write a method that takes a String as an argument, and returns a new
# String that contains the original value using a staggered capitalization
# scheme in which every other character is capitalized, and the remaining
# characters are lowercase. Characters that are not letters should not
# be changed, but count as characters when switching between upper and
# lowercase.

def staggered_case(string, start = true)
  string = string.split('').map!.with_index do |char, i|
    if start
      i.odd? ? char.downcase : char.upcase
    else
      i.odd? ? char.upcase : char.downcase
    end
  end
  string.join('')
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!', false) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ALL_CAPS', false) == 'AlL_CaPs'
p staggered_case('ignore the numbers 444') == 'IgNoRe tHe nUmBeRs 444'
p staggered_case('ignore the numbers 444', false) == 'IgNoRe tHe nUmBeRs 444'
