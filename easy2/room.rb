# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

SQMETER_TO_SQFEET = 10.7639
SQMETER_TO_SQCM = 10_000
SQMETER_TO_SQINCH = 1550
SQFEET_TO_SQCM = 929.03
SQFEET_TO_SQINCH = 144

def prompt(message)
  puts "=> #{message}"
end

def measure(answer)
  return 'meters' if answer.start_with?('m')
  return 'feet' if answer.start_with?('f')
end

def m_squared(length, width, answer)
  return length * width if measure(answer) == 'meters'
  ft_squared(length, width, answer) / SQMETER_TO_SQFEET
end

def ft_squared(length, width, answer)
  return length * width if measure(answer) == 'feet'
  m_squared(length, width, answer) * SQMETER_TO_SQFEET
end

def cm_squared(length, width, answer)
  return m_squared(length, width, answer) * SQMETER_TO_SQCM if measure(answer) == 'meters'
  ft_squared(length, width, answer) * SQFEET_TO_SQCM
end

def in_squared(length, width, answer)
  return ft_squared(length, width, answer) * SQFEET_TO_SQINCH if measure(answer) == 'feet'
  m_squared(length, width, answer) * SQMETER_TO_SQINCH
end

prompt('Hello, welcome to the room size calculator.')

answer = ''
loop do
  prompt('Will you be providing integers in meters or feet?')
  answer = gets.chomp.downcase
  break if measure(answer) == 'meters' || measure(answer) == 'feet'
  puts 'Please choose either meters or feet.'
end

prompt('What is the length of the room?')
length = gets.chomp.to_i

prompt('what is the width of the room?')
width = gets.chomp.to_i

meters = m_squared(length, width, answer)
feet = ft_squared(length, width, answer)
centimeters = cm_squared(length, width, answer)
inches = in_squared(length, width, answer)

prompt("Square meteres: #{format('%.2f', meters)}")
prompt("Square feet: #{format('%.2f', feet)}")
prompt("Square centimeters: #{format('%.2f', centimeters)}")
prompt("Square inches: #{format('%.2f', inches)}")
