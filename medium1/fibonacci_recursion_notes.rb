# The Fibonacci series is a sequence of numbers starting with 1 and 1 where each
# number is the sum of the two previous numbers: the 3rd Fibonacci number i
# 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on.

# In mathematical terms:

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

# Sequences like this translate naturally as "recursive" methods. A recursive
# method is one in which the method calls itself. 

#   For example:

#   def sum(n)
#     return 1 if n == 1
#     n + sum(n - 1)
#   end

# sum is a recursive method that computes the sum of all integers between 1 and n.

# Recursive methods have three primary qualities:

#   They call themselves at least once.
#   They have a condition that stops the recursion (n == 1 above).
#   They use the result returned by themselves.
#   In the code above, sum calls itself once; it uses a condition of n == 1 to
#     stop recursing; and, n + sum(n - 1) uses the return value of the recursive
#     call to compute a new return value.

def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

# This equation works because you only need to calculate the number in the 1s place.
# The ones place is not affected by the numbers in the tens place or highter.
# %10 is used to find the ones place.
def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end