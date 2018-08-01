# Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)
  length = string.length + 2
  horizontal_rule = "+#{'-' * length}+"
  side_rule = "|#{' ' * length}|"
  puts horizontal_rule
  puts side_rule
  puts "| #{string} |"
  puts side_rule
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box(' ')
print_in_box('My name is Amanda')
