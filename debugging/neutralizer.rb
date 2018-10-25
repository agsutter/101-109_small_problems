# We wrote a neutralize method that removes negative words from sentences.
# However, it fails to remove all of them. What exactly happens?

require 'pry'

def neutralize(sentence)
  words = sentence.split(' ')
  neutral_sentence = []
  words.each do |word|
    neutral_sentence << word if !negative?(word)
  end

  neutral_sentence.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
