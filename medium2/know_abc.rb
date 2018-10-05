# A collection of spelling blocks has two letters per block, as shown
# in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words
# that do not use both letters from any given block. Each block can only
# be used once.

# Write a method that returns true if the word passed in as an argument
# can be spelled from this set of blocks, false otherwise.

BLOCKS = { 'B' => 'O',
           'X' => 'K',
           'D' => 'Q',
           'C' => 'P',
           'N' => 'A',
           'G' => 'T',
           'R' => 'E',
           'F' => 'S',
           'J' => 'W',
           'H' => 'U',
           'V' => 'I',
           'L' => 'Y',
           'Z' => 'M' }.freeze

# First method
def block_word?(word)
  letters = word.upcase.split(//)
  length = letters.size
  until length.zero?
    check_letter = letters[-length]
    return false if letters.any? { |letter| BLOCKS[check_letter] == letter }
    length -= 1
  end
  true
end

# Second method
def word_on_block?(word)
  ltrs = word.upcase.split(//)
  return false if BLOCKS.any? { |k, v| ltrs.include?(k) && ltrs.include?(v) }
  true
end

p block_word?('BATCH') == true
p word_on_block?('BATCH') == true
p block_word?('BUTCH') == false
p word_on_block?('BUTCH') == false
p block_word?('jest') == true
p word_on_block?('jest') == true
