# Write a method that displays a 4-pointed diamond in an n x n grid, where
# n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# diamond(1)

# *

# diamond(3)

#  *
# ***
#  *

# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

def star(n)
  "#{'*' * n}"
end

def diamond(num)
  1.upto(num) { |i| puts star(i).center(num) if i.odd? }
  (num - 1).downto(1) { |i| puts star(i).center(num) if i.odd? }
end

diamond(9)
diamond(11)
diamond(31)
