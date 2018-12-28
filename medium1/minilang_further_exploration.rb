### Further Exploration
# Try writing a minilang program to evaluate and print the result of this expression:

# (3 + (4 * 5) - 7) / (5 % 3)

# The answer should be 8. This is trickier than it sounds! Note that we aren't
# asking you to modify the #minilang method; we want you to write a Minilang
# program that can be passed to #minilang and evaluated.

# Add some error handling to your method. In particular, have the method detect
# empty stack conditions, and invalid tokens in the program, and report those.
# Ideally, the method should return an error message if an error occurs, and nil
# if the program runs successfully.

def minilang(command_string)
  stack = []
  register = 0
  command_string.split(' ').each do |command|
    case command
    when 'PUSH' then stack << register
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else register = command.to_i
    end
  end
  register
end