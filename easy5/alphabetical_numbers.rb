# Write a method that takes an Array of Integers between 0 and 19, and
# returns an Array of those Integers sorted based on the English words
# for each number

NUMBERS_AS_WORDS = %w(zero one two three four five six seven eight nine ten
                      eleven twelve thirteen fourteen fifteen sixteen
                      seventeen eighteen nineteen).freeze

def alphabetic_number_sort(range)
  array_to_sort = range.to_a.map { |number| NUMBERS_AS_WORDS[number] }
  array_to_sort.sort.map { |number| NUMBERS_AS_WORDS.index(number) }
end

p alphabetic_number_sort((0..19)) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
