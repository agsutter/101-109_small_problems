# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

# Example:
  # repeat('Hello', 3)

# Output:
  # Hello
  # Hello
  # Hello

# This method will only process strings
def multiple_times(string, num)
  (string + "\r\n") * num 
end

# This method will process non-strings such as integers and booleans
def multiples(string, num)
  count = 0
  loop do
    break if count == num
    puts string
    count +=1
  end
end

puts multiple_times("Hey there", 5)

multiples("Yo", 7)
