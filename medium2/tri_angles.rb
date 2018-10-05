# A triangle is classified as follows:

# RIGHT: One angle of the triangle is a right angle (90 degrees)
# ACUTE: All 3 angles of the triangle are less than 90 degrees
# OBTUSE: One angle is greater than 90 degrees.

# To be a valid triangle, the sum of the angles must be exactly 180 degrees,
# and all angles must be greater than 0: if either of these conditions is
# not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and
# returns a symbol :right, :acute, :obtuse, or :invalid depending on
# whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about
# floating point errors. You may also assume that the arguments are
# specified in degrees.

# :acute all 3 angles < 90
# :right 1 angle == 90
# :obtuse 1 angle > 90

def triangle(ang1, ang2, ang3)
  angles = [ang1, ang2, ang3]
  case
  when angles.reduce(:+) != 180 || angles.include?(0) then :invalid
  when angles.include?(90) then :right
  when angles.any? { |i| i > 90 } then :obtuse
  else :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
