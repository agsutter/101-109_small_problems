# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example, 44,
# 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned
# as-is.

# Note: underscores are used for clarity above. Ruby lets you use
# underscores when writing long numbers; however, it does not print
# the underscores when printing long numbers. Don't be alarmed if you don't
# see the underscores when running your tests.

def twice(number)
  num_size = number.to_s.size
  half = num_size / 2
  num_arr = number.to_s.split(//)
  return number if num_arr[0, half] == num_arr[half, half] && num_size.even?
  number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334_433) == 668_866
p twice(444) == 888
p twice(107) == 214
p twice(103_103) == 103_103
p twice(3_333) == 3_333
p twice(7_676) == 7_676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
