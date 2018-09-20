# Mad libs are a simple game where you create a story template with blanks
# for words. You, or another player, then construct a list of words and place
# them into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an
# adverb, and an adjective and injects those into a story that you create.

print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

puts "Yesterday, the #{noun} went to the ballpark. The #{noun} thought " \
     "that the players seemed a bit #{adjective} while throwing the ball. " \
     "The #{noun} then #{verb} #{adverb}."
