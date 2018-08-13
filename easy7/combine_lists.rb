# Write a method that combines two Arrays passed in as arguments, and returns
# a new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

def interleave(ary1, ary2)
  ary = []
  ary1.size == ary2.size ? ary.push(ary1.shift) : ary.push(ary2.shift) until ary2.empty?
  ary
end

def interleave2(ary1, ary2)
  ary1.zip(ary2).flatten
end

p interleave([1, 2, 3], %w(a b c)) #== [1, 'a', 2, 'b', 3, 'c']
p interleave2([1, 2, 3], %w(a b c))
