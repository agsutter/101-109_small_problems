# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the
# return value; they just don't count when toggling the desired case.

def staggered_case(string, ignore = true)
  up = true
  string = string.chars.each do |letter|
    if ignore
      if letter =~ /[a-zA-Z]/
        up ? letter.upcase! : letter.downcase!
        up = !up
      else
        letter
      end
    else
      up ? letter.upcase! : letter.downcase!
      up = !up
    end
  end
  string.join('')
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('I Love Launch School!', false) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ALL CAPS', false) == 'AlL CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
p staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 NuMbErS'
