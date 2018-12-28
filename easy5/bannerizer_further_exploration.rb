# Modify the print_in_box so it will truncate the message if it will
# be too wide to fit inside a standard terminal window (80 columns,
# including the sides of the box). For a real challenge, try word wrapping
# very long messages so they appear on multiple lines, but still within a box.

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