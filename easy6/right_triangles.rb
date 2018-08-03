# Write a method that takes a positive integer, n, as an argument, and
# displays a right triangle whose sides each have n stars. The
# hypotenuse of the triangle (the diagonal side in the images below)
# should have one end at the lower-left of the triangle, and the other
# end at the upper-right.

# Try modifying your solution so it prints the triangle upside down from
# its current orientation. Try modifying your solution again so that you
# can display the triangle with the right angle at any corner of the grid.

def triangle(number)
  iterator = 1
  number.times do
    triangle = '*' * (number - (number - iterator))
    iterator += 1
    puts triangle.rjust(number)
  end
end

def triangle_upsidedown(number)
  number.times do
    triangle = '*' * number
    number -= 1
    puts triangle.rjust(number)
  end
end

triangle(5)
triangle_upsidedown(5)
triangle(9)
triangle_upsidedown(9)
