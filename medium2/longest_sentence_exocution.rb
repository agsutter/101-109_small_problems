# Break text on periods (.), exclamation points (!), or question marks (?)
# Send each block of text to array and then split words
# Count how many words are in array
# Array with most words wins
# => it would be better if it was stored in an instance variable and then if
# => the next permutation was more it replaced it and if not it didnt, that
# => way the information is not stored but simply evaluated
# => This could happen if there was a loop that iterated and counted words until
# => it hit a . ! or ?
# => Then that count was saved

SENTENCE = %w(. ! ?).freeze

def format_as_paragraph(text)
  text_as_array = text.split(/\b/)
  text_as_array.delete(' ')
  text_as_array.map(&:strip)
end

def find_longest_sentence(text)
  sentence_array = format_as_paragraph(text)
  paragraph = []
  until sentence_array.empty?
    sentence = []
    sentence_array.each do |i|
      sentence << i
      break if SENTENCE.include?(i)
    end
    paragraph << sentence
    sentence_array.shift(sentence.size)
  end
  paragraph
end

def remove_commas(text)
  find_longest_sentence(text).map do |sub_array|
    sub_array.delete_if { |i| i == ',' }
  end
end

def which_sentence(text)
  size = find_longest_sentence(text).map(&:size)
  size.index(size.max)
end

def longest_sentence(text)
  'The longest sentence is ' \
    "#{remove_commas(text)[which_sentence(text)].size - 1} characters. " \
    'This is the longest_sentence: ' \
    "#{find_longest_sentence(text)[which_sentence(text)].join(' ')}"
end

paragraph = "Four score and seven years ago our fathers brought forth on this continent a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal.
Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battlefield of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this.
But, in a larger sense, we can not dedicate, we can not consecrate, we can not hallow this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract. The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced. It is rather for us to be here dedicated to the great task remaining before us -- that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion -- that we here highly resolve that these dead shall not have died in vain -- that this nation, under God, shall have a new birth of freedom -- and that government of the people, by the people, for the people, shall not perish from the earth."

p longest_sentence("Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battlefield of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this.")

p longest_sentence(paragraph)
