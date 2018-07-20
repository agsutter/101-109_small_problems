# Write a program that will ask a user for an input of a word or
# multiple words and give back the number of characters. Spaces should
# not be counted as a character.

puts 'Please write word or multiple words:'
string = gets.chomp

puts "There are #{string.delete(' ').size} characters in \'#{string}\'."
