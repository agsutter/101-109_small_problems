# Write a method that takes an Array as an argument, and reverses its
# elements in place; that is, mutate the Array passed into this method.
# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reversed(list)
  return list if list.empty?
  length = list.length - 1
  place = 0
  until place >= list.length / 2
    list[place], list[place + length] = list[place + length], list[place]
    place += 1
    length -= 2
  end
  list
end

p list = [1, 2, 3, 4]
p result = reversed(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b c d e)
p reversed(list) # => %w(e d c b a)
p list == %w(e d c b a)

p list = ['abc']
p reversed(list) # => ['abc']
p list == ['abc']

p list = []
p reversed(list) # => []
p list == []
