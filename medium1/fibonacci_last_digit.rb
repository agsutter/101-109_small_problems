# In the previous exercise, we developed a procedural method for computing the
# value of the nth Fibonacci numbers. This method was really fast, computing
# the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last
# digit of the nth Fibonacci number.

### Further Exploration
# After a while, even this method starts to take too long to compute results.
# Can you provide a solution to this problem that will work no matter how
# big the number? You should be able to return results almost instantly.
# For example, the 123,456,789,987,745th Fibonacci number ends in 5.

def fibonacci_last(number)
  first, last = [0, 1]
  n = (number - 1) % 60 # => % 60 due to final digit repeating every 60 numbers
  (n).times { |_| first, last = last, first + last }
  last.to_s[-1].to_i
end

p fibonacci_last(15) == 0
p fibonacci_last(100) == 5
p fibonacci_last(100_001) == 1
p fibonacci_last(1_000_007) == 3
p fibonacci_last(123_456_789) == 4
