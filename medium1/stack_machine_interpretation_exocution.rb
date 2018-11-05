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

p minilang('4 PUSH 7 PUSH ADD PUSH 8 MULT 3 MOD PUSH 5 SUB 2 PUSH DIV')
p minilang('8 PUSH 7 PUSH 9 POP')
