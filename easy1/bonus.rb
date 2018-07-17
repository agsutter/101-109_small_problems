# Write a method that takes two arguments, a positive integer and a
# boolean, and calculates the bonus for a given salary. If the boolean is
# true, the bonus should be half of the salary. If the boolean is false,
# the bonus should be 0.

def calculate_bonus(salary, boolean)
  return salary.to_i / 2 if boolean
  return 0
end